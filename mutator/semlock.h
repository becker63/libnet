#pragma once
#include <semaphore.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string>
#include <iostream>

// ────────────────────────────────────────────────
// Simple RAII wrapper for POSIX named semaphores
// ────────────────────────────────────────────────
class AutoSemLock {
 public:
  explicit AutoSemLock(const std::string &name)
      : sem_(SEM_FAILED), name_("/" + sanitize(name)), locked_(false) {
    open_or_create();
    acquire();
  }

  // non-copyable
  AutoSemLock(const AutoSemLock &) = delete;
  AutoSemLock &operator=(const AutoSemLock &) = delete;

  // movable
  AutoSemLock(AutoSemLock &&other) noexcept
      : sem_(other.sem_), name_(std::move(other.name_)), locked_(other.locked_) {
    other.sem_ = SEM_FAILED;
    other.locked_ = false;
  }

  AutoSemLock &operator=(AutoSemLock &&other) noexcept {
    if (this != &other) {
      release();
      if (sem_ != SEM_FAILED)
        sem_close(sem_);
      sem_ = other.sem_;
      name_ = std::move(other.name_);
      locked_ = other.locked_;
      other.sem_ = SEM_FAILED;
      other.locked_ = false;
    }
    return *this;
  }

  ~AutoSemLock() {
    release();
    if (sem_ != SEM_FAILED)
      sem_close(sem_);
  }

  bool owns_lock() const noexcept { return locked_; }

 private:
  sem_t *sem_;
  std::string name_;
  bool locked_;

  static std::string sanitize(const std::string &s) {
    // Ensure valid POSIX semaphore name (no slashes, starts with '/')
    std::string out;
    for (char c : s) {
      if (c == '/')
        continue;
      if (isalnum(c) || c == '_')
        out.push_back(c);
      else
        out.push_back('_');
    }
    if (out.empty())
      out = "fuzz_sem";
    return out;
  }

  void open_or_create() {
    sem_ = sem_open(name_.c_str(), O_CREAT, 0666, 1);
    if (sem_ == SEM_FAILED) {
      perror("sem_open");
      std::cerr << "[sem] ⚠️ Failed to open semaphore " << name_ << "\n";
    }
  }

  void acquire() {
    if (sem_ == SEM_FAILED)
      return;
    if (sem_wait(sem_) == 0)
      locked_ = true;
    else
      perror("sem_wait");
  }

  void release() noexcept {
    if (sem_ != SEM_FAILED && locked_) {
      sem_post(sem_);
      locked_ = false;
    }
  }
};
