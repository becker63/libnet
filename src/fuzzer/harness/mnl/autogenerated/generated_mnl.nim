
const
  internal_PC_LINK_MAX* = cuint(0)
const
  internal_PC_MAX_CANON* = cuint(1)
const
  internal_PC_MAX_INPUT* = cuint(2)
const
  internal_PC_NAME_MAX* = cuint(3)
const
  internal_PC_PATH_MAX* = cuint(4)
const
  internal_PC_PIPE_BUF* = cuint(5)
const
  internal_PC_CHOWN_RESTRICTED* = cuint(6)
const
  internal_PC_NO_TRUNC* = cuint(7)
const
  internal_PC_VDISABLE* = cuint(8)
const
  internal_PC_SYNC_IO* = cuint(9)
const
  internal_PC_ASYNC_IO* = cuint(10)
const
  internal_PC_PRIO_IO* = cuint(11)
const
  internal_PC_SOCK_MAXBUF* = cuint(12)
const
  internal_PC_FILESIZEBITS* = cuint(13)
const
  internal_PC_REC_INCR_XFER_SIZE* = cuint(14)
const
  internal_PC_REC_MAX_XFER_SIZE* = cuint(15)
const
  internal_PC_REC_MIN_XFER_SIZE* = cuint(16)
const
  internal_PC_REC_XFER_ALIGN* = cuint(17)
const
  internal_PC_ALLOC_SIZE_MIN* = cuint(18)
const
  internal_PC_SYMLINK_MAX* = cuint(19)
const
  internal_PC_2_SYMLINKS* = cuint(20)
const
  internal_SC_ARG_MAX* = cuint(0)
const
  internal_SC_CHILD_MAX* = cuint(1)
const
  internal_SC_CLK_TCK* = cuint(2)
const
  internal_SC_NGROUPS_MAX* = cuint(3)
const
  internal_SC_OPEN_MAX* = cuint(4)
const
  internal_SC_STREAM_MAX* = cuint(5)
const
  internal_SC_TZNAME_MAX* = cuint(6)
const
  internal_SC_JOB_CONTROL* = cuint(7)
const
  internal_SC_SAVED_IDS* = cuint(8)
const
  internal_SC_REALTIME_SIGNALS* = cuint(9)
const
  internal_SC_PRIORITY_SCHEDULING* = cuint(10)
const
  internal_SC_TIMERS* = cuint(11)
const
  internal_SC_ASYNCHRONOUS_IO* = cuint(12)
const
  internal_SC_PRIORITIZED_IO* = cuint(13)
const
  internal_SC_SYNCHRONIZED_IO* = cuint(14)
const
  internal_SC_FSYNC* = cuint(15)
const
  internal_SC_MAPPED_FILES* = cuint(16)
const
  internal_SC_MEMLOCK* = cuint(17)
const
  internal_SC_MEMLOCK_RANGE* = cuint(18)
const
  internal_SC_MEMORY_PROTECTION* = cuint(19)
const
  internal_SC_MESSAGE_PASSING* = cuint(20)
const
  internal_SC_SEMAPHORES* = cuint(21)
const
  internal_SC_SHARED_MEMORY_OBJECTS* = cuint(22)
const
  internal_SC_AIO_LISTIO_MAX* = cuint(23)
const
  internal_SC_AIO_MAX* = cuint(24)
const
  internal_SC_AIO_PRIO_DELTA_MAX* = cuint(25)
const
  internal_SC_DELAYTIMER_MAX* = cuint(26)
const
  internal_SC_MQ_OPEN_MAX* = cuint(27)
const
  internal_SC_MQ_PRIO_MAX* = cuint(28)
const
  internal_SC_VERSION* = cuint(29)
const
  internal_SC_PAGESIZE* = cuint(30)
const
  internal_SC_RTSIG_MAX* = cuint(31)
const
  internal_SC_SEM_NSEMS_MAX* = cuint(32)
const
  internal_SC_SEM_VALUE_MAX* = cuint(33)
const
  internal_SC_SIGQUEUE_MAX* = cuint(34)
const
  internal_SC_TIMER_MAX* = cuint(35)
const
  internal_SC_BC_BASE_MAX* = cuint(36)
const
  internal_SC_BC_DIM_MAX* = cuint(37)
const
  internal_SC_BC_SCALE_MAX* = cuint(38)
const
  internal_SC_BC_STRING_MAX* = cuint(39)
const
  internal_SC_COLL_WEIGHTS_MAX* = cuint(40)
const
  internal_SC_EQUIV_CLASS_MAX* = cuint(41)
const
  internal_SC_EXPR_NEST_MAX* = cuint(42)
const
  internal_SC_LINE_MAX* = cuint(43)
const
  internal_SC_RE_DUP_MAX* = cuint(44)
const
  internal_SC_CHARCLASS_NAME_MAX* = cuint(45)
const
  internal_SC_2_VERSION* = cuint(46)
const
  internal_SC_2_C_BIND* = cuint(47)
const
  internal_SC_2_C_DEV* = cuint(48)
const
  internal_SC_2_FORT_DEV* = cuint(49)
const
  internal_SC_2_FORT_RUN* = cuint(50)
const
  internal_SC_2_SW_DEV* = cuint(51)
const
  internal_SC_2_LOCALEDEF* = cuint(52)
const
  internal_SC_PII* = cuint(53)
const
  internal_SC_PII_XTI* = cuint(54)
const
  internal_SC_PII_SOCKET* = cuint(55)
const
  internal_SC_PII_INTERNET* = cuint(56)
const
  internal_SC_PII_OSI* = cuint(57)
const
  internal_SC_POLL* = cuint(58)
const
  internal_SC_SELECT* = cuint(59)
const
  internal_SC_UIO_MAXIOV* = cuint(60)
const
  internal_SC_IOV_MAX* = cuint(60)
const
  internal_SC_PII_INTERNET_STREAM* = cuint(61)
const
  internal_SC_PII_INTERNET_DGRAM* = cuint(62)
const
  internal_SC_PII_OSI_COTS* = cuint(63)
const
  internal_SC_PII_OSI_CLTS* = cuint(64)
const
  internal_SC_PII_OSI_M* = cuint(65)
const
  internal_SC_T_IOV_MAX* = cuint(66)
const
  internal_SC_THREADS* = cuint(67)
const
  internal_SC_THREAD_SAFE_FUNCTIONS* = cuint(68)
const
  internal_SC_GETGR_R_SIZE_MAX* = cuint(69)
const
  internal_SC_GETPW_R_SIZE_MAX* = cuint(70)
const
  internal_SC_LOGIN_NAME_MAX* = cuint(71)
const
  internal_SC_TTY_NAME_MAX* = cuint(72)
const
  internal_SC_THREAD_DESTRUCTOR_ITERATIONS* = cuint(73)
const
  internal_SC_THREAD_KEYS_MAX* = cuint(74)
const
  internal_SC_THREAD_STACK_MIN* = cuint(75)
const
  internal_SC_THREAD_THREADS_MAX* = cuint(76)
const
  internal_SC_THREAD_ATTR_STACKADDR* = cuint(77)
const
  internal_SC_THREAD_ATTR_STACKSIZE* = cuint(78)
const
  internal_SC_THREAD_PRIORITY_SCHEDULING* = cuint(79)
const
  internal_SC_THREAD_PRIO_INHERIT* = cuint(80)
const
  internal_SC_THREAD_PRIO_PROTECT* = cuint(81)
const
  internal_SC_THREAD_PROCESS_SHARED* = cuint(82)
const
  internal_SC_NPROCESSORS_CONF* = cuint(83)
const
  internal_SC_NPROCESSORS_ONLN* = cuint(84)
const
  internal_SC_PHYS_PAGES* = cuint(85)
const
  internal_SC_AVPHYS_PAGES* = cuint(86)
const
  internal_SC_ATEXIT_MAX* = cuint(87)
const
  internal_SC_PASS_MAX* = cuint(88)
const
  internal_SC_XOPEN_VERSION* = cuint(89)
const
  internal_SC_XOPEN_XCU_VERSION* = cuint(90)
const
  internal_SC_XOPEN_UNIX* = cuint(91)
const
  internal_SC_XOPEN_CRYPT* = cuint(92)
const
  internal_SC_XOPEN_ENH_I18N* = cuint(93)
const
  internal_SC_XOPEN_SHM* = cuint(94)
const
  internal_SC_2_CHAR_TERM* = cuint(95)
const
  internal_SC_2_C_VERSION* = cuint(96)
const
  internal_SC_2_UPE* = cuint(97)
const
  internal_SC_XOPEN_XPG2* = cuint(98)
const
  internal_SC_XOPEN_XPG3* = cuint(99)
const
  internal_SC_XOPEN_XPG4* = cuint(100)
const
  internal_SC_CHAR_BIT* = cuint(101)
const
  internal_SC_CHAR_MAX* = cuint(102)
const
  internal_SC_CHAR_MIN* = cuint(103)
const
  internal_SC_INT_MAX* = cuint(104)
const
  internal_SC_INT_MIN* = cuint(105)
const
  internal_SC_LONG_BIT* = cuint(106)
const
  internal_SC_WORD_BIT* = cuint(107)
const
  internal_SC_MB_LEN_MAX* = cuint(108)
const
  internal_SC_NZERO* = cuint(109)
const
  internal_SC_SSIZE_MAX* = cuint(110)
const
  internal_SC_SCHAR_MAX* = cuint(111)
const
  internal_SC_SCHAR_MIN* = cuint(112)
const
  internal_SC_SHRT_MAX* = cuint(113)
const
  internal_SC_SHRT_MIN* = cuint(114)
const
  internal_SC_UCHAR_MAX* = cuint(115)
const
  internal_SC_UINT_MAX* = cuint(116)
const
  internal_SC_ULONG_MAX* = cuint(117)
const
  internal_SC_USHRT_MAX* = cuint(118)
const
  internal_SC_NL_ARGMAX* = cuint(119)
const
  internal_SC_NL_LANGMAX* = cuint(120)
const
  internal_SC_NL_MSGMAX* = cuint(121)
const
  internal_SC_NL_NMAX* = cuint(122)
const
  internal_SC_NL_SETMAX* = cuint(123)
const
  internal_SC_NL_TEXTMAX* = cuint(124)
const
  internal_SC_XBS5_ILP32_OFF32* = cuint(125)
const
  internal_SC_XBS5_ILP32_OFFBIG* = cuint(126)
const
  internal_SC_XBS5_LP64_OFF64* = cuint(127)
const
  internal_SC_XBS5_LPBIG_OFFBIG* = cuint(128)
const
  internal_SC_XOPEN_LEGACY* = cuint(129)
const
  internal_SC_XOPEN_REALTIME* = cuint(130)
const
  internal_SC_XOPEN_REALTIME_THREADS* = cuint(131)
const
  internal_SC_ADVISORY_INFO* = cuint(132)
const
  internal_SC_BARRIERS* = cuint(133)
const
  internal_SC_BASE* = cuint(134)
const
  internal_SC_C_LANG_SUPPORT* = cuint(135)
const
  internal_SC_C_LANG_SUPPORT_R* = cuint(136)
const
  internal_SC_CLOCK_SELECTION* = cuint(137)
const
  internal_SC_CPUTIME* = cuint(138)
const
  internal_SC_THREAD_CPUTIME* = cuint(139)
const
  internal_SC_DEVICE_IO* = cuint(140)
const
  internal_SC_DEVICE_SPECIFIC* = cuint(141)
const
  internal_SC_DEVICE_SPECIFIC_R* = cuint(142)
const
  internal_SC_FD_MGMT* = cuint(143)
const
  internal_SC_FIFO* = cuint(144)
const
  internal_SC_PIPE* = cuint(145)
const
  internal_SC_FILE_ATTRIBUTES* = cuint(146)
const
  internal_SC_FILE_LOCKING* = cuint(147)
const
  internal_SC_FILE_SYSTEM* = cuint(148)
const
  internal_SC_MONOTONIC_CLOCK* = cuint(149)
const
  internal_SC_MULTI_PROCESS* = cuint(150)
const
  internal_SC_SINGLE_PROCESS* = cuint(151)
const
  internal_SC_NETWORKING* = cuint(152)
const
  internal_SC_READER_WRITER_LOCKS* = cuint(153)
const
  internal_SC_SPIN_LOCKS* = cuint(154)
const
  internal_SC_REGEXP* = cuint(155)
const
  internal_SC_REGEX_VERSION* = cuint(156)
const
  internal_SC_SHELL* = cuint(157)
const
  internal_SC_SIGNALS* = cuint(158)
const
  internal_SC_SPAWN* = cuint(159)
const
  internal_SC_SPORADIC_SERVER* = cuint(160)
const
  internal_SC_THREAD_SPORADIC_SERVER* = cuint(161)
const
  internal_SC_SYSTEM_DATABASE* = cuint(162)
const
  internal_SC_SYSTEM_DATABASE_R* = cuint(163)
const
  internal_SC_TIMEOUTS* = cuint(164)
const
  internal_SC_TYPED_MEMORY_OBJECTS* = cuint(165)
const
  internal_SC_USER_GROUPS* = cuint(166)
const
  internal_SC_USER_GROUPS_R* = cuint(167)
const
  internal_SC_2_PBS* = cuint(168)
const
  internal_SC_2_PBS_ACCOUNTING* = cuint(169)
const
  internal_SC_2_PBS_LOCATE* = cuint(170)
const
  internal_SC_2_PBS_MESSAGE* = cuint(171)
const
  internal_SC_2_PBS_TRACK* = cuint(172)
const
  internal_SC_SYMLOOP_MAX* = cuint(173)
const
  internal_SC_STREAMS* = cuint(174)
const
  internal_SC_2_PBS_CHECKPOINT* = cuint(175)
const
  internal_SC_V6_ILP32_OFF32* = cuint(176)
const
  internal_SC_V6_ILP32_OFFBIG* = cuint(177)
const
  internal_SC_V6_LP64_OFF64* = cuint(178)
const
  internal_SC_V6_LPBIG_OFFBIG* = cuint(179)
const
  internal_SC_HOST_NAME_MAX* = cuint(180)
const
  internal_SC_TRACE* = cuint(181)
const
  internal_SC_TRACE_EVENT_FILTER* = cuint(182)
const
  internal_SC_TRACE_INHERIT* = cuint(183)
const
  internal_SC_TRACE_LOG* = cuint(184)
const
  internal_SC_LEVEL1_ICACHE_SIZE* = cuint(185)
const
  internal_SC_LEVEL1_ICACHE_ASSOC* = cuint(186)
const
  internal_SC_LEVEL1_ICACHE_LINESIZE* = cuint(187)
const
  internal_SC_LEVEL1_DCACHE_SIZE* = cuint(188)
const
  internal_SC_LEVEL1_DCACHE_ASSOC* = cuint(189)
const
  internal_SC_LEVEL1_DCACHE_LINESIZE* = cuint(190)
const
  internal_SC_LEVEL2_CACHE_SIZE* = cuint(191)
const
  internal_SC_LEVEL2_CACHE_ASSOC* = cuint(192)
const
  internal_SC_LEVEL2_CACHE_LINESIZE* = cuint(193)
const
  internal_SC_LEVEL3_CACHE_SIZE* = cuint(194)
const
  internal_SC_LEVEL3_CACHE_ASSOC* = cuint(195)
const
  internal_SC_LEVEL3_CACHE_LINESIZE* = cuint(196)
const
  internal_SC_LEVEL4_CACHE_SIZE* = cuint(197)
const
  internal_SC_LEVEL4_CACHE_ASSOC* = cuint(198)
const
  internal_SC_LEVEL4_CACHE_LINESIZE* = cuint(199)
const
  internal_SC_IPV6* = cuint(235)
const
  internal_SC_RAW_SOCKETS* = cuint(236)
const
  internal_SC_V7_ILP32_OFF32* = cuint(237)
const
  internal_SC_V7_ILP32_OFFBIG* = cuint(238)
const
  internal_SC_V7_LP64_OFF64* = cuint(239)
const
  internal_SC_V7_LPBIG_OFFBIG* = cuint(240)
const
  internal_SC_SS_REPL_MAX* = cuint(241)
const
  internal_SC_TRACE_EVENT_NAME_MAX* = cuint(242)
const
  internal_SC_TRACE_NAME_MAX* = cuint(243)
const
  internal_SC_TRACE_SYS_MAX* = cuint(244)
const
  internal_SC_TRACE_USER_EVENT_MAX* = cuint(245)
const
  internal_SC_XOPEN_STREAMS* = cuint(246)
const
  internal_SC_THREAD_ROBUST_PRIO_INHERIT* = cuint(247)
const
  internal_SC_THREAD_ROBUST_PRIO_PROTECT* = cuint(248)
const
  internal_SC_MINSIGSTKSZ* = cuint(249)
const
  internal_SC_SIGSTKSZ* = cuint(250)
const
  internal_CS_PATH* = cuint(0)
const
  internal_CS_V6_WIDTH_RESTRICTED_ENVS* = cuint(1)
const
  internal_CS_GNU_LIBC_VERSION* = cuint(2)
const
  internal_CS_GNU_LIBPTHREAD_VERSION* = cuint(3)
const
  internal_CS_V5_WIDTH_RESTRICTED_ENVS* = cuint(4)
const
  internal_CS_V7_WIDTH_RESTRICTED_ENVS* = cuint(5)
const
  internal_CS_LFS_CFLAGS* = cuint(1000)
const
  internal_CS_LFS_LDFLAGS* = cuint(1001)
const
  internal_CS_LFS_LIBS* = cuint(1002)
const
  internal_CS_LFS_LINTFLAGS* = cuint(1003)
const
  internal_CS_LFS64_CFLAGS* = cuint(1004)
const
  internal_CS_LFS64_LDFLAGS* = cuint(1005)
const
  internal_CS_LFS64_LIBS* = cuint(1006)
const
  internal_CS_LFS64_LINTFLAGS* = cuint(1007)
const
  internal_CS_XBS5_ILP32_OFF32_CFLAGS* = cuint(1100)
const
  internal_CS_XBS5_ILP32_OFF32_LDFLAGS* = cuint(1101)
const
  internal_CS_XBS5_ILP32_OFF32_LIBS* = cuint(1102)
const
  internal_CS_XBS5_ILP32_OFF32_LINTFLAGS* = cuint(1103)
const
  internal_CS_XBS5_ILP32_OFFBIG_CFLAGS* = cuint(1104)
const
  internal_CS_XBS5_ILP32_OFFBIG_LDFLAGS* = cuint(1105)
const
  internal_CS_XBS5_ILP32_OFFBIG_LIBS* = cuint(1106)
const
  internal_CS_XBS5_ILP32_OFFBIG_LINTFLAGS* = cuint(1107)
const
  internal_CS_XBS5_LP64_OFF64_CFLAGS* = cuint(1108)
const
  internal_CS_XBS5_LP64_OFF64_LDFLAGS* = cuint(1109)
const
  internal_CS_XBS5_LP64_OFF64_LIBS* = cuint(1110)
const
  internal_CS_XBS5_LP64_OFF64_LINTFLAGS* = cuint(1111)
const
  internal_CS_XBS5_LPBIG_OFFBIG_CFLAGS* = cuint(1112)
const
  internal_CS_XBS5_LPBIG_OFFBIG_LDFLAGS* = cuint(1113)
const
  internal_CS_XBS5_LPBIG_OFFBIG_LIBS* = cuint(1114)
const
  internal_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS* = cuint(1115)
const
  internal_CS_POSIX_V6_ILP32_OFF32_CFLAGS* = cuint(1116)
const
  internal_CS_POSIX_V6_ILP32_OFF32_LDFLAGS* = cuint(1117)
const
  internal_CS_POSIX_V6_ILP32_OFF32_LIBS* = cuint(1118)
const
  internal_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS* = cuint(1119)
const
  internal_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS* = cuint(1120)
const
  internal_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS* = cuint(1121)
const
  internal_CS_POSIX_V6_ILP32_OFFBIG_LIBS* = cuint(1122)
const
  internal_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS* = cuint(1123)
const
  internal_CS_POSIX_V6_LP64_OFF64_CFLAGS* = cuint(1124)
const
  internal_CS_POSIX_V6_LP64_OFF64_LDFLAGS* = cuint(1125)
const
  internal_CS_POSIX_V6_LP64_OFF64_LIBS* = cuint(1126)
const
  internal_CS_POSIX_V6_LP64_OFF64_LINTFLAGS* = cuint(1127)
const
  internal_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS* = cuint(1128)
const
  internal_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS* = cuint(1129)
const
  internal_CS_POSIX_V6_LPBIG_OFFBIG_LIBS* = cuint(1130)
const
  internal_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS* = cuint(1131)
const
  internal_CS_POSIX_V7_ILP32_OFF32_CFLAGS* = cuint(1132)
const
  internal_CS_POSIX_V7_ILP32_OFF32_LDFLAGS* = cuint(1133)
const
  internal_CS_POSIX_V7_ILP32_OFF32_LIBS* = cuint(1134)
const
  internal_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS* = cuint(1135)
const
  internal_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS* = cuint(1136)
const
  internal_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS* = cuint(1137)
const
  internal_CS_POSIX_V7_ILP32_OFFBIG_LIBS* = cuint(1138)
const
  internal_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS* = cuint(1139)
const
  internal_CS_POSIX_V7_LP64_OFF64_CFLAGS* = cuint(1140)
const
  internal_CS_POSIX_V7_LP64_OFF64_LDFLAGS* = cuint(1141)
const
  internal_CS_POSIX_V7_LP64_OFF64_LIBS* = cuint(1142)
const
  internal_CS_POSIX_V7_LP64_OFF64_LINTFLAGS* = cuint(1143)
const
  internal_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS* = cuint(1144)
const
  internal_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS* = cuint(1145)
const
  internal_CS_POSIX_V7_LPBIG_OFFBIG_LIBS* = cuint(1146)
const
  internal_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS* = cuint(1147)
const
  internal_CS_V6_ENV* = cuint(1148)
const
  internal_CS_V7_ENV* = cuint(1149)
const
  MSG_OOB* = cuint(1)
const
  MSG_PEEK* = cuint(2)
const
  MSG_DONTROUTE* = cuint(4)
const
  MSG_CTRUNC* = cuint(8)
const
  MSG_PROXY* = cuint(16)
const
  MSG_TRUNC* = cuint(32)
const
  MSG_DONTWAIT* = cuint(64)
const
  MSG_EOR* = cuint(128)
const
  MSG_WAITALL* = cuint(256)
const
  MSG_FIN* = cuint(512)
const
  MSG_SYN* = cuint(1024)
const
  MSG_CONFIRM* = cuint(2048)
const
  MSG_RST* = cuint(4096)
const
  MSG_ERRQUEUE* = cuint(8192)
const
  MSG_NOSIGNAL* = cuint(16384)
const
  MSG_MORE* = cuint(32768)
const
  MSG_WAITFORONE* = cuint(65536)
const
  MSG_BATCH* = cuint(262144)
const
  MSG_ZEROCOPY* = cuint(67108864)
const
  MSG_FASTOPEN* = cuint(536870912)
const
  MSG_CMSG_CLOEXEC* = cuint(1073741824)
const
  SCM_RIGHTS* = cuint(1)
const
  SHUT_RD* = cuint(0)
const
  SHUT_WR* = cuint(1)
const
  SHUT_RDWR* = cuint(2)
type
  enum_socket_type* {.size: sizeof(cuint).} = enum
    SOCK_STREAM = 1, SOCK_DGRAM = 2, SOCK_RAW = 3, SOCK_RDM = 4,
    SOCK_SEQPACKET = 5, SOCK_DCCP = 6, SOCK_PACKET = 10, SOCK_NONBLOCK = 2048,
    SOCK_CLOEXEC = 524288
type
  enum_mnl_attr_data_type* {.size: sizeof(cuint).} = enum
    MNL_TYPE_UNSPEC = 0, MNL_TYPE_U8 = 1, MNL_TYPE_U16 = 2, MNL_TYPE_U32 = 3,
    MNL_TYPE_U64 = 4, MNL_TYPE_STRING = 5, MNL_TYPE_FLAG = 6,
    MNL_TYPE_MSECS = 7, MNL_TYPE_NESTED = 8, MNL_TYPE_NESTED_COMPAT = 9,
    MNL_TYPE_NUL_STRING = 10, MNL_TYPE_BINARY = 11, MNL_TYPE_MAX = 12
type
  compiler_WCHAR_MIN* = object
type
  compiler_U32_TYPE* = object
type
  struct_mnl_nlmsg_batch* = object
type
  compiler_REDIRECT* = object
type
  compiler_SWORD_TYPE* = object
type
  compiler_SLONGWORD_TYPE* = object
type
  struct_IO_marker* = object
type
  struct_mnl_socket* = object
type
  compiler_restrict* = object
type
  typedef* = object
type
  compiler_NFDBITS* = object
type
  struct_IO_wide_data* = object
type
  compiler_ULONGWORD_TYPE* = object
type
  compiler_WCHAR_MAX_private* = object
type
  compiler_builtin_va_list* = object
type
  compiler_SQUAD_TYPE* = object
type
  compiler_REDIRECT_NTH* = object
type
  compiler_UQUAD_TYPE* = object
type
  struct_IO_codecvt* = object
type
  compiler_u_char* = uint8   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:31:23
  compiler_u_short* = cushort ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:32:28
  compiler_u_int* = cuint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:33:22
  compiler_u_long* = culong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:34:27
  compiler_int8_t* = cschar  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:37:21
  compiler_uint8_t* = uint8  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:38:23
  compiler_int16_t* = cshort ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:39:26
  compiler_uint16_t* = cushort ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:40:28
  compiler_int32_t* = cint   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:41:20
  compiler_uint32_t* = cuint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:42:22
  compiler_int64_t* = clong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:44:25
  compiler_uint64_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:45:27
  compiler_int_least8_t* = compiler_int8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:52:18
  compiler_uint_least8_t* = compiler_uint8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:53:19
  compiler_int_least16_t* = compiler_int16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:54:19
  compiler_uint_least16_t* = compiler_uint16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:55:20
  compiler_int_least32_t* = compiler_int32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:56:19
  compiler_uint_least32_t* = compiler_uint32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:57:20
  compiler_int_least64_t* = compiler_int64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:58:19
  compiler_uint_least64_t* = compiler_uint64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:59:20
  compiler_quad_t* = clong   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:63:18
  compiler_u_quad_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:64:27
  compiler_intmax_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:72:18
  compiler_uintmax_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:73:27
  compiler_dev_t* = culong   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:145:25
  compiler_uid_t* = cuint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:146:25
  compiler_gid_t* = cuint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:147:25
  compiler_ino_t* = culong   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:148:25
  compiler_ino64_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:149:27
  compiler_mode_t* = cuint   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:150:26
  compiler_nlink_t* = cuint  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:151:27
  compiler_off_t* = clong    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:152:25
  compiler_off64_t* = clong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:153:27
  compiler_pid_t* = cint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:154:25
  struct_fsid_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[2'i64, cint] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:155:12
  compiler_fsid_t* = struct_fsid_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:155:26
  compiler_clock_t* = clong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:156:27
  compiler_rlim_t* = culong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:157:26
  compiler_rlim64_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:158:28
  compiler_id_t* = cuint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:159:24
  compiler_time_t* = clong   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:160:26
  compiler_useconds_t* = cuint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:161:30
  compiler_suseconds_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:162:31
  compiler_suseconds64_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:163:33
  compiler_daddr_t* = cint   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:165:27
  compiler_key_t* = cint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:166:25
  compiler_clockid_t* = cint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:169:29
  compiler_timer_t* = pointer ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:172:27
  compiler_blksize_t* = cint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:175:29
  compiler_blkcnt_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:180:28
  compiler_blkcnt64_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:181:30
  compiler_fsblkcnt_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:184:30
  compiler_fsblkcnt64_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:185:32
  compiler_fsfilcnt_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:188:30
  compiler_fsfilcnt64_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:189:32
  compiler_fsword_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:192:28
  compiler_ssize_t* = clong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:194:27
  compiler_syscall_slong_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:197:33
  compiler_syscall_ulong_t* = culong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:199:33
  compiler_loff_t* = compiler_off64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:203:19
  compiler_caddr_t* = ptr uint8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:204:15
  compiler_intptr_t* = clong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:207:25
  compiler_socklen_t* = cuint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:210:23
  compiler_sig_atomic_t* = cint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:215:13
  struct_mbstate_t_compiler_value_t* {.union, bycopy.} = object
    compiler_wch*: cuint
    compiler_wchb*: array[4'i64, uint8]
  struct_mbstate_t* {.pure, inheritable, bycopy.} = object
    compiler_count*: cint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__mbstate_t.h:13:9
    compiler_value*: struct_mbstate_t_compiler_value_t
  compiler_mbstate_t* = struct_mbstate_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__mbstate_t.h:21:3
  struct_G_fpos_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos_t* = struct_G_fpos_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos_t.h:14:3
  struct_G_fpos64_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos64_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos64_t* = struct_G_fpos64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos64_t.h:14:3
  compiler_FILE* = struct_IO_FILE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__FILE.h:5:25
  struct_IO_FILE* {.pure, inheritable, bycopy.} = object
    internal_flags*: cint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:49:8
    internal_IO_read_ptr*: ptr uint8
    internal_IO_read_end*: ptr uint8
    internal_IO_read_base*: ptr uint8
    internal_IO_write_base*: ptr uint8
    internal_IO_write_ptr*: ptr uint8
    internal_IO_write_end*: ptr uint8
    internal_IO_buf_base*: ptr uint8
    internal_IO_buf_end*: ptr uint8
    internal_IO_save_base*: ptr uint8
    internal_IO_backup_base*: ptr uint8
    internal_IO_save_end*: ptr uint8
    internal_markers*: ptr struct_IO_marker
    internal_chain*: ptr struct_IO_FILE
    internal_fileno*: cint
    internal_flags2*: cint
    internal_old_offset*: compiler_off_t
    internal_cur_column*: cushort
    internal_vtable_offset*: cschar
    internal_shortbuf*: array[1'i64, uint8]
    internal_lock*: pointer
    internal_offset*: compiler_off64_t
    internal_codecvt*: ptr struct_IO_codecvt
    internal_wide_data*: ptr struct_IO_wide_data
    internal_freeres_list*: ptr struct_IO_FILE
    internal_freeres_buf*: pointer
    internal_prevchain*: ptr ptr struct_IO_FILE
    internal_mode*: cint
    internal_unused2*: array[20'i64, uint8]
  FILE* = struct_IO_FILE     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/FILE.h:7:25
  cookie_read_function_t* = proc (a0: pointer; a1: ptr uint8; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:27:19
  cookie_write_function_t* = proc (a0: pointer; a1: ptr uint8; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:36:19
  cookie_seek_function_t* = proc (a0: pointer; a1: ptr compiler_off64_t;
                                  a2: cint): cint {.cdecl.} ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:45:13
  cookie_close_function_t* = proc (a0: pointer): cint {.cdecl.} ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:48:13
  struct_IO_cookie_io_functions_t* {.pure, inheritable, bycopy.} = object
    read*: cookie_read_function_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:55:16
    write*: cookie_write_function_t
    seek*: cookie_seek_function_t
    close*: cookie_close_function_t
  cookie_io_functions_t* = struct_IO_cookie_io_functions_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:61:3
  va_list* = compiler_gnuc_va_list ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:53:24
  compiler_gnuc_va_list* = compiler_builtin_va_list ## Generated based on /nix/store/qkkpr4fjkbsdfhxs5ms8b53phzhpp38i-clang-wrapper-19.1.7/resource-root/include/__stdarg___gnuc_va_list.h:12:27
  off_t* = compiler_off_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:64:17
  ssize_t* = compiler_ssize_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:78:19
  fpos_t* = compiler_fpos_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:85:18
  internal_Float128* = clongdouble ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:80:21
  internal_Float32* = cfloat ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:214:15
  internal_Float64* = cdouble ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:251:16
  internal_Float32x* = cdouble ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:268:16
  internal_Float64x* = clongdouble ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:285:21
  int8_t* = compiler_int8_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:24:18
  int16_t* = compiler_int16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:25:19
  int32_t* = compiler_int32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:26:19
  int64_t* = compiler_int64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:27:19
  uint8_t* = compiler_uint8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:24:19
  uint16_t* = compiler_uint16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:25:20
  uint32_t* = compiler_uint32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:26:20
  uint64_t* = compiler_uint64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:27:20
  int_least8_t* = compiler_int_least8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:25:24
  int_least16_t* = compiler_int_least16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:26:25
  int_least32_t* = compiler_int_least32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:27:25
  int_least64_t* = compiler_int_least64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:28:25
  uint_least8_t* = compiler_uint_least8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:31:25
  uint_least16_t* = compiler_uint_least16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:32:26
  uint_least32_t* = compiler_uint_least32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:33:26
  uint_least64_t* = compiler_uint_least64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:34:26
  int_fast8_t* = cschar      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:47:22
  int_fast16_t* = clong      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:49:19
  int_fast32_t* = clong      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:50:19
  int_fast64_t* = clong      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:51:19
  uint_fast8_t* = uint8      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:60:24
  uint_fast16_t* = culong    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:62:27
  uint_fast32_t* = culong    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:63:27
  uint_fast64_t* = culong    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:64:27
  intptr_t* = clong          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:76:19
  uintptr_t* = culong        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:79:27
  intmax_t* = compiler_intmax_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:90:21
  uintmax_t* = compiler_uintmax_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:91:22
  gid_t* = compiler_gid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:232:17
  uid_t* = compiler_uid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:237:17
  useconds_t* = compiler_useconds_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:255:22
  pid_t* = compiler_pid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:260:17
  socklen_t* = compiler_socklen_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:274:21
  struct_iovec* {.pure, inheritable, bycopy.} = object
    iov_base*: pointer       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_iovec.h:26:8
    iov_len*: csize_t
  u_char* = compiler_u_char  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:33:18
  u_short* = compiler_u_short ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:34:19
  u_int_typedef* = compiler_u_int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:35:17
  u_long* = compiler_u_long  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:36:18
  quad_t* = compiler_quad_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:37:18
  u_quad_t* = compiler_u_quad_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:38:20
  fsid_t* = compiler_fsid_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:39:18
  loff_t* = compiler_loff_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:42:18
  ino_t* = compiler_ino_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:47:17
  dev_t* = compiler_dev_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:59:17
  mode_t* = compiler_mode_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:69:18
  nlink_t* = compiler_nlink_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:74:19
  id_t* = compiler_id_t      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:103:16
  daddr_t* = compiler_daddr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:114:19
  caddr_t* = compiler_caddr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:115:19
  key_t* = compiler_key_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:121:17
  clock_t* = compiler_clock_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clock_t.h:7:19
  clockid_t* = compiler_clockid_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clockid_t.h:7:21
  time_t* = compiler_time_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/time_t.h:10:18
  timer_t* = compiler_timer_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/timer_t.h:7:19
  ulong_typedef* = culong    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:148:27
  ushort_typedef* = cushort  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:149:28
  uint_typedef_11B61E95* = cuint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:150:22
  u_int8_t_typedef* = compiler_uint8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:158:19
  u_int16_t_typedef* = compiler_uint16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:159:20
  u_int32_t_typedef* = compiler_uint32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:160:20
  u_int64_t_typedef* = compiler_uint64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:161:20
  register_t* = clong        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:164:13
  struct_sigset_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[16'i64, culong] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__sigset_t.h:5:9
  compiler_sigset_t* = struct_sigset_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__sigset_t.h:8:3
  sigset_t* = compiler_sigset_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/sigset_t.h:7:20
  struct_timeval* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timeval.h:8:8
    tv_usec*: compiler_suseconds_t
  struct_timespec* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timespec.h:11:8
    tv_nsec*: compiler_syscall_slong_t
  suseconds_t* = compiler_suseconds_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:43:23
  compiler_fd_mask* = clong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:49:18
  struct_fd_set* {.pure, inheritable, bycopy.} = object
    compiler_fds_bits*: array[16'i64, compiler_fd_mask] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:59:9
  fd_set* = struct_fd_set    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:70:5
  fd_mask* = compiler_fd_mask ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:77:19
  blksize_t* = compiler_blksize_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:185:21
  blkcnt_t* = compiler_blkcnt_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:192:20
  fsblkcnt_t* = compiler_fsblkcnt_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:196:22
  fsfilcnt_t* = compiler_fsfilcnt_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:200:22
  union_atomic_wide_counter_compiler_value32_t* {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter* {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  compiler_atomic_wide_counter* = union_atomic_wide_counter ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list* {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list
  compiler_pthread_list_t* = struct_pthread_internal_list ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:55:3
  struct_pthread_internal_slist* {.pure, inheritable, bycopy.} = object
    compiler_next*: ptr struct_pthread_internal_slist ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:57:16
  compiler_pthread_slist_t* = struct_pthread_internal_slist ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:60:3
  struct_pthread_mutex_s* {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_mutex.h:27:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cint
    compiler_list*: compiler_pthread_list_t
  struct_pthread_rwlock_arch_t* {.pure, inheritable, bycopy.} = object
    compiler_readers*: cuint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_rwlock.h:23:8
    compiler_writers*: cuint
    compiler_wrphase_futex*: cuint
    compiler_writers_futex*: cuint
    compiler_pad3*: cuint
    compiler_pad4*: cuint
    compiler_cur_writer*: cint
    compiler_shared*: cint
    compiler_pad1*: culong
    compiler_pad2*: culong
    compiler_flags*: cuint
  struct_pthread_cond_s* {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
    compiler_unused_initialized_1*: cuint
    compiler_unused_initialized_2*: cuint
  compiler_tss_t* = cuint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:106:22
  compiler_thrd_t* = culong  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:107:27
  struct_once_flag* {.pure, inheritable, bycopy.} = object
    compiler_data*: cint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:109:9
  compiler_once_flag* = struct_once_flag ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:112:3
  pthread_t* = culong        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:27:27
  union_pthread_mutexattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:32:9
    compiler_align*: cint
  pthread_mutexattr_t* = union_pthread_mutexattr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:36:3
  union_pthread_condattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:41:9
    compiler_align*: cint
  pthread_condattr_t* = union_pthread_condattr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:45:3
  pthread_key_t* = cuint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:49:22
  pthread_once_t* = cint     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:53:30
  union_pthread_attr_t* {.union, bycopy.} = object
    compiler_size*: array[64'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:56:7
    compiler_align*: clong
  pthread_attr_t* = union_pthread_attr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:62:30
  union_pthread_mutex_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:67:9
    compiler_size*: array[48'i64, uint8]
    compiler_align*: clong
  pthread_mutex_t* = union_pthread_mutex_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:72:3
  union_pthread_cond_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, uint8]
    compiler_align*: clonglong
  pthread_cond_t* = union_pthread_cond_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:80:3
  union_pthread_rwlock_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_rwlock_arch_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:86:9
    compiler_size*: array[56'i64, uint8]
    compiler_align*: clong
  pthread_rwlock_t* = union_pthread_rwlock_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:91:3
  union_pthread_rwlockattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:93:9
    compiler_align*: clong
  pthread_rwlockattr_t* = union_pthread_rwlockattr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:97:3
  pthread_spinlock_t* = cint ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:103:22
  union_pthread_barrier_t* {.union, bycopy.} = object
    compiler_size*: array[32'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:108:9
    compiler_align*: clong
  pthread_barrier_t* = union_pthread_barrier_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:112:3
  union_pthread_barrierattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, uint8] ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:114:9
    compiler_align*: cint
  pthread_barrierattr_t* = union_pthread_barrierattr_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:118:3
  sa_family_t* = cushort     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/sockaddr.h:28:28
  struct_sockaddr* {.pure, inheritable, bycopy.} = object
    sa_family*: sa_family_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:184:39
    sa_data*: array[14'i64, uint8]
  struct_sockaddr_storage* {.pure, inheritable, bycopy.} = object
    ss_family*: sa_family_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:197:39
    compiler_ss_padding*: array[118'i64, uint8]
    compiler_ss_align*: culong
  struct_msghdr* {.pure, inheritable, bycopy.} = object
    msg_name*: pointer       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:263:8
    msg_namelen*: socklen_t
    msg_iov*: ptr struct_iovec
    msg_iovlen*: csize_t
    msg_control*: pointer
    msg_controllen*: csize_t
    msg_flags*: cint
  struct_cmsghdr* {.pure, inheritable, bycopy.} = object
    cmsg_len*: csize_t       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:281:8
    cmsg_level*: cint
    cmsg_type*: cint
    compiler_cmsg_data*: ptr UncheckedArray[uint8]
  struct_linger* {.pure, inheritable, bycopy.} = object
    l_onoff*: cint           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:397:8
    l_linger*: cint
  struct_osockaddr* {.pure, inheritable, bycopy.} = object
    sa_family*: cushort      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_osockaddr.h:6:8
    sa_data*: array[14'i64, uint8]
  struct_nlmsghdr* {.pure, inheritable, bycopy.} = object
    nlmsg_len*: compiler_u32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:52:8
    nlmsg_type*: compiler_u16
    nlmsg_flags*: compiler_u16
    nlmsg_seq*: compiler_u32
    nlmsg_pid*: compiler_u32
  struct_nlattr* {.pure, inheritable, bycopy.} = object
    nla_len*: compiler_u16   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:225:8
    nla_type*: compiler_u16
  mnl_attr_cb_t* = proc (a0: ptr struct_nlattr; a1: pointer): cint {.cdecl.} ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:163:15
  mnl_cb_t* = proc (a0: ptr struct_nlmsghdr; a1: pointer): cint {.cdecl.} ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:176:15
  compiler_u32* = cuint      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:27:22
  compiler_u16* = cushort    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:24:24
when 1 is static:
  const
    internal_STDIO_H* = 1    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:25:9
else:
  let internal_STDIO_H* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:25:9
when 1 is static:
  const
    internal_FEATURES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:19:9
else:
  let internal_FEATURES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:19:9
when 1 is static:
  const
    internal_DEFAULT_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:246:10
else:
  let internal_DEFAULT_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:246:10
when 0 is static:
  const
    compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:254:10
else:
  let compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:254:10
when 1 is static:
  const
    compiler_USE_ISOC11* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:260:10
else:
  let compiler_USE_ISOC11* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:260:10
when 1 is static:
  const
    compiler_USE_ISOC99* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:355:10
else:
  let compiler_USE_ISOC99* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:355:10
when 1 is static:
  const
    compiler_USE_ISOC95* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:353:10
else:
  let compiler_USE_ISOC95* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:353:10
when 1 is static:
  const
    compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:295:11
else:
  let compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:295:11
when 1 is static:
  const
    internal_POSIX_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:298:10
else:
  let internal_POSIX_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:298:10
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:300:10
else:
  let internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:300:10
when 1 is static:
  const
    compiler_USE_POSIX* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:335:10
else:
  let compiler_USE_POSIX* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:335:10
when 1 is static:
  const
    compiler_USE_POSIX2* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:339:10
else:
  let compiler_USE_POSIX2* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:339:10
when 1 is static:
  const
    compiler_USE_POSIX199309* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:343:10
else:
  let compiler_USE_POSIX199309* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:343:10
when 1 is static:
  const
    compiler_USE_POSIX199506* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:347:10
else:
  let compiler_USE_POSIX199506* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:347:10
when 1 is static:
  const
    compiler_USE_XOPEN2K* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:351:10
else:
  let compiler_USE_XOPEN2K* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:351:10
when 1 is static:
  const
    compiler_USE_XOPEN2K8* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:359:10
else:
  let compiler_USE_XOPEN2K8* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:359:10
when 1 is static:
  const
    internal_ATFILE_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:361:10
else:
  let internal_ATFILE_SOURCE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:361:10
when 64 is static:
  const
    compiler_WORDSIZE* = 64  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wordsize.h:21:10
else:
  let compiler_WORDSIZE* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wordsize.h:21:10
when 0 is static:
  const
    compiler_WORDSIZE_TIME64_COMPAT32* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wordsize.h:28:9
else:
  let compiler_WORDSIZE_TIME64_COMPAT32* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wordsize.h:28:9
when 64 is static:
  const
    compiler_TIMESIZE* = 64  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/timesize.h:20:9
else:
  let compiler_TIMESIZE* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/timesize.h:20:9
when 1 is static:
  const
    compiler_USE_TIME_BITS64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features-time64.h:37:10
else:
  let compiler_USE_TIME_BITS64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features-time64.h:37:10
when 1 is static:
  const
    compiler_USE_MISC* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:405:10
else:
  let compiler_USE_MISC* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:405:10
when 1 is static:
  const
    compiler_USE_ATFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:409:10
else:
  let compiler_USE_ATFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:409:10
when 0 is static:
  const
    compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:442:10
else:
  let compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:442:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:450:10
else:
  let compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:450:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:473:10
else:
  let compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:473:10
when 0 is static:
  const
    compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:484:10
else:
  let compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:484:10
when 1 is static:
  const
    internal_STDC_PREDEF_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:19:9
else:
  let internal_STDC_PREDEF_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:19:9
when 1 is static:
  const
    compiler_STDC_IEC_559_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:42:10
else:
  let compiler_STDC_IEC_559_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:42:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:43:10
else:
  let compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:43:10
when 1 is static:
  const
    compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:52:10
else:
  let compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:52:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:53:10
else:
  let compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:53:10
when cast[clong](201706'i64) is static:
  const
    compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:62:9
else:
  let compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdc-predef.h:62:9
when 6 is static:
  const
    compiler_GNU_LIBRARY_private* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:498:9
else:
  let compiler_GNU_LIBRARY_private* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:498:9
when 2 is static:
  const
    compiler_GLIBC_private* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:502:9
else:
  let compiler_GLIBC_private* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:502:9
when 40 is static:
  const
    compiler_GLIBC_MINOR_private* = 40 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:503:9
else:
  let compiler_GLIBC_MINOR_private* = 40 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/features.h:503:9
when 1 is static:
  const
    internal_SYS_CDEFS_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:20:9
else:
  let internal_SYS_CDEFS_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:20:9
when 1 is static:
  const
    compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:380:10
else:
  let compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:380:10
when 0 is static:
  const
    compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/long-double.h:21:9
else:
  let compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/long-double.h:21:9
when 1 is static:
  const
    compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:826:10
else:
  let compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/cdefs.h:826:10
when 0 is static:
  const
    compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:42:10
else:
  let compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:42:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:71:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:71:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:77:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:77:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:83:10
else:
  let compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:83:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:94:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:94:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:100:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:100:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:109:10
else:
  let compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/libc-header-start.h:109:10
when 1 is static:
  const
    internal_BITS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:24:9
else:
  let internal_BITS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:24:9
when int is typedesc:
  type
    compiler_S32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:111:9
else:
  when int is static:
    const
      compiler_S32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:111:9
  else:
    let compiler_S32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:111:9
when int is typedesc:
  type
    compiler_SLONG32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:132:10
else:
  when int is static:
    const
      compiler_SLONG32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:132:10
  else:
    let compiler_SLONG32_TYPE* = int ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:132:10
when typedef is typedesc:
  type
    compiler_STD_TYPE* = typedef ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:137:10
else:
  when typedef is static:
    const
      compiler_STD_TYPE* = typedef ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:137:10
  else:
    let compiler_STD_TYPE* = typedef ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types.h:137:10
when 1 is static:
  const
    internal_BITS_TYPESIZES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:24:9
else:
  let internal_BITS_TYPESIZES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:24:9
when 1 is static:
  const
    compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:82:10
else:
  let compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:82:10
when 1 is static:
  const
    compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:85:10
else:
  let compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:85:10
when 1 is static:
  const
    compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:88:10
else:
  let compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:88:10
when 1 is static:
  const
    compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:91:10
else:
  let compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:91:10
when 1024 is static:
  const
    compiler_FD_SETSIZE* = 1024 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/posix_types.h:23:9
else:
  let compiler_FD_SETSIZE* = 1024 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/posix_types.h:23:9
when 1 is static:
  const
    internal_BITS_TIME64_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/time64.h:24:9
else:
  let internal_BITS_TIME64_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/time64.h:24:9
when 1 is static:
  const
    compiler_fpos_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos_t.h:2:9
else:
  let compiler_fpos_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos_t.h:2:9
when 1 is static:
  const
    compiler_mbstate_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__mbstate_t.h:2:9
else:
  let compiler_mbstate_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__mbstate_t.h:2:9
when 1 is static:
  const
    compiler_fpos64_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos64_t.h:2:9
else:
  let compiler_fpos64_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__fpos64_t.h:2:9
when 1 is static:
  const
    compiler_FILE_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__FILE.h:2:9
else:
  let compiler_FILE_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/__FILE.h:2:9
when 1 is static:
  const
    compiler_FILE_defined_const* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/FILE.h:2:9
else:
  let compiler_FILE_defined_const* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/FILE.h:2:9
when 1 is static:
  const
    compiler_struct_FILE_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:19:9
else:
  let compiler_struct_FILE_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:19:9
when 16 is static:
  const
    internal_IO_EOF_SEEN* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:111:9
else:
  let internal_IO_EOF_SEEN* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:111:9
when 32 is static:
  const
    internal_IO_ERR_SEEN* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:114:9
else:
  let internal_IO_ERR_SEEN* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:114:9
when 32768 is static:
  const
    internal_IO_USER_LOCK* = 32768 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:117:9
else:
  let internal_IO_USER_LOCK* = 32768 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_FILE.h:117:9
when 1 is static:
  const
    compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:19:9
else:
  let compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/cookie_io_functions_t.h:19:9
when 0 is static:
  const
    internal_IOFBF* = 0      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:94:9
else:
  let internal_IOFBF* = 0    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:94:9
when 1 is static:
  const
    internal_IOLBF* = 1      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:95:9
else:
  let internal_IOLBF* = 1    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:95:9
when 2 is static:
  const
    internal_IONBF* = 2      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:96:9
else:
  let internal_IONBF* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:96:9
when 8192 is static:
  const
    BUFSIZ* = 8192           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:100:9
else:
  let BUFSIZ* = 8192         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:100:9
when -1 is static:
  const
    EOF* = -1                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:105:9
else:
  let EOF* = -1              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:105:9
when 0 is static:
  const
    SEEK_SET* = 0            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:110:9
else:
  let SEEK_SET* = 0          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:110:9
when 1 is static:
  const
    SEEK_CUR* = 1            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:111:9
else:
  let SEEK_CUR* = 1          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:111:9
when 2 is static:
  const
    SEEK_END* = 2            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:112:9
else:
  let SEEK_END* = 2          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:112:9
when "/tmp" is static:
  const
    P_tmpdir* = "/tmp"       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:121:10
else:
  let P_tmpdir* = "/tmp"     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:121:10
when 20 is static:
  const
    L_tmpnam* = 20           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:124:9
else:
  let L_tmpnam* = 20         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:124:9
when 238328 is static:
  const
    TMP_MAX* = 238328        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:125:9
else:
  let TMP_MAX* = 238328      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:125:9
when 1 is static:
  const
    internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdio_lim.h:20:9
else:
  let internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdio_lim.h:20:9
when 4096 is static:
  const
    FILENAME_MAX* = 4096     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdio_lim.h:26:9
else:
  let FILENAME_MAX* = 4096   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdio_lim.h:26:9
when 9 is static:
  const
    L_ctermid* = 9           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:132:10
else:
  let L_ctermid* = 9         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:132:10
when 16 is static:
  const
    FOPEN_MAX* = 16          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:139:9
else:
  let FOPEN_MAX* = 16        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdio.h:139:9
var stdin* {.importc: "stdin".}: ptr FILE
var stdout* {.importc: "stdout".}: ptr FILE
var stderr* {.importc: "stderr".}: ptr FILE
when 1 is static:
  const
    compiler_HAVE_FLOAT128* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:29:10
else:
  let compiler_HAVE_FLOAT128* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:29:10
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT128* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:40:9
else:
  let compiler_HAVE_DISTINCT_FLOAT128* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:40:9
when compiler_HAVE_FLOAT128 is typedesc:
  type
    compiler_HAVE_FLOAT64X* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:45:9
else:
  when compiler_HAVE_FLOAT128 is static:
    const
      compiler_HAVE_FLOAT64X* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:45:9
  else:
    let compiler_HAVE_FLOAT64X* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:45:9
when compiler_HAVE_FLOAT128 is typedesc:
  type
    compiler_HAVE_FLOAT64X_LONG_DOUBLE* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:51:9
else:
  when compiler_HAVE_FLOAT128 is static:
    const
      compiler_HAVE_FLOAT64X_LONG_DOUBLE* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:51:9
  else:
    let compiler_HAVE_FLOAT64X_LONG_DOUBLE* = compiler_HAVE_FLOAT128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn.h:51:9
when 0 is static:
  const
    compiler_HAVE_FLOAT16* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:34:9
else:
  let compiler_HAVE_FLOAT16* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:34:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:35:9
else:
  let compiler_HAVE_FLOAT32* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:35:9
when 1 is static:
  const
    compiler_HAVE_FLOAT64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:36:9
else:
  let compiler_HAVE_FLOAT64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:36:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32X* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:37:9
else:
  let compiler_HAVE_FLOAT32X* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:37:9
when 0 is static:
  const
    compiler_HAVE_FLOAT128X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:38:9
else:
  let compiler_HAVE_FLOAT128X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:38:9
when compiler_HAVE_FLOAT16 is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:52:9
else:
  when compiler_HAVE_FLOAT16 is static:
    const
      compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:52:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:52:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:53:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:53:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:54:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:54:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:55:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:55:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:56:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:56:9
when compiler_HAVE_FLOAT128X is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:57:9
else:
  when compiler_HAVE_FLOAT128X is static:
    const
      compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:57:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:57:9
when 0 is static:
  const
    compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:72:10
else:
  let compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/floatn-common.h:72:10
when 1 is static:
  const
    internal_STDINT_H* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:23:9
else:
  let internal_STDINT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:23:9
when 1 is static:
  const
    internal_BITS_WCHAR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wchar.h:20:9
else:
  let internal_BITS_WCHAR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wchar.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:20:9
else:
  let internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:20:9
else:
  let internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:20:9
else:
  let internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-least.h:20:9
when -128 is static:
  const
    INT8_MIN* = -128         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:105:10
else:
  let INT8_MIN* = -128       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:105:10
when 127 is static:
  const
    INT8_MAX* = 127          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:110:10
else:
  let INT8_MAX* = 127        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:110:10
when 32767 is static:
  const
    INT16_MAX* = 32767       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:111:10
else:
  let INT16_MAX* = 32767     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:111:10
when 2147483647 is static:
  const
    INT32_MAX* = 2147483647  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:112:10
else:
  let INT32_MAX* = 2147483647 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:112:10
when 255 is static:
  const
    UINT8_MAX* = 255         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:116:10
else:
  let UINT8_MAX* = 255       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:116:10
when 65535 is static:
  const
    UINT16_MAX* = 65535      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:117:10
else:
  let UINT16_MAX* = 65535    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:117:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:118:10
when -128 is static:
  const
    INT_LEAST8_MIN* = -128   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:123:10
else:
  let INT_LEAST8_MIN* = -128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:123:10
when 127 is static:
  const
    INT_LEAST8_MAX* = 127    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:128:10
else:
  let INT_LEAST8_MAX* = 127  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:128:10
when 32767 is static:
  const
    INT_LEAST16_MAX* = 32767 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:129:10
else:
  let INT_LEAST16_MAX* = 32767 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:129:10
when 2147483647 is static:
  const
    INT_LEAST32_MAX* = 2147483647 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:130:10
else:
  let INT_LEAST32_MAX* = 2147483647 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:130:10
when 255 is static:
  const
    UINT_LEAST8_MAX* = 255   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:134:10
else:
  let UINT_LEAST8_MAX* = 255 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:134:10
when 65535 is static:
  const
    UINT_LEAST16_MAX* = 65535 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:135:10
else:
  let UINT_LEAST16_MAX* = 65535 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:135:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:136:10
else:
  let UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:136:10
when -128 is static:
  const
    INT_FAST8_MIN* = -128    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:141:10
else:
  let INT_FAST8_MIN* = -128  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:141:10
when 127 is static:
  const
    INT_FAST8_MAX* = 127     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:151:10
else:
  let INT_FAST8_MAX* = 127   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:151:10
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:153:11
else:
  let INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:153:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:154:11
else:
  let INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:154:11
when 255 is static:
  const
    UINT_FAST8_MAX* = 255    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:162:10
else:
  let UINT_FAST8_MAX* = 255  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:162:10
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:164:11
else:
  let UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:164:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:165:11
else:
  let UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:165:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:176:11
else:
  let INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:176:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:177:11
else:
  let UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:177:11
when cast[clong](9223372036854775807'i64) is static:
  const
    PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:199:11
else:
  let PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:199:11
when 2147483647 is static:
  const
    SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:212:10
else:
  let SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:212:10
when cast[culong](18446744073709551615'u) is static:
  const
    SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:216:11
else:
  let SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:216:11
when cast[cuint](0'i64) is static:
  const
    WINT_MIN* = cast[cuint](0'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:233:10
else:
  let WINT_MIN* = cast[cuint](0'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:233:10
when cast[cuint](4294967295'i64) is static:
  const
    WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:234:10
else:
  let WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:234:10
when 1 is static:
  const
    internal_UNISTD_H* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:23:9
else:
  let internal_UNISTD_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:23:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_VERSION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:34:10
else:
  let internal_POSIX_VERSION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:34:10
when cast[clong](200809'i64) is static:
  const
    compiler_POSIX2_THIS_VERSION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:53:10
else:
  let compiler_POSIX2_THIS_VERSION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:53:10
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:67:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:67:9
  else:
    let internal_POSIX2_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:67:9
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_C_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:70:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_C_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:70:9
  else:
    let internal_POSIX2_C_VERSION* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:70:9
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_C_BIND* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:74:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_C_BIND* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:74:9
  else:
    let internal_POSIX2_C_BIND* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:74:9
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_C_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:78:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_C_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:78:9
  else:
    let internal_POSIX2_C_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:78:9
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_SW_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:82:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_SW_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:82:9
  else:
    let internal_POSIX2_SW_DEV* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:82:9
when compiler_POSIX2_THIS_VERSION is typedesc:
  type
    internal_POSIX2_LOCALEDEF* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:86:9
else:
  when compiler_POSIX2_THIS_VERSION is static:
    const
      internal_POSIX2_LOCALEDEF* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:86:9
  else:
    let internal_POSIX2_LOCALEDEF* = compiler_POSIX2_THIS_VERSION ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:86:9
when 700 is static:
  const
    internal_XOPEN_VERSION* = 700 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:90:10
else:
  let internal_XOPEN_VERSION* = 700 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:90:10
when 4 is static:
  const
    internal_XOPEN_XCU_VERSION* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:100:9
else:
  let internal_XOPEN_XCU_VERSION* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:100:9
when 1 is static:
  const
    internal_XOPEN_XPG2* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:103:9
else:
  let internal_XOPEN_XPG2* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:103:9
when 1 is static:
  const
    internal_XOPEN_XPG3* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:104:9
else:
  let internal_XOPEN_XPG3* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:104:9
when 1 is static:
  const
    internal_XOPEN_XPG4* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:105:9
else:
  let internal_XOPEN_XPG4* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:105:9
when 1 is static:
  const
    internal_XOPEN_UNIX* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:108:9
else:
  let internal_XOPEN_UNIX* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:108:9
when 1 is static:
  const
    internal_XOPEN_ENH_I18N* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:112:9
else:
  let internal_XOPEN_ENH_I18N* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:112:9
when 1 is static:
  const
    internal_XOPEN_LEGACY* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:115:9
else:
  let internal_XOPEN_LEGACY* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:115:9
when 1 is static:
  const
    internal_BITS_POSIX_OPT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:20:9
else:
  let internal_BITS_POSIX_OPT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:20:9
when 1 is static:
  const
    internal_POSIX_JOB_CONTROL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:23:9
else:
  let internal_POSIX_JOB_CONTROL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:23:9
when 1 is static:
  const
    internal_POSIX_SAVED_IDS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:26:9
else:
  let internal_POSIX_SAVED_IDS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:26:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_PRIORITY_SCHEDULING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:32:9
else:
  let internal_POSIX_PRIORITY_SCHEDULING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:32:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_SYNCHRONIZED_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:35:9
else:
  let internal_POSIX_SYNCHRONIZED_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:35:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_FSYNC* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:38:9
else:
  let internal_POSIX_FSYNC* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:38:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_MAPPED_FILES* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:41:9
else:
  let internal_POSIX_MAPPED_FILES* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:41:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_MEMLOCK* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:44:9
else:
  let internal_POSIX_MEMLOCK* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:44:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_MEMLOCK_RANGE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:47:9
else:
  let internal_POSIX_MEMLOCK_RANGE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:47:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_MEMORY_PROTECTION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:50:9
else:
  let internal_POSIX_MEMORY_PROTECTION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:50:9
when 0 is static:
  const
    internal_POSIX_CHOWN_RESTRICTED* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:53:9
else:
  let internal_POSIX_CHOWN_RESTRICTED* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:53:9
when 1 is static:
  const
    internal_POSIX_NO_TRUNC* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:60:9
else:
  let internal_POSIX_NO_TRUNC* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:60:9
when 1 is static:
  const
    internal_XOPEN_REALTIME* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:63:9
else:
  let internal_XOPEN_REALTIME* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:63:9
when 1 is static:
  const
    internal_XOPEN_REALTIME_THREADS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:66:9
else:
  let internal_XOPEN_REALTIME_THREADS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:66:9
when 1 is static:
  const
    internal_XOPEN_SHM* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:69:9
else:
  let internal_XOPEN_SHM* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:69:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREADS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:72:9
else:
  let internal_POSIX_THREADS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:72:9
when 1 is static:
  const
    internal_POSIX_REENTRANT_FUNCTIONS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:75:9
else:
  let internal_POSIX_REENTRANT_FUNCTIONS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:75:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_SAFE_FUNCTIONS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:76:9
else:
  let internal_POSIX_THREAD_SAFE_FUNCTIONS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:76:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_PRIORITY_SCHEDULING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:79:9
else:
  let internal_POSIX_THREAD_PRIORITY_SCHEDULING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:79:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_ATTR_STACKSIZE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:82:9
else:
  let internal_POSIX_THREAD_ATTR_STACKSIZE* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:82:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_ATTR_STACKADDR* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:85:9
else:
  let internal_POSIX_THREAD_ATTR_STACKADDR* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:85:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_PRIO_INHERIT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:88:9
else:
  let internal_POSIX_THREAD_PRIO_INHERIT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:88:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_PRIO_PROTECT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:92:9
else:
  let internal_POSIX_THREAD_PRIO_PROTECT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:92:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_ROBUST_PRIO_INHERIT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:96:10
else:
  let internal_POSIX_THREAD_ROBUST_PRIO_INHERIT* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:96:10
when -1 is static:
  const
    internal_POSIX_THREAD_ROBUST_PRIO_PROTECT* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:99:10
else:
  let internal_POSIX_THREAD_ROBUST_PRIO_PROTECT* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:99:10
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_SEMAPHORES* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:103:9
else:
  let internal_POSIX_SEMAPHORES* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:103:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_REALTIME_SIGNALS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:106:9
else:
  let internal_POSIX_REALTIME_SIGNALS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:106:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_ASYNCHRONOUS_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:109:9
else:
  let internal_POSIX_ASYNCHRONOUS_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:109:9
when 1 is static:
  const
    internal_POSIX_ASYNC_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:110:9
else:
  let internal_POSIX_ASYNC_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:110:9
when 1 is static:
  const
    internal_LFS_ASYNCHRONOUS_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:112:9
else:
  let internal_LFS_ASYNCHRONOUS_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:112:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_PRIORITIZED_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:114:9
else:
  let internal_POSIX_PRIORITIZED_IO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:114:9
when 1 is static:
  const
    internal_LFS64_ASYNCHRONOUS_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:117:9
else:
  let internal_LFS64_ASYNCHRONOUS_IO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:117:9
when 1 is static:
  const
    internal_LFS_LARGEFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:120:9
else:
  let internal_LFS_LARGEFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:120:9
when 1 is static:
  const
    internal_LFS64_LARGEFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:121:9
else:
  let internal_LFS64_LARGEFILE* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:121:9
when 1 is static:
  const
    internal_LFS64_STDIO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:122:9
else:
  let internal_LFS64_STDIO* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:122:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_SHARED_MEMORY_OBJECTS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:125:9
else:
  let internal_POSIX_SHARED_MEMORY_OBJECTS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:125:9
when 0 is static:
  const
    internal_POSIX_CPUTIME* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:128:9
else:
  let internal_POSIX_CPUTIME* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:128:9
when 0 is static:
  const
    internal_POSIX_THREAD_CPUTIME* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:131:9
else:
  let internal_POSIX_THREAD_CPUTIME* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:131:9
when 1 is static:
  const
    internal_POSIX_REGEXP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:134:9
else:
  let internal_POSIX_REGEXP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:134:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_READER_WRITER_LOCKS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:137:9
else:
  let internal_POSIX_READER_WRITER_LOCKS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:137:9
when 1 is static:
  const
    internal_POSIX_SHELL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:140:9
else:
  let internal_POSIX_SHELL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:140:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_TIMEOUTS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:143:9
else:
  let internal_POSIX_TIMEOUTS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:143:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_SPIN_LOCKS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:146:9
else:
  let internal_POSIX_SPIN_LOCKS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:146:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_SPAWN* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:149:9
else:
  let internal_POSIX_SPAWN* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:149:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_TIMERS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:152:9
else:
  let internal_POSIX_TIMERS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:152:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_BARRIERS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:155:9
else:
  let internal_POSIX_BARRIERS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:155:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_MESSAGE_PASSING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:158:9
else:
  let internal_POSIX_MESSAGE_PASSING* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:158:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_THREAD_PROCESS_SHARED* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:161:9
else:
  let internal_POSIX_THREAD_PROCESS_SHARED* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:161:9
when 0 is static:
  const
    internal_POSIX_MONOTONIC_CLOCK* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:164:9
else:
  let internal_POSIX_MONOTONIC_CLOCK* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:164:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_CLOCK_SELECTION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:167:9
else:
  let internal_POSIX_CLOCK_SELECTION* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:167:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_ADVISORY_INFO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:170:9
else:
  let internal_POSIX_ADVISORY_INFO* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:170:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_IPV6* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:173:9
else:
  let internal_POSIX_IPV6* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:173:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_RAW_SOCKETS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:176:9
else:
  let internal_POSIX_RAW_SOCKETS* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:176:9
when cast[clong](200809'i64) is static:
  const
    internal_POSIX2_CHAR_TERM* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:179:9
else:
  let internal_POSIX2_CHAR_TERM* = cast[clong](200809'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:179:9
when -1 is static:
  const
    internal_POSIX_SPORADIC_SERVER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:182:9
else:
  let internal_POSIX_SPORADIC_SERVER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:182:9
when -1 is static:
  const
    internal_POSIX_THREAD_SPORADIC_SERVER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:183:9
else:
  let internal_POSIX_THREAD_SPORADIC_SERVER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:183:9
when -1 is static:
  const
    internal_POSIX_TRACE* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:186:9
else:
  let internal_POSIX_TRACE* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:186:9
when -1 is static:
  const
    internal_POSIX_TRACE_EVENT_FILTER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:187:9
else:
  let internal_POSIX_TRACE_EVENT_FILTER* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:187:9
when -1 is static:
  const
    internal_POSIX_TRACE_INHERIT* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:188:9
else:
  let internal_POSIX_TRACE_INHERIT* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:188:9
when -1 is static:
  const
    internal_POSIX_TRACE_LOG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:189:9
else:
  let internal_POSIX_TRACE_LOG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:189:9
when -1 is static:
  const
    internal_POSIX_TYPED_MEMORY_OBJECTS* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:192:9
else:
  let internal_POSIX_TYPED_MEMORY_OBJECTS* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/posix_opt.h:192:9
when -1 is static:
  const
    internal_POSIX_V7_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:45:10
else:
  let internal_POSIX_V7_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:45:10
when -1 is static:
  const
    internal_POSIX_V7_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:46:10
else:
  let internal_POSIX_V7_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:46:10
when -1 is static:
  const
    internal_POSIX_V6_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:47:10
else:
  let internal_POSIX_V6_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:47:10
when -1 is static:
  const
    internal_POSIX_V6_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:48:10
else:
  let internal_POSIX_V6_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:48:10
when -1 is static:
  const
    internal_XBS5_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:49:10
else:
  let internal_XBS5_ILP32_OFF32* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:49:10
when -1 is static:
  const
    internal_XBS5_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:50:10
else:
  let internal_XBS5_ILP32_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:50:10
when -1 is static:
  const
    internal_POSIX_V7_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:53:10
else:
  let internal_POSIX_V7_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:53:10
when -1 is static:
  const
    internal_POSIX_V6_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:54:10
else:
  let internal_POSIX_V6_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:54:10
when -1 is static:
  const
    internal_XBS5_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:55:10
else:
  let internal_XBS5_LPBIG_OFFBIG* = -1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:55:10
when 1 is static:
  const
    internal_POSIX_V7_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:58:10
else:
  let internal_POSIX_V7_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:58:10
when 1 is static:
  const
    internal_POSIX_V6_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:59:10
else:
  let internal_POSIX_V6_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:59:10
when 1 is static:
  const
    internal_XBS5_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:60:10
else:
  let internal_XBS5_LP64_OFF64* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/environments.h:60:10
when 0 is static:
  const
    STDIN_FILENO* = 0        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:210:9
else:
  let STDIN_FILENO* = 0      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:210:9
when 1 is static:
  const
    STDOUT_FILENO* = 1       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:211:9
else:
  let STDOUT_FILENO* = 1     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:211:9
when 2 is static:
  const
    STDERR_FILENO* = 2       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:212:9
else:
  let STDERR_FILENO* = 2     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:212:9
when 4 is static:
  const
    R_OK* = 4                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:281:9
else:
  let R_OK* = 4              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:281:9
when 2 is static:
  const
    W_OK* = 2                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:282:9
else:
  let W_OK* = 2              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:282:9
when 1 is static:
  const
    X_OK* = 1                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:283:9
else:
  let X_OK* = 1              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:283:9
when 0 is static:
  const
    F_OK* = 0                ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:284:9
else:
  let F_OK* = 0              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:284:9
when SEEK_SET is typedesc:
  type
    L_SET* = SEEK_SET        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:327:10
else:
  when SEEK_SET is static:
    const
      L_SET* = SEEK_SET      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:327:10
  else:
    let L_SET* = SEEK_SET    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:327:10
when SEEK_CUR is typedesc:
  type
    L_INCR* = SEEK_CUR       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:328:10
else:
  when SEEK_CUR is static:
    const
      L_INCR* = SEEK_CUR     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:328:10
  else:
    let L_INCR* = SEEK_CUR   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:328:10
when SEEK_END is typedesc:
  type
    L_XTND* = SEEK_END       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:329:10
else:
  when SEEK_END is static:
    const
      L_XTND* = SEEK_END     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:329:10
  else:
    let L_XTND* = SEEK_END   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:329:10
when internal_SC_PAGESIZE is typedesc:
  type
    internal_SC_PAGE_SIZE_const* = internal_SC_PAGESIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:135:9
else:
  when internal_SC_PAGESIZE is static:
    const
      internal_SC_PAGE_SIZE_const* = internal_SC_PAGESIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:135:9
  else:
    let internal_SC_PAGE_SIZE_const* = internal_SC_PAGESIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:135:9
when internal_CS_V6_WIDTH_RESTRICTED_ENVS is typedesc:
  type
    internal_CS_POSIX_V6_WIDTH_RESTRICTED_ENVS* = internal_CS_V6_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:546:9
else:
  when internal_CS_V6_WIDTH_RESTRICTED_ENVS is static:
    const
      internal_CS_POSIX_V6_WIDTH_RESTRICTED_ENVS* = internal_CS_V6_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:546:9
  else:
    let internal_CS_POSIX_V6_WIDTH_RESTRICTED_ENVS* = internal_CS_V6_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:546:9
when internal_CS_V5_WIDTH_RESTRICTED_ENVS is typedesc:
  type
    internal_CS_POSIX_V5_WIDTH_RESTRICTED_ENVS* = internal_CS_V5_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:555:9
else:
  when internal_CS_V5_WIDTH_RESTRICTED_ENVS is static:
    const
      internal_CS_POSIX_V5_WIDTH_RESTRICTED_ENVS* = internal_CS_V5_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:555:9
  else:
    let internal_CS_POSIX_V5_WIDTH_RESTRICTED_ENVS* = internal_CS_V5_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:555:9
when internal_CS_V7_WIDTH_RESTRICTED_ENVS is typedesc:
  type
    internal_CS_POSIX_V7_WIDTH_RESTRICTED_ENVS* = internal_CS_V7_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:559:9
else:
  when internal_CS_V7_WIDTH_RESTRICTED_ENVS is static:
    const
      internal_CS_POSIX_V7_WIDTH_RESTRICTED_ENVS* = internal_CS_V7_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:559:9
  else:
    let internal_CS_POSIX_V7_WIDTH_RESTRICTED_ENVS* = internal_CS_V7_WIDTH_RESTRICTED_ENVS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/confname.h:559:9
when 1 is static:
  const
    internal_GETOPT_POSIX_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/getopt_posix.h:21:9
else:
  let internal_GETOPT_POSIX_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/getopt_posix.h:21:9
when 1 is static:
  const
    internal_GETOPT_CORE_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/getopt_core.h:21:9
else:
  let internal_GETOPT_CORE_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/getopt_core.h:21:9
when 0 is static:
  const
    F_ULOCK* = 0             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1108:10
else:
  let F_ULOCK* = 0           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1108:10
when 1 is static:
  const
    F_LOCK* = 1              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1109:10
else:
  let F_LOCK* = 1            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1109:10
when 2 is static:
  const
    F_TLOCK* = 2             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1110:10
else:
  let F_TLOCK* = 2           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1110:10
when 3 is static:
  const
    F_TEST* = 3              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1111:10
else:
  let F_TEST* = 3            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/unistd.h:1111:10
when 1 is static:
  const
    internal_SYS_SOCKET_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/socket.h:20:9
else:
  let internal_SYS_SOCKET_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/socket.h:20:9
when 1 is static:
  const
    compiler_iovec_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_iovec.h:20:9
else:
  let compiler_iovec_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_iovec.h:20:9
when 1 is static:
  const
    internal_SYS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:23:9
else:
  let internal_SYS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:23:9
when 1 is static:
  const
    compiler_clock_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clock_t.h:2:9
else:
  let compiler_clock_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clock_t.h:2:9
when 1 is static:
  const
    compiler_clockid_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clockid_t.h:2:9
else:
  let compiler_clockid_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/clockid_t.h:2:9
when 1 is static:
  const
    compiler_time_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/time_t.h:2:9
else:
  let compiler_time_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/time_t.h:2:9
when 1 is static:
  const
    compiler_timer_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/timer_t.h:2:9
else:
  let compiler_timer_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/timer_t.h:2:9
when 1 is static:
  const
    compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:171:9
else:
  let compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:171:9
when 1 is static:
  const
    internal_ENDIAN_H* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:19:9
else:
  let internal_ENDIAN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:19:9
when 1 is static:
  const
    internal_BITS_ENDIAN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:20:9
else:
  let internal_BITS_ENDIAN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:20:9
when 1234 is static:
  const
    compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:30:9
else:
  let compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:30:9
when 4321 is static:
  const
    compiler_BIG_ENDIAN* = 4321 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:31:9
else:
  let compiler_BIG_ENDIAN* = 4321 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:31:9
when 3412 is static:
  const
    compiler_PDP_ENDIAN* = 3412 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:32:9
else:
  let compiler_PDP_ENDIAN* = 3412 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endian.h:32:9
when 1 is static:
  const
    internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endianness.h:2:9
else:
  let internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endianness.h:2:9
when compiler_LITTLE_ENDIAN is typedesc:
  type
    compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endianness.h:12:10
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endianness.h:12:10
  else:
    let compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/endianness.h:12:10
when compiler_LITTLE_ENDIAN is typedesc:
  type
    LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:27:10
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:27:10
  else:
    let LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:27:10
when compiler_BIG_ENDIAN is typedesc:
  type
    BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:28:10
else:
  when compiler_BIG_ENDIAN is static:
    const
      BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:28:10
  else:
    let BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:28:10
when compiler_PDP_ENDIAN is typedesc:
  type
    PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:29:10
else:
  when compiler_PDP_ENDIAN is static:
    const
      PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:29:10
  else:
    let PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/endian.h:29:10
when 1 is static:
  const
    internal_BITS_BYTESWAP_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/byteswap.h:24:9
else:
  let internal_BITS_BYTESWAP_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/byteswap.h:24:9
when 1 is static:
  const
    internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/uintn-identity.h:24:9
else:
  let internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/uintn-identity.h:24:9
when 1 is static:
  const
    internal_SYS_SELECT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:22:9
else:
  let internal_SYS_SELECT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:22:9
when 1 is static:
  const
    compiler_sigset_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/sigset_t.h:2:9
else:
  let compiler_sigset_t_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/sigset_t.h:2:9
when 1 is static:
  const
    compiler_timeval_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timeval.h:2:9
else:
  let compiler_timeval_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timeval.h:2:9
when 1 is static:
  const
    internal_STRUCT_TIMESPEC* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timespec.h:3:9
else:
  let internal_STRUCT_TIMESPEC* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_timespec.h:3:9
when compiler_FD_SETSIZE is typedesc:
  type
    FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:73:9
else:
  when compiler_FD_SETSIZE is static:
    const
      FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:73:9
  else:
    let FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/select.h:73:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:20:10
else:
  let internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:20:10
when 1 is static:
  const
    internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:20:9
else:
  let internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/thread-shared-types.h:20:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:20:9
else:
  let internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:20:9
when 64 is static:
  const
    compiler_SIZEOF_PTHREAD_ATTR_T* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:33:10
else:
  let compiler_SIZEOF_PTHREAD_ATTR_T* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:33:10
when 48 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEX_T* = 48 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:34:10
else:
  let compiler_SIZEOF_PTHREAD_MUTEX_T* = 48 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:34:10
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:35:10
else:
  let compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:35:10
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_CONDATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:36:10
else:
  let compiler_SIZEOF_PTHREAD_CONDATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:36:10
when 56 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:37:10
else:
  let compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:37:10
when 32 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:38:10
else:
  let compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:38:10
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:39:10
else:
  let compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:39:10
when 48 is static:
  const
    compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:41:9
else:
  let compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:41:9
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:42:9
else:
  let compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes-arch.h:42:9
when 1 is static:
  const
    internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_mutex.h:20:9
else:
  let internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_mutex.h:20:9
when 1 is static:
  const
    compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_mutex.h:65:10
else:
  let compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/struct_mutex.h:65:10
when 1 is static:
  const
    compiler_have_pthread_attr_t* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:63:10
else:
  let compiler_have_pthread_attr_t* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/pthreadtypes.h:63:10
when 0 is static:
  const
    PF_UNSPEC* = 0           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:41:9
else:
  let PF_UNSPEC* = 0         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:41:9
when 1 is static:
  const
    PF_LOCAL* = 1            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:42:9
else:
  let PF_LOCAL* = 1          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:42:9
when PF_LOCAL is typedesc:
  type
    PF_UNIX* = PF_LOCAL      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:43:9
else:
  when PF_LOCAL is static:
    const
      PF_UNIX* = PF_LOCAL    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:43:9
  else:
    let PF_UNIX* = PF_LOCAL  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:43:9
when PF_LOCAL is typedesc:
  type
    PF_FILE* = PF_LOCAL      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:44:9
else:
  when PF_LOCAL is static:
    const
      PF_FILE* = PF_LOCAL    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:44:9
  else:
    let PF_FILE* = PF_LOCAL  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:44:9
when 2 is static:
  const
    PF_INET* = 2             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:45:9
else:
  let PF_INET* = 2           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:45:9
when 3 is static:
  const
    PF_AX25* = 3             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:46:9
else:
  let PF_AX25* = 3           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:46:9
when 4 is static:
  const
    PF_IPX* = 4              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:47:9
else:
  let PF_IPX* = 4            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:47:9
when 5 is static:
  const
    PF_APPLETALK* = 5        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:48:9
else:
  let PF_APPLETALK* = 5      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:48:9
when 6 is static:
  const
    PF_NETROM* = 6           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:49:9
else:
  let PF_NETROM* = 6         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:49:9
when 7 is static:
  const
    PF_BRIDGE* = 7           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:50:9
else:
  let PF_BRIDGE* = 7         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:50:9
when 8 is static:
  const
    PF_ATMPVC* = 8           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:51:9
else:
  let PF_ATMPVC* = 8         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:51:9
when 9 is static:
  const
    PF_X25* = 9              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:52:9
else:
  let PF_X25* = 9            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:52:9
when 10 is static:
  const
    PF_INET6* = 10           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:53:9
else:
  let PF_INET6* = 10         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:53:9
when 11 is static:
  const
    PF_ROSE* = 11            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:54:9
else:
  let PF_ROSE* = 11          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:54:9
when 12 is static:
  const
    PF_DECnet* = 12          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:55:9
else:
  let PF_DECnet* = 12        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:55:9
when 13 is static:
  const
    PF_NETBEUI* = 13         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:56:9
else:
  let PF_NETBEUI* = 13       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:56:9
when 14 is static:
  const
    PF_SECURITY* = 14        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:57:9
else:
  let PF_SECURITY* = 14      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:57:9
when 15 is static:
  const
    PF_KEY* = 15             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:58:9
else:
  let PF_KEY* = 15           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:58:9
when 16 is static:
  const
    PF_NETLINK* = 16         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:59:9
else:
  let PF_NETLINK* = 16       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:59:9
when PF_NETLINK is typedesc:
  type
    PF_ROUTE* = PF_NETLINK   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:60:9
else:
  when PF_NETLINK is static:
    const
      PF_ROUTE* = PF_NETLINK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:60:9
  else:
    let PF_ROUTE* = PF_NETLINK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:60:9
when 17 is static:
  const
    PF_PACKET* = 17          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:61:9
else:
  let PF_PACKET* = 17        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:61:9
when 18 is static:
  const
    PF_ASH* = 18             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:62:9
else:
  let PF_ASH* = 18           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:62:9
when 19 is static:
  const
    PF_ECONET* = 19          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:63:9
else:
  let PF_ECONET* = 19        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:63:9
when 20 is static:
  const
    PF_ATMSVC* = 20          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:64:9
else:
  let PF_ATMSVC* = 20        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:64:9
when 21 is static:
  const
    PF_RDS* = 21             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:65:9
else:
  let PF_RDS* = 21           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:65:9
when 22 is static:
  const
    PF_SNA* = 22             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:66:9
else:
  let PF_SNA* = 22           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:66:9
when 23 is static:
  const
    PF_IRDA* = 23            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:67:9
else:
  let PF_IRDA* = 23          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:67:9
when 24 is static:
  const
    PF_PPPOX* = 24           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:68:9
else:
  let PF_PPPOX* = 24         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:68:9
when 25 is static:
  const
    PF_WANPIPE* = 25         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:69:9
else:
  let PF_WANPIPE* = 25       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:69:9
when 26 is static:
  const
    PF_LLC* = 26             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:70:9
else:
  let PF_LLC* = 26           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:70:9
when 27 is static:
  const
    PF_IB* = 27              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:71:9
else:
  let PF_IB* = 27            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:71:9
when 28 is static:
  const
    PF_MPLS* = 28            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:72:9
else:
  let PF_MPLS* = 28          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:72:9
when 29 is static:
  const
    PF_CAN* = 29             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:73:9
else:
  let PF_CAN* = 29           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:73:9
when 30 is static:
  const
    PF_TIPC* = 30            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:74:9
else:
  let PF_TIPC* = 30          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:74:9
when 31 is static:
  const
    PF_BLUETOOTH* = 31       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:75:9
else:
  let PF_BLUETOOTH* = 31     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:75:9
when 32 is static:
  const
    PF_IUCV* = 32            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:76:9
else:
  let PF_IUCV* = 32          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:76:9
when 33 is static:
  const
    PF_RXRPC* = 33           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:77:9
else:
  let PF_RXRPC* = 33         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:77:9
when 34 is static:
  const
    PF_ISDN* = 34            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:78:9
else:
  let PF_ISDN* = 34          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:78:9
when 35 is static:
  const
    PF_PHONET* = 35          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:79:9
else:
  let PF_PHONET* = 35        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:79:9
when 36 is static:
  const
    PF_IEEE802154* = 36      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:80:9
else:
  let PF_IEEE802154* = 36    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:80:9
when 37 is static:
  const
    PF_CAIF* = 37            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:81:9
else:
  let PF_CAIF* = 37          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:81:9
when 38 is static:
  const
    PF_ALG* = 38             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:82:9
else:
  let PF_ALG* = 38           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:82:9
when 39 is static:
  const
    PF_NFC* = 39             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:83:9
else:
  let PF_NFC* = 39           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:83:9
when 40 is static:
  const
    PF_VSOCK* = 40           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:84:9
else:
  let PF_VSOCK* = 40         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:84:9
when 41 is static:
  const
    PF_KCM* = 41             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:85:9
else:
  let PF_KCM* = 41           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:85:9
when 42 is static:
  const
    PF_QIPCRTR* = 42         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:86:9
else:
  let PF_QIPCRTR* = 42       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:86:9
when 43 is static:
  const
    PF_SMC* = 43             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:87:9
else:
  let PF_SMC* = 43           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:87:9
when 44 is static:
  const
    PF_XDP* = 44             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:88:9
else:
  let PF_XDP* = 44           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:88:9
when 45 is static:
  const
    PF_MCTP* = 45            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:89:9
else:
  let PF_MCTP* = 45          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:89:9
when 46 is static:
  const
    PF_MAX* = 46             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:90:9
else:
  let PF_MAX* = 46           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:90:9
when PF_UNSPEC is typedesc:
  type
    AF_UNSPEC* = PF_UNSPEC   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:93:9
else:
  when PF_UNSPEC is static:
    const
      AF_UNSPEC* = PF_UNSPEC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:93:9
  else:
    let AF_UNSPEC* = PF_UNSPEC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:93:9
when PF_LOCAL is typedesc:
  type
    AF_LOCAL* = PF_LOCAL     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:94:9
else:
  when PF_LOCAL is static:
    const
      AF_LOCAL* = PF_LOCAL   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:94:9
  else:
    let AF_LOCAL* = PF_LOCAL ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:94:9
when PF_INET is typedesc:
  type
    AF_INET* = PF_INET       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:97:9
else:
  when PF_INET is static:
    const
      AF_INET* = PF_INET     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:97:9
  else:
    let AF_INET* = PF_INET   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:97:9
when PF_AX25 is typedesc:
  type
    AF_AX25* = PF_AX25       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:98:9
else:
  when PF_AX25 is static:
    const
      AF_AX25* = PF_AX25     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:98:9
  else:
    let AF_AX25* = PF_AX25   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:98:9
when PF_IPX is typedesc:
  type
    AF_IPX* = PF_IPX         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:99:9
else:
  when PF_IPX is static:
    const
      AF_IPX* = PF_IPX       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:99:9
  else:
    let AF_IPX* = PF_IPX     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:99:9
when PF_APPLETALK is typedesc:
  type
    AF_APPLETALK* = PF_APPLETALK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:100:9
else:
  when PF_APPLETALK is static:
    const
      AF_APPLETALK* = PF_APPLETALK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:100:9
  else:
    let AF_APPLETALK* = PF_APPLETALK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:100:9
when PF_NETROM is typedesc:
  type
    AF_NETROM* = PF_NETROM   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:101:9
else:
  when PF_NETROM is static:
    const
      AF_NETROM* = PF_NETROM ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:101:9
  else:
    let AF_NETROM* = PF_NETROM ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:101:9
when PF_BRIDGE is typedesc:
  type
    AF_BRIDGE* = PF_BRIDGE   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:102:9
else:
  when PF_BRIDGE is static:
    const
      AF_BRIDGE* = PF_BRIDGE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:102:9
  else:
    let AF_BRIDGE* = PF_BRIDGE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:102:9
when PF_ATMPVC is typedesc:
  type
    AF_ATMPVC* = PF_ATMPVC   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:103:9
else:
  when PF_ATMPVC is static:
    const
      AF_ATMPVC* = PF_ATMPVC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:103:9
  else:
    let AF_ATMPVC* = PF_ATMPVC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:103:9
when PF_X25 is typedesc:
  type
    AF_X25* = PF_X25         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:104:9
else:
  when PF_X25 is static:
    const
      AF_X25* = PF_X25       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:104:9
  else:
    let AF_X25* = PF_X25     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:104:9
when PF_INET6 is typedesc:
  type
    AF_INET6* = PF_INET6     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:105:9
else:
  when PF_INET6 is static:
    const
      AF_INET6* = PF_INET6   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:105:9
  else:
    let AF_INET6* = PF_INET6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:105:9
when PF_ROSE is typedesc:
  type
    AF_ROSE* = PF_ROSE       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:106:9
else:
  when PF_ROSE is static:
    const
      AF_ROSE* = PF_ROSE     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:106:9
  else:
    let AF_ROSE* = PF_ROSE   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:106:9
when PF_DECnet is typedesc:
  type
    AF_DECnet* = PF_DECnet   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:107:9
else:
  when PF_DECnet is static:
    const
      AF_DECnet* = PF_DECnet ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:107:9
  else:
    let AF_DECnet* = PF_DECnet ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:107:9
when PF_NETBEUI is typedesc:
  type
    AF_NETBEUI* = PF_NETBEUI ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:108:9
else:
  when PF_NETBEUI is static:
    const
      AF_NETBEUI* = PF_NETBEUI ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:108:9
  else:
    let AF_NETBEUI* = PF_NETBEUI ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:108:9
when PF_SECURITY is typedesc:
  type
    AF_SECURITY* = PF_SECURITY ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:109:9
else:
  when PF_SECURITY is static:
    const
      AF_SECURITY* = PF_SECURITY ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:109:9
  else:
    let AF_SECURITY* = PF_SECURITY ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:109:9
when PF_KEY is typedesc:
  type
    AF_KEY* = PF_KEY         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:110:9
else:
  when PF_KEY is static:
    const
      AF_KEY* = PF_KEY       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:110:9
  else:
    let AF_KEY* = PF_KEY     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:110:9
when PF_NETLINK is typedesc:
  type
    AF_NETLINK* = PF_NETLINK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:111:9
else:
  when PF_NETLINK is static:
    const
      AF_NETLINK* = PF_NETLINK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:111:9
  else:
    let AF_NETLINK* = PF_NETLINK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:111:9
when PF_PACKET is typedesc:
  type
    AF_PACKET* = PF_PACKET   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:113:9
else:
  when PF_PACKET is static:
    const
      AF_PACKET* = PF_PACKET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:113:9
  else:
    let AF_PACKET* = PF_PACKET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:113:9
when PF_ASH is typedesc:
  type
    AF_ASH* = PF_ASH         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:114:9
else:
  when PF_ASH is static:
    const
      AF_ASH* = PF_ASH       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:114:9
  else:
    let AF_ASH* = PF_ASH     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:114:9
when PF_ECONET is typedesc:
  type
    AF_ECONET* = PF_ECONET   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:115:9
else:
  when PF_ECONET is static:
    const
      AF_ECONET* = PF_ECONET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:115:9
  else:
    let AF_ECONET* = PF_ECONET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:115:9
when PF_ATMSVC is typedesc:
  type
    AF_ATMSVC* = PF_ATMSVC   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:116:9
else:
  when PF_ATMSVC is static:
    const
      AF_ATMSVC* = PF_ATMSVC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:116:9
  else:
    let AF_ATMSVC* = PF_ATMSVC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:116:9
when PF_RDS is typedesc:
  type
    AF_RDS* = PF_RDS         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:117:9
else:
  when PF_RDS is static:
    const
      AF_RDS* = PF_RDS       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:117:9
  else:
    let AF_RDS* = PF_RDS     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:117:9
when PF_SNA is typedesc:
  type
    AF_SNA* = PF_SNA         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:118:9
else:
  when PF_SNA is static:
    const
      AF_SNA* = PF_SNA       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:118:9
  else:
    let AF_SNA* = PF_SNA     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:118:9
when PF_IRDA is typedesc:
  type
    AF_IRDA* = PF_IRDA       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:119:9
else:
  when PF_IRDA is static:
    const
      AF_IRDA* = PF_IRDA     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:119:9
  else:
    let AF_IRDA* = PF_IRDA   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:119:9
when PF_PPPOX is typedesc:
  type
    AF_PPPOX* = PF_PPPOX     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:120:9
else:
  when PF_PPPOX is static:
    const
      AF_PPPOX* = PF_PPPOX   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:120:9
  else:
    let AF_PPPOX* = PF_PPPOX ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:120:9
when PF_WANPIPE is typedesc:
  type
    AF_WANPIPE* = PF_WANPIPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:121:9
else:
  when PF_WANPIPE is static:
    const
      AF_WANPIPE* = PF_WANPIPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:121:9
  else:
    let AF_WANPIPE* = PF_WANPIPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:121:9
when PF_LLC is typedesc:
  type
    AF_LLC* = PF_LLC         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:122:9
else:
  when PF_LLC is static:
    const
      AF_LLC* = PF_LLC       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:122:9
  else:
    let AF_LLC* = PF_LLC     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:122:9
when PF_IB is typedesc:
  type
    AF_IB* = PF_IB           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:123:9
else:
  when PF_IB is static:
    const
      AF_IB* = PF_IB         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:123:9
  else:
    let AF_IB* = PF_IB       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:123:9
when PF_MPLS is typedesc:
  type
    AF_MPLS* = PF_MPLS       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:124:9
else:
  when PF_MPLS is static:
    const
      AF_MPLS* = PF_MPLS     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:124:9
  else:
    let AF_MPLS* = PF_MPLS   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:124:9
when PF_CAN is typedesc:
  type
    AF_CAN* = PF_CAN         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:125:9
else:
  when PF_CAN is static:
    const
      AF_CAN* = PF_CAN       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:125:9
  else:
    let AF_CAN* = PF_CAN     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:125:9
when PF_TIPC is typedesc:
  type
    AF_TIPC* = PF_TIPC       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:126:9
else:
  when PF_TIPC is static:
    const
      AF_TIPC* = PF_TIPC     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:126:9
  else:
    let AF_TIPC* = PF_TIPC   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:126:9
when PF_BLUETOOTH is typedesc:
  type
    AF_BLUETOOTH* = PF_BLUETOOTH ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:127:9
else:
  when PF_BLUETOOTH is static:
    const
      AF_BLUETOOTH* = PF_BLUETOOTH ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:127:9
  else:
    let AF_BLUETOOTH* = PF_BLUETOOTH ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:127:9
when PF_IUCV is typedesc:
  type
    AF_IUCV* = PF_IUCV       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:128:9
else:
  when PF_IUCV is static:
    const
      AF_IUCV* = PF_IUCV     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:128:9
  else:
    let AF_IUCV* = PF_IUCV   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:128:9
when PF_RXRPC is typedesc:
  type
    AF_RXRPC* = PF_RXRPC     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:129:9
else:
  when PF_RXRPC is static:
    const
      AF_RXRPC* = PF_RXRPC   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:129:9
  else:
    let AF_RXRPC* = PF_RXRPC ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:129:9
when PF_ISDN is typedesc:
  type
    AF_ISDN* = PF_ISDN       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:130:9
else:
  when PF_ISDN is static:
    const
      AF_ISDN* = PF_ISDN     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:130:9
  else:
    let AF_ISDN* = PF_ISDN   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:130:9
when PF_PHONET is typedesc:
  type
    AF_PHONET* = PF_PHONET   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:131:9
else:
  when PF_PHONET is static:
    const
      AF_PHONET* = PF_PHONET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:131:9
  else:
    let AF_PHONET* = PF_PHONET ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:131:9
when PF_IEEE802154 is typedesc:
  type
    AF_IEEE802154* = PF_IEEE802154 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:132:9
else:
  when PF_IEEE802154 is static:
    const
      AF_IEEE802154* = PF_IEEE802154 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:132:9
  else:
    let AF_IEEE802154* = PF_IEEE802154 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:132:9
when PF_CAIF is typedesc:
  type
    AF_CAIF* = PF_CAIF       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:133:9
else:
  when PF_CAIF is static:
    const
      AF_CAIF* = PF_CAIF     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:133:9
  else:
    let AF_CAIF* = PF_CAIF   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:133:9
when PF_ALG is typedesc:
  type
    AF_ALG* = PF_ALG         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:134:9
else:
  when PF_ALG is static:
    const
      AF_ALG* = PF_ALG       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:134:9
  else:
    let AF_ALG* = PF_ALG     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:134:9
when PF_NFC is typedesc:
  type
    AF_NFC* = PF_NFC         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:135:9
else:
  when PF_NFC is static:
    const
      AF_NFC* = PF_NFC       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:135:9
  else:
    let AF_NFC* = PF_NFC     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:135:9
when PF_VSOCK is typedesc:
  type
    AF_VSOCK* = PF_VSOCK     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:136:9
else:
  when PF_VSOCK is static:
    const
      AF_VSOCK* = PF_VSOCK   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:136:9
  else:
    let AF_VSOCK* = PF_VSOCK ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:136:9
when PF_KCM is typedesc:
  type
    AF_KCM* = PF_KCM         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:137:9
else:
  when PF_KCM is static:
    const
      AF_KCM* = PF_KCM       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:137:9
  else:
    let AF_KCM* = PF_KCM     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:137:9
when PF_QIPCRTR is typedesc:
  type
    AF_QIPCRTR* = PF_QIPCRTR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:138:9
else:
  when PF_QIPCRTR is static:
    const
      AF_QIPCRTR* = PF_QIPCRTR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:138:9
  else:
    let AF_QIPCRTR* = PF_QIPCRTR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:138:9
when PF_SMC is typedesc:
  type
    AF_SMC* = PF_SMC         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:139:9
else:
  when PF_SMC is static:
    const
      AF_SMC* = PF_SMC       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:139:9
  else:
    let AF_SMC* = PF_SMC     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:139:9
when PF_XDP is typedesc:
  type
    AF_XDP* = PF_XDP         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:140:9
else:
  when PF_XDP is static:
    const
      AF_XDP* = PF_XDP       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:140:9
  else:
    let AF_XDP* = PF_XDP     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:140:9
when PF_MCTP is typedesc:
  type
    AF_MCTP* = PF_MCTP       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:141:9
else:
  when PF_MCTP is static:
    const
      AF_MCTP* = PF_MCTP     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:141:9
  else:
    let AF_MCTP* = PF_MCTP   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:141:9
when PF_MAX is typedesc:
  type
    AF_MAX* = PF_MAX         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:142:9
else:
  when PF_MAX is static:
    const
      AF_MAX* = PF_MAX       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:142:9
  else:
    let AF_MAX* = PF_MAX     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:142:9
when 255 is static:
  const
    SOL_RAW* = 255           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:148:9
else:
  let SOL_RAW* = 255         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:148:9
when 261 is static:
  const
    SOL_DECNET* = 261        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:149:9
else:
  let SOL_DECNET* = 261      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:149:9
when 262 is static:
  const
    SOL_X25* = 262           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:150:9
else:
  let SOL_X25* = 262         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:150:9
when 263 is static:
  const
    SOL_PACKET* = 263        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:151:9
else:
  let SOL_PACKET* = 263      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:151:9
when 264 is static:
  const
    SOL_ATM* = 264           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:152:9
else:
  let SOL_ATM* = 264         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:152:9
when 265 is static:
  const
    SOL_AAL* = 265           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:153:9
else:
  let SOL_AAL* = 265         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:153:9
when 266 is static:
  const
    SOL_IRDA* = 266          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:154:9
else:
  let SOL_IRDA* = 266        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:154:9
when 267 is static:
  const
    SOL_NETBEUI* = 267       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:155:9
else:
  let SOL_NETBEUI* = 267     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:155:9
when 268 is static:
  const
    SOL_LLC* = 268           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:156:9
else:
  let SOL_LLC* = 268         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:156:9
when 269 is static:
  const
    SOL_DCCP* = 269          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:157:9
else:
  let SOL_DCCP* = 269        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:157:9
when 270 is static:
  const
    SOL_NETLINK* = 270       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:158:9
else:
  let SOL_NETLINK* = 270     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:158:9
when 271 is static:
  const
    SOL_TIPC* = 271          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:159:9
else:
  let SOL_TIPC* = 271        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:159:9
when 272 is static:
  const
    SOL_RXRPC* = 272         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:160:9
else:
  let SOL_RXRPC* = 272       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:160:9
when 273 is static:
  const
    SOL_PPPOL2TP* = 273      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:161:9
else:
  let SOL_PPPOL2TP* = 273    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:161:9
when 274 is static:
  const
    SOL_BLUETOOTH* = 274     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:162:9
else:
  let SOL_BLUETOOTH* = 274   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:162:9
when 275 is static:
  const
    SOL_PNPIPE* = 275        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:163:9
else:
  let SOL_PNPIPE* = 275      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:163:9
when 276 is static:
  const
    SOL_RDS* = 276           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:164:9
else:
  let SOL_RDS* = 276         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:164:9
when 277 is static:
  const
    SOL_IUCV* = 277          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:165:9
else:
  let SOL_IUCV* = 277        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:165:9
when 278 is static:
  const
    SOL_CAIF* = 278          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:166:9
else:
  let SOL_CAIF* = 278        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:166:9
when 279 is static:
  const
    SOL_ALG* = 279           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:167:9
else:
  let SOL_ALG* = 279         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:167:9
when 280 is static:
  const
    SOL_NFC* = 280           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:168:9
else:
  let SOL_NFC* = 280         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:168:9
when 281 is static:
  const
    SOL_KCM* = 281           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:169:9
else:
  let SOL_KCM* = 281         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:169:9
when 282 is static:
  const
    SOL_TLS* = 282           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:170:9
else:
  let SOL_TLS* = 282         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:170:9
when 283 is static:
  const
    SOL_XDP* = 283           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:171:9
else:
  let SOL_XDP* = 283         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:171:9
when 284 is static:
  const
    SOL_MPTCP* = 284         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:172:9
else:
  let SOL_MPTCP* = 284       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:172:9
when 285 is static:
  const
    SOL_MCTP* = 285          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:173:9
else:
  let SOL_MCTP* = 285        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:173:9
when 286 is static:
  const
    SOL_SMC* = 286           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:174:9
else:
  let SOL_SMC* = 286         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:174:9
when 287 is static:
  const
    SOL_VSOCK* = 287         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:175:9
else:
  let SOL_VSOCK* = 287       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:175:9
when 4096 is static:
  const
    SOMAXCONN* = 4096        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:178:9
else:
  let SOMAXCONN* = 4096      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:178:9
when 1 is static:
  const
    internal_BITS_SOCKADDR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/sockaddr.h:24:9
else:
  let internal_BITS_SOCKADDR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/sockaddr.h:24:9
when 128 is static:
  const
    internal_SS_SIZE* = 128  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/sockaddr.h:40:9
else:
  let internal_SS_SIZE* = 128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/sockaddr.h:40:9
when 1 is static:
  const
    compiler_osockaddr_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_osockaddr.h:2:9
else:
  let compiler_osockaddr_defined* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/types/struct_osockaddr.h:2:9
when 0 is static:
  const
    MNL_SOCKET_AUTOPID* = 0  ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:19:9
else:
  let MNL_SOCKET_AUTOPID* = 0 ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:19:9
when 32768 is static:
  const
    MNL_SOCKET_DUMP_SIZE* = 32768 ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:21:9
else:
  let MNL_SOCKET_DUMP_SIZE* = 32768 ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:21:9
when 4 is static:
  const
    MNL_ALIGNTO* = 4         ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:41:9
else:
  let MNL_ALIGNTO* = 4       ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:41:9
when -1 is static:
  const
    MNL_CB_ERROR* = -1       ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:172:9
else:
  let MNL_CB_ERROR* = -1     ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:172:9
when 0 is static:
  const
    MNL_CB_STOP* = 0         ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:173:9
else:
  let MNL_CB_STOP* = 0       ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:173:9
when 1 is static:
  const
    MNL_CB_OK* = 1           ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:174:9
else:
  let MNL_CB_OK* = 1         ## Generated based on /nix/store/dmqmym9rm4852wp8ldm14rh852x3nqg6-libmnl-1.0.5/include/libmnl/libmnl.h:174:9
proc remove*(compiler_filename: ptr uint8): cint {.cdecl, importc: "remove".}
proc rename*(compiler_old: ptr uint8; compiler_new: ptr uint8): cint {.cdecl,
    importc: "rename".}
proc renameat*(compiler_oldfd: cint; compiler_old: ptr uint8;
               compiler_newfd: cint; compiler_new: ptr uint8): cint {.cdecl,
    importc: "renameat".}
proc fclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fclose".}
proc tmpfile*(): ptr FILE {.cdecl, importc: "tmpfile".}
proc tmpnam*(a0: array[20'i64, uint8]): ptr uint8 {.cdecl, importc: "tmpnam".}
proc tmpnam_r*(compiler_s: array[20'i64, uint8]): ptr uint8 {.cdecl,
    importc: "tmpnam_r".}
proc tempnam*(compiler_dir: ptr uint8; compiler_pfx: ptr uint8): ptr uint8 {.
    cdecl, importc: "tempnam".}
proc fflush*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fflush".}
proc fflush_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fflush_unlocked".}
proc fopen*(compiler_filename: ptr uint8; compiler_modes: ptr uint8): ptr FILE {.
    cdecl, importc: "fopen".}
proc freopen*(compiler_filename: ptr uint8; compiler_modes: ptr uint8;
              compiler_stream: ptr FILE): ptr FILE {.cdecl, importc: "freopen".}
proc fdopen*(compiler_fd: cint; compiler_modes: ptr uint8): ptr FILE {.cdecl,
    importc: "fdopen".}
proc fopencookie*(compiler_magic_cookie: pointer; compiler_modes: ptr uint8;
                  compiler_io_funcs: cookie_io_functions_t): ptr FILE {.cdecl,
    importc: "fopencookie".}
proc fmemopen*(compiler_s: pointer; compiler_len: csize_t;
               compiler_modes: ptr uint8): ptr FILE {.cdecl, importc: "fmemopen".}
proc open_memstream*(compiler_bufloc: ptr ptr uint8;
                     compiler_sizeloc: ptr csize_t): ptr FILE {.cdecl,
    importc: "open_memstream".}
proc setbuf*(compiler_stream: ptr FILE; compiler_buf: ptr uint8): void {.cdecl,
    importc: "setbuf".}
proc setvbuf*(compiler_stream: ptr FILE; compiler_buf: ptr uint8;
              compiler_modes: cint; compiler_n: csize_t): cint {.cdecl,
    importc: "setvbuf".}
proc setbuffer*(compiler_stream: ptr FILE; compiler_buf: ptr uint8;
                compiler_size: csize_t): void {.cdecl, importc: "setbuffer".}
proc setlinebuf*(compiler_stream: ptr FILE): void {.cdecl, importc: "setlinebuf".}
proc fprintf*(compiler_stream: ptr FILE; compiler_format: ptr uint8): cint {.
    cdecl, varargs, importc: "fprintf".}
proc printf*(compiler_format: ptr uint8): cint {.cdecl, varargs,
    importc: "printf".}
proc sprintf*(compiler_s: ptr uint8; compiler_format: ptr uint8): cint {.cdecl,
    varargs, importc: "sprintf".}
proc vfprintf*(compiler_s: ptr FILE; compiler_format: ptr uint8;
               compiler_arg: compiler_builtin_va_list): cint {.cdecl,
    importc: "vfprintf".}
proc vprintf*(compiler_format: ptr uint8; compiler_arg: compiler_builtin_va_list): cint {.
    cdecl, importc: "vprintf".}
proc vsprintf*(compiler_s: ptr uint8; compiler_format: ptr uint8;
               compiler_arg: compiler_builtin_va_list): cint {.cdecl,
    importc: "vsprintf".}
proc snprintf*(compiler_s: ptr uint8; compiler_maxlen: culong;
               compiler_format: ptr uint8): cint {.cdecl, varargs,
    importc: "snprintf".}
proc vsnprintf*(compiler_s: ptr uint8; compiler_maxlen: culong;
                compiler_format: ptr uint8;
                compiler_arg: compiler_builtin_va_list): cint {.cdecl,
    importc: "vsnprintf".}
proc vasprintf*(compiler_ptr: ptr ptr uint8; compiler_f: ptr uint8;
                compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vasprintf".}
proc compiler_asprintf*(compiler_ptr: ptr ptr uint8; compiler_fmt: ptr uint8): cint {.
    cdecl, varargs, importc: "__asprintf".}
proc asprintf*(compiler_ptr: ptr ptr uint8; compiler_fmt: ptr uint8): cint {.
    cdecl, varargs, importc: "asprintf".}
proc vdprintf*(compiler_fd: cint; compiler_fmt: ptr uint8;
               compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vdprintf".}
proc dprintf*(compiler_fd: cint; compiler_fmt: ptr uint8): cint {.cdecl,
    varargs, importc: "dprintf".}
proc fscanf*(compiler_stream: ptr FILE; compiler_format: ptr uint8): cint {.
    cdecl, varargs, importc: "fscanf".}
proc scanf*(compiler_format: ptr uint8): cint {.cdecl, varargs, importc: "scanf".}
proc sscanf*(compiler_s: ptr uint8; compiler_format: ptr uint8): cint {.cdecl,
    varargs, importc: "sscanf".}
proc vfscanf*(compiler_s: ptr FILE; compiler_format: ptr uint8;
              compiler_arg: compiler_builtin_va_list): cint {.cdecl,
    importc: "vfscanf".}
proc vscanf*(compiler_format: ptr uint8; compiler_arg: compiler_builtin_va_list): cint {.
    cdecl, importc: "vscanf".}
proc vsscanf*(compiler_s: ptr uint8; compiler_format: ptr uint8;
              compiler_arg: compiler_builtin_va_list): cint {.cdecl,
    importc: "vsscanf".}
proc fgetc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fgetc".}
proc getc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getc".}
proc getchar*(): cint {.cdecl, importc: "getchar".}
proc getc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "getc_unlocked".}
proc getchar_unlocked*(): cint {.cdecl, importc: "getchar_unlocked".}
proc fgetc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fgetc_unlocked".}
proc fputc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc".}
proc putc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc".}
proc putchar*(compiler_c: cint): cint {.cdecl, importc: "putchar".}
proc fputc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc_unlocked".}
proc putc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc_unlocked".}
proc putchar_unlocked*(compiler_c: cint): cint {.cdecl,
    importc: "putchar_unlocked".}
proc getw*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getw".}
proc putw*(compiler_w: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putw".}
proc fgets*(compiler_s: ptr uint8; compiler_n: cint; compiler_stream: ptr FILE): ptr uint8 {.
    cdecl, importc: "fgets".}
proc compiler_getdelim*(compiler_lineptr: ptr ptr uint8;
                        compiler_n: ptr csize_t; compiler_delimiter: cint;
                        compiler_stream: ptr FILE): compiler_ssize_t {.cdecl,
    importc: "__getdelim".}
proc getdelim*(compiler_lineptr: ptr ptr uint8; compiler_n: ptr csize_t;
               compiler_delimiter: cint; compiler_stream: ptr FILE): compiler_ssize_t {.
    cdecl, importc: "getdelim".}
proc getline*(compiler_lineptr: ptr ptr uint8; compiler_n: ptr csize_t;
              compiler_stream: ptr FILE): compiler_ssize_t {.cdecl,
    importc: "getline".}
proc fputs*(compiler_s: ptr uint8; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputs".}
proc puts*(compiler_s: ptr uint8): cint {.cdecl, importc: "puts".}
proc ungetc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ungetc".}
proc fread*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
            compiler_stream: ptr FILE): culong {.cdecl, importc: "fread".}
proc fwrite*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
             compiler_s: ptr FILE): culong {.cdecl, importc: "fwrite".}
proc fread_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                     compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fread_unlocked".}
proc fwrite_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                      compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fwrite_unlocked".}
proc fseek*(compiler_stream: ptr FILE; compiler_off: clong;
            compiler_whence: cint): cint {.cdecl, importc: "fseek".}
proc ftell*(compiler_stream: ptr FILE): clong {.cdecl, importc: "ftell".}
proc rewind*(compiler_stream: ptr FILE): void {.cdecl, importc: "rewind".}
proc fseeko*(compiler_stream: ptr FILE; compiler_off: compiler_off_t;
             compiler_whence: cint): cint {.cdecl, importc: "fseeko".}
proc ftello*(compiler_stream: ptr FILE): compiler_off_t {.cdecl,
    importc: "ftello".}
proc fgetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fgetpos".}
proc fsetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fsetpos".}
proc clearerr*(compiler_stream: ptr FILE): void {.cdecl, importc: "clearerr".}
proc feof*(compiler_stream: ptr FILE): cint {.cdecl, importc: "feof".}
proc ferror*(compiler_stream: ptr FILE): cint {.cdecl, importc: "ferror".}
proc clearerr_unlocked*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "clearerr_unlocked".}
proc feof_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "feof_unlocked".}
proc ferror_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ferror_unlocked".}
proc perror*(compiler_s: ptr uint8): void {.cdecl, importc: "perror".}
proc fileno*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fileno".}
proc fileno_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fileno_unlocked".}
proc pclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "pclose".}
proc popen*(compiler_command: ptr uint8; compiler_modes: ptr uint8): ptr FILE {.
    cdecl, importc: "popen".}
proc ctermid*(compiler_s: ptr uint8): ptr uint8 {.cdecl, importc: "ctermid".}
proc flockfile*(compiler_stream: ptr FILE): void {.cdecl, importc: "flockfile".}
proc ftrylockfile*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ftrylockfile".}
proc funlockfile*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "funlockfile".}
proc compiler_uflow*(a0: ptr FILE): cint {.cdecl, importc: "__uflow".}
proc compiler_overflow*(a0: ptr FILE; a1: cint): cint {.cdecl,
    importc: "__overflow".}
proc access*(compiler_name: ptr uint8; compiler_type: cint): cint {.cdecl,
    importc: "access".}
proc faccessat*(compiler_fd: cint; compiler_file: ptr uint8;
                compiler_type: cint; compiler_flag: cint): cint {.cdecl,
    importc: "faccessat".}
proc lseek*(compiler_fd: cint; compiler_offset: compiler_off_t;
            compiler_whence: cint): compiler_off_t {.cdecl, importc: "lseek".}
proc close*(compiler_fd: cint): cint {.cdecl, importc: "close".}
proc closefrom*(compiler_lowfd: cint): void {.cdecl, importc: "closefrom".}
proc read*(compiler_fd: cint; compiler_buf: pointer; compiler_nbytes: csize_t): ssize_t {.
    cdecl, importc: "read".}
proc write*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t): ssize_t {.
    cdecl, importc: "write".}
proc pread*(compiler_fd: cint; compiler_buf: pointer; compiler_nbytes: csize_t;
            compiler_offset: compiler_off_t): ssize_t {.cdecl, importc: "pread".}
proc pwrite*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t;
             compiler_offset: compiler_off_t): ssize_t {.cdecl,
    importc: "pwrite".}
proc pipe*(compiler_pipedes: array[2'i64, cint]): cint {.cdecl, importc: "pipe".}
proc alarm*(compiler_seconds: cuint): cuint {.cdecl, importc: "alarm".}
proc sleep*(compiler_seconds: cuint): cuint {.cdecl, importc: "sleep".}
proc ualarm*(compiler_value: compiler_useconds_t;
             compiler_interval: compiler_useconds_t): compiler_useconds_t {.
    cdecl, importc: "ualarm".}
proc usleep*(compiler_useconds: compiler_useconds_t): cint {.cdecl,
    importc: "usleep".}
proc pause*(): cint {.cdecl, importc: "pause".}
proc chown*(compiler_file: ptr uint8; compiler_owner: compiler_uid_t;
            compiler_group: compiler_gid_t): cint {.cdecl, importc: "chown".}
proc fchown*(compiler_fd: cint; compiler_owner: compiler_uid_t;
             compiler_group: compiler_gid_t): cint {.cdecl, importc: "fchown".}
proc lchown*(compiler_file: ptr uint8; compiler_owner: compiler_uid_t;
             compiler_group: compiler_gid_t): cint {.cdecl, importc: "lchown".}
proc fchownat*(compiler_fd: cint; compiler_file: ptr uint8;
               compiler_owner: compiler_uid_t; compiler_group: compiler_gid_t;
               compiler_flag: cint): cint {.cdecl, importc: "fchownat".}
proc chdir*(compiler_path: ptr uint8): cint {.cdecl, importc: "chdir".}
proc fchdir*(compiler_fd: cint): cint {.cdecl, importc: "fchdir".}
proc getcwd*(compiler_buf: ptr uint8; compiler_size: csize_t): ptr uint8 {.
    cdecl, importc: "getcwd".}
proc getwd*(compiler_buf: ptr uint8): ptr uint8 {.cdecl, importc: "getwd".}
proc dup*(compiler_fd: cint): cint {.cdecl, importc: "dup".}
proc dup2*(compiler_fd: cint; compiler_fd2: cint): cint {.cdecl, importc: "dup2".}
var compiler_environ* {.importc: "__environ".}: ptr ptr uint8
proc execve*(compiler_path: ptr uint8;
             compiler_argv: ptr UncheckedArray[ptr uint8];
             compiler_envp: ptr UncheckedArray[ptr uint8]): cint {.cdecl,
    importc: "execve".}
proc fexecve*(compiler_fd: cint; compiler_argv: ptr UncheckedArray[ptr uint8];
              compiler_envp: ptr UncheckedArray[ptr uint8]): cint {.cdecl,
    importc: "fexecve".}
proc execv*(compiler_path: ptr uint8;
            compiler_argv: ptr UncheckedArray[ptr uint8]): cint {.cdecl,
    importc: "execv".}
proc execle*(compiler_path: ptr uint8; compiler_arg: ptr uint8): cint {.cdecl,
    varargs, importc: "execle".}
proc execl*(compiler_path: ptr uint8; compiler_arg: ptr uint8): cint {.cdecl,
    varargs, importc: "execl".}
proc execvp*(compiler_file: ptr uint8;
             compiler_argv: ptr UncheckedArray[ptr uint8]): cint {.cdecl,
    importc: "execvp".}
proc execlp*(compiler_file: ptr uint8; compiler_arg: ptr uint8): cint {.cdecl,
    varargs, importc: "execlp".}
proc nice*(compiler_inc: cint): cint {.cdecl, importc: "nice".}
proc internal_exit*(compiler_status: cint): void {.cdecl, importc: "_exit".}
proc pathconf*(compiler_path: ptr uint8; compiler_name: cint): clong {.cdecl,
    importc: "pathconf".}
proc fpathconf*(compiler_fd: cint; compiler_name: cint): clong {.cdecl,
    importc: "fpathconf".}
proc sysconf*(compiler_name: cint): clong {.cdecl, importc: "sysconf".}
proc confstr*(compiler_name: cint; compiler_buf: ptr uint8;
              compiler_len: csize_t): csize_t {.cdecl, importc: "confstr".}
proc getpid*(): compiler_pid_t {.cdecl, importc: "getpid".}
proc getppid*(): compiler_pid_t {.cdecl, importc: "getppid".}
proc getpgrp*(): compiler_pid_t {.cdecl, importc: "getpgrp".}
proc compiler_getpgid*(compiler_pid: compiler_pid_t): compiler_pid_t {.cdecl,
    importc: "__getpgid".}
proc getpgid*(compiler_pid: compiler_pid_t): compiler_pid_t {.cdecl,
    importc: "getpgid".}
proc setpgid*(compiler_pid: compiler_pid_t; compiler_pgid: compiler_pid_t): cint {.
    cdecl, importc: "setpgid".}
proc setpgrp*(): cint {.cdecl, importc: "setpgrp".}
proc setsid*(): compiler_pid_t {.cdecl, importc: "setsid".}
proc getsid*(compiler_pid: compiler_pid_t): compiler_pid_t {.cdecl,
    importc: "getsid".}
proc getuid*(): compiler_uid_t {.cdecl, importc: "getuid".}
proc geteuid*(): compiler_uid_t {.cdecl, importc: "geteuid".}
proc getgid*(): compiler_gid_t {.cdecl, importc: "getgid".}
proc getegid*(): compiler_gid_t {.cdecl, importc: "getegid".}
proc getgroups*(compiler_size: cint;
                compiler_list: ptr UncheckedArray[compiler_gid_t]): cint {.
    cdecl, importc: "getgroups".}
proc setuid*(compiler_uid: compiler_uid_t): cint {.cdecl, importc: "setuid".}
proc setreuid*(compiler_ruid: compiler_uid_t; compiler_euid: compiler_uid_t): cint {.
    cdecl, importc: "setreuid".}
proc seteuid*(compiler_uid: compiler_uid_t): cint {.cdecl, importc: "seteuid".}
proc setgid*(compiler_gid: compiler_gid_t): cint {.cdecl, importc: "setgid".}
proc setregid*(compiler_rgid: compiler_gid_t; compiler_egid: compiler_gid_t): cint {.
    cdecl, importc: "setregid".}
proc setegid*(compiler_gid: compiler_gid_t): cint {.cdecl, importc: "setegid".}
proc fork*(): compiler_pid_t {.cdecl, importc: "fork".}
proc vfork*(): cint {.cdecl, importc: "vfork".}
proc ttyname*(compiler_fd: cint): ptr uint8 {.cdecl, importc: "ttyname".}
proc ttyname_r*(compiler_fd: cint; compiler_buf: ptr uint8;
                compiler_buflen: csize_t): cint {.cdecl, importc: "ttyname_r".}
proc isatty*(compiler_fd: cint): cint {.cdecl, importc: "isatty".}
proc ttyslot*(): cint {.cdecl, importc: "ttyslot".}
proc link*(compiler_from: ptr uint8; compiler_to: ptr uint8): cint {.cdecl,
    importc: "link".}
proc linkat*(compiler_fromfd: cint; compiler_from: ptr uint8;
             compiler_tofd: cint; compiler_to: ptr uint8; compiler_flags: cint): cint {.
    cdecl, importc: "linkat".}
proc symlink*(compiler_from: ptr uint8; compiler_to: ptr uint8): cint {.cdecl,
    importc: "symlink".}
proc readlink*(compiler_path: ptr uint8; compiler_buf: ptr uint8;
               compiler_len: csize_t): ssize_t {.cdecl, importc: "readlink".}
proc symlinkat*(compiler_from: ptr uint8; compiler_tofd: cint;
                compiler_to: ptr uint8): cint {.cdecl, importc: "symlinkat".}
proc readlinkat*(compiler_fd: cint; compiler_path: ptr uint8;
                 compiler_buf: ptr uint8; compiler_len: csize_t): ssize_t {.
    cdecl, importc: "readlinkat".}
proc unlink*(compiler_name: ptr uint8): cint {.cdecl, importc: "unlink".}
proc unlinkat*(compiler_fd: cint; compiler_name: ptr uint8; compiler_flag: cint): cint {.
    cdecl, importc: "unlinkat".}
proc rmdir*(compiler_path: ptr uint8): cint {.cdecl, importc: "rmdir".}
proc tcgetpgrp*(compiler_fd: cint): compiler_pid_t {.cdecl, importc: "tcgetpgrp".}
proc tcsetpgrp*(compiler_fd: cint; compiler_pgrp_id: compiler_pid_t): cint {.
    cdecl, importc: "tcsetpgrp".}
proc getlogin*(): ptr uint8 {.cdecl, importc: "getlogin".}
proc getlogin_r*(compiler_name: ptr uint8; compiler_name_len: csize_t): cint {.
    cdecl, importc: "getlogin_r".}
proc setlogin*(compiler_name: ptr uint8): cint {.cdecl, importc: "setlogin".}
var optarg* {.importc: "optarg".}: ptr uint8
var optind* {.importc: "optind".}: cint
var opterr* {.importc: "opterr".}: cint
var optopt* {.importc: "optopt".}: cint
proc getopt*(compiler_argc: cint; compiler_argv: ptr ptr uint8;
             compiler_shortopts: ptr uint8): cint {.cdecl, importc: "getopt".}
proc gethostname*(compiler_name: ptr uint8; compiler_len: csize_t): cint {.
    cdecl, importc: "gethostname".}
proc sethostname*(compiler_name: ptr uint8; compiler_len: csize_t): cint {.
    cdecl, importc: "sethostname".}
proc sethostid*(compiler_id: clong): cint {.cdecl, importc: "sethostid".}
proc getdomainname*(compiler_name: ptr uint8; compiler_len: csize_t): cint {.
    cdecl, importc: "getdomainname".}
proc setdomainname*(compiler_name: ptr uint8; compiler_len: csize_t): cint {.
    cdecl, importc: "setdomainname".}
proc vhangup*(): cint {.cdecl, importc: "vhangup".}
proc revoke*(compiler_file: ptr uint8): cint {.cdecl, importc: "revoke".}
proc profil*(compiler_sample_buffer: ptr cushort; compiler_size: csize_t;
             compiler_offset: csize_t; compiler_scale: cuint): cint {.cdecl,
    importc: "profil".}
proc acct*(compiler_name: ptr uint8): cint {.cdecl, importc: "acct".}
proc getusershell*(): ptr uint8 {.cdecl, importc: "getusershell".}
proc endusershell*(): void {.cdecl, importc: "endusershell".}
proc setusershell*(): void {.cdecl, importc: "setusershell".}
proc daemon*(compiler_nochdir: cint; compiler_noclose: cint): cint {.cdecl,
    importc: "daemon".}
proc chroot*(compiler_path: ptr uint8): cint {.cdecl, importc: "chroot".}
proc getpass*(compiler_prompt: ptr uint8): ptr uint8 {.cdecl, importc: "getpass".}
proc fsync*(compiler_fd: cint): cint {.cdecl, importc: "fsync".}
proc gethostid*(): clong {.cdecl, importc: "gethostid".}
proc sync*(): void {.cdecl, importc: "sync".}
proc getpagesize*(): cint {.cdecl, importc: "getpagesize".}
proc getdtablesize*(): cint {.cdecl, importc: "getdtablesize".}
proc truncate*(compiler_file: ptr uint8; compiler_length: compiler_off_t): cint {.
    cdecl, importc: "truncate".}
proc ftruncate*(compiler_fd: cint; compiler_length: compiler_off_t): cint {.
    cdecl, importc: "ftruncate".}
proc brk*(compiler_addr: pointer): cint {.cdecl, importc: "brk".}
proc sbrk*(compiler_delta: intptr_t): pointer {.cdecl, importc: "sbrk".}
proc syscall*(compiler_sysno: clong): clong {.cdecl, varargs, importc: "syscall".}
proc lockf*(compiler_fd: cint; compiler_cmd: cint; compiler_len: compiler_off_t): cint {.
    cdecl, importc: "lockf".}
proc fdatasync*(compiler_fildes: cint): cint {.cdecl, importc: "fdatasync".}
proc crypt*(compiler_key: ptr uint8; compiler_salt: ptr uint8): ptr uint8 {.
    cdecl, importc: "crypt".}
proc getentropy*(compiler_buffer: pointer; compiler_length: csize_t): cint {.
    cdecl, importc: "getentropy".}
proc select*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
             compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
             compiler_timeout: ptr struct_timeval): cint {.cdecl,
    importc: "select".}
proc pselect*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
              compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
              compiler_timeout: ptr struct_timespec;
              compiler_sigmask: ptr compiler_sigset_t): cint {.cdecl,
    importc: "pselect".}
proc compiler_cmsg_nxthdr*(compiler_mhdr: ptr struct_msghdr;
                           compiler_cmsg: ptr struct_cmsghdr): ptr struct_cmsghdr {.
    cdecl, importc: "__cmsg_nxthdr".}
proc socket*(compiler_domain: cint; compiler_type: cint; compiler_protocol: cint): cint {.
    cdecl, importc: "socket".}
proc socketpair*(compiler_domain: cint; compiler_type: cint;
                 compiler_protocol: cint; compiler_fds: array[2'i64, cint]): cint {.
    cdecl, importc: "socketpair".}
proc bind_proc*(compiler_fd: cint; compiler_addr: ptr struct_sockaddr;
                compiler_len: socklen_t): cint {.cdecl, importc: "bind".}
proc getsockname*(compiler_fd: cint; compiler_addr: ptr struct_sockaddr;
                  compiler_len: ptr socklen_t): cint {.cdecl,
    importc: "getsockname".}
proc connect*(compiler_fd: cint; compiler_addr: ptr struct_sockaddr;
              compiler_len: socklen_t): cint {.cdecl, importc: "connect".}
proc getpeername*(compiler_fd: cint; compiler_addr: ptr struct_sockaddr;
                  compiler_len: ptr socklen_t): cint {.cdecl,
    importc: "getpeername".}
proc send*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t;
           compiler_flags: cint): ssize_t {.cdecl, importc: "send".}
proc recv*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t;
           compiler_flags: cint): ssize_t {.cdecl, importc: "recv".}
proc sendto*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t;
             compiler_flags: cint; compiler_addr: ptr struct_sockaddr;
             compiler_addr_len: socklen_t): ssize_t {.cdecl, importc: "sendto".}
proc recvfrom*(compiler_fd: cint; compiler_buf: pointer; compiler_n: csize_t;
               compiler_flags: cint; compiler_addr: ptr struct_sockaddr;
               compiler_addr_len: ptr socklen_t): ssize_t {.cdecl,
    importc: "recvfrom".}
proc sendmsg*(compiler_fd: cint; compiler_message: ptr struct_msghdr;
              compiler_flags: cint): ssize_t {.cdecl, importc: "sendmsg".}
proc recvmsg*(compiler_fd: cint; compiler_message: ptr struct_msghdr;
              compiler_flags: cint): ssize_t {.cdecl, importc: "recvmsg".}
proc getsockopt*(compiler_fd: cint; compiler_level: cint;
                 compiler_optname: cint; compiler_optval: pointer;
                 compiler_optlen: ptr socklen_t): cint {.cdecl,
    importc: "getsockopt".}
proc setsockopt*(compiler_fd: cint; compiler_level: cint;
                 compiler_optname: cint; compiler_optval: pointer;
                 compiler_optlen: socklen_t): cint {.cdecl,
    importc: "setsockopt".}
proc listen*(compiler_fd: cint; compiler_n: cint): cint {.cdecl,
    importc: "listen".}
proc accept*(compiler_fd: cint; compiler_addr: ptr struct_sockaddr;
             compiler_addr_len: ptr socklen_t): cint {.cdecl, importc: "accept".}
proc shutdown*(compiler_fd: cint; compiler_how: cint): cint {.cdecl,
    importc: "shutdown".}
proc sockatmark*(compiler_fd: cint): cint {.cdecl, importc: "sockatmark".}
proc isfdtype*(compiler_fd: cint; compiler_fdtype: cint): cint {.cdecl,
    importc: "isfdtype".}
proc mnl_socket_open*(bus: cint): ptr struct_mnl_socket {.cdecl,
    importc: "mnl_socket_open".}
proc mnl_socket_open2*(bus: cint; flags: cint): ptr struct_mnl_socket {.cdecl,
    importc: "mnl_socket_open2".}
proc mnl_socket_fdopen*(fd: cint): ptr struct_mnl_socket {.cdecl,
    importc: "mnl_socket_fdopen".}
proc mnl_socket_bind*(nl: ptr struct_mnl_socket; groups: cuint; pid: pid_t): cint {.
    cdecl, importc: "mnl_socket_bind".}
proc mnl_socket_close*(nl: ptr struct_mnl_socket): cint {.cdecl,
    importc: "mnl_socket_close".}
proc mnl_socket_get_fd*(nl: ptr struct_mnl_socket): cint {.cdecl,
    importc: "mnl_socket_get_fd".}
proc mnl_socket_get_portid*(nl: ptr struct_mnl_socket): cuint {.cdecl,
    importc: "mnl_socket_get_portid".}
proc mnl_socket_sendto*(nl: ptr struct_mnl_socket; req: pointer; siz: csize_t): ssize_t {.
    cdecl, importc: "mnl_socket_sendto".}
proc mnl_socket_recvfrom*(nl: ptr struct_mnl_socket; buf: pointer; siz: csize_t): ssize_t {.
    cdecl, importc: "mnl_socket_recvfrom".}
proc mnl_socket_setsockopt*(nl: ptr struct_mnl_socket; type_arg: cint;
                            buf: pointer; len: socklen_t): cint {.cdecl,
    importc: "mnl_socket_setsockopt".}
proc mnl_socket_getsockopt*(nl: ptr struct_mnl_socket; type_arg: cint;
                            buf: pointer; len: ptr socklen_t): cint {.cdecl,
    importc: "mnl_socket_getsockopt".}
proc mnl_nlmsg_size*(len: csize_t): csize_t {.cdecl, importc: "mnl_nlmsg_size".}
proc mnl_nlmsg_get_payload_len*(nlh: ptr struct_nlmsghdr): csize_t {.cdecl,
    importc: "mnl_nlmsg_get_payload_len".}
proc mnl_nlmsg_put_header*(buf: pointer): ptr struct_nlmsghdr {.cdecl,
    importc: "mnl_nlmsg_put_header".}
proc mnl_nlmsg_put_extra_header*(nlh: ptr struct_nlmsghdr; size: csize_t): pointer {.
    cdecl, importc: "mnl_nlmsg_put_extra_header".}
proc mnl_nlmsg_ok*(nlh: ptr struct_nlmsghdr; len: cint): bool {.cdecl,
    importc: "mnl_nlmsg_ok".}
proc mnl_nlmsg_next*(nlh: ptr struct_nlmsghdr; len: ptr cint): ptr struct_nlmsghdr {.
    cdecl, importc: "mnl_nlmsg_next".}
proc mnl_nlmsg_seq_ok*(nlh: ptr struct_nlmsghdr; seq: cuint): bool {.cdecl,
    importc: "mnl_nlmsg_seq_ok".}
proc mnl_nlmsg_portid_ok*(nlh: ptr struct_nlmsghdr; portid: cuint): bool {.
    cdecl, importc: "mnl_nlmsg_portid_ok".}
proc mnl_nlmsg_get_payload*(nlh: ptr struct_nlmsghdr): pointer {.cdecl,
    importc: "mnl_nlmsg_get_payload".}
proc mnl_nlmsg_get_payload_offset*(nlh: ptr struct_nlmsghdr; offset: csize_t): pointer {.
    cdecl, importc: "mnl_nlmsg_get_payload_offset".}
proc mnl_nlmsg_get_payload_tail*(nlh: ptr struct_nlmsghdr): pointer {.cdecl,
    importc: "mnl_nlmsg_get_payload_tail".}
proc mnl_nlmsg_fprintf*(fd: ptr FILE; data: pointer; datalen: csize_t;
                        extra_header_size: csize_t): void {.cdecl,
    importc: "mnl_nlmsg_fprintf".}
proc mnl_nlmsg_batch_start*(buf: pointer; bufsiz: csize_t): ptr struct_mnl_nlmsg_batch {.
    cdecl, importc: "mnl_nlmsg_batch_start".}
proc mnl_nlmsg_batch_next*(b: ptr struct_mnl_nlmsg_batch): bool {.cdecl,
    importc: "mnl_nlmsg_batch_next".}
proc mnl_nlmsg_batch_stop*(b: ptr struct_mnl_nlmsg_batch): void {.cdecl,
    importc: "mnl_nlmsg_batch_stop".}
proc mnl_nlmsg_batch_size*(b: ptr struct_mnl_nlmsg_batch): csize_t {.cdecl,
    importc: "mnl_nlmsg_batch_size".}
proc mnl_nlmsg_batch_reset*(b: ptr struct_mnl_nlmsg_batch): void {.cdecl,
    importc: "mnl_nlmsg_batch_reset".}
proc mnl_nlmsg_batch_head*(b: ptr struct_mnl_nlmsg_batch): pointer {.cdecl,
    importc: "mnl_nlmsg_batch_head".}
proc mnl_nlmsg_batch_current*(b: ptr struct_mnl_nlmsg_batch): pointer {.cdecl,
    importc: "mnl_nlmsg_batch_current".}
proc mnl_nlmsg_batch_is_empty*(b: ptr struct_mnl_nlmsg_batch): bool {.cdecl,
    importc: "mnl_nlmsg_batch_is_empty".}
proc mnl_attr_get_type*(attr: ptr struct_nlattr): uint16 {.cdecl,
    importc: "mnl_attr_get_type".}
proc mnl_attr_get_len*(attr: ptr struct_nlattr): uint16 {.cdecl,
    importc: "mnl_attr_get_len".}
proc mnl_attr_get_payload_len*(attr: ptr struct_nlattr): uint16 {.cdecl,
    importc: "mnl_attr_get_payload_len".}
proc mnl_attr_get_payload*(attr: ptr struct_nlattr): pointer {.cdecl,
    importc: "mnl_attr_get_payload".}
proc mnl_attr_get_u8*(attr: ptr struct_nlattr): uint8 {.cdecl,
    importc: "mnl_attr_get_u8".}
proc mnl_attr_get_u16*(attr: ptr struct_nlattr): uint16 {.cdecl,
    importc: "mnl_attr_get_u16".}
proc mnl_attr_get_u32*(attr: ptr struct_nlattr): uint32 {.cdecl,
    importc: "mnl_attr_get_u32".}
proc mnl_attr_get_u64*(attr: ptr struct_nlattr): uint64 {.cdecl,
    importc: "mnl_attr_get_u64".}
proc mnl_attr_get_str*(attr: ptr struct_nlattr): ptr uint8 {.cdecl,
    importc: "mnl_attr_get_str".}
proc mnl_attr_put*(nlh: ptr struct_nlmsghdr; type_arg: uint16; len: csize_t;
                   data: pointer): void {.cdecl, importc: "mnl_attr_put".}
proc mnl_attr_put_u8*(nlh: ptr struct_nlmsghdr; type_arg: uint16; data: uint8): void {.
    cdecl, importc: "mnl_attr_put_u8".}
proc mnl_attr_put_u16*(nlh: ptr struct_nlmsghdr; type_arg: uint16; data: uint16): void {.
    cdecl, importc: "mnl_attr_put_u16".}
proc mnl_attr_put_u32*(nlh: ptr struct_nlmsghdr; type_arg: uint16; data: uint32): void {.
    cdecl, importc: "mnl_attr_put_u32".}
proc mnl_attr_put_u64*(nlh: ptr struct_nlmsghdr; type_arg: uint16; data: uint64): void {.
    cdecl, importc: "mnl_attr_put_u64".}
proc mnl_attr_put_str*(nlh: ptr struct_nlmsghdr; type_arg: uint16;
                       data: ptr uint8): void {.cdecl,
    importc: "mnl_attr_put_str".}
proc mnl_attr_put_strz*(nlh: ptr struct_nlmsghdr; type_arg: uint16;
                        data: ptr uint8): void {.cdecl,
    importc: "mnl_attr_put_strz".}
proc mnl_attr_put_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                         type_arg: uint16; len: csize_t; data: pointer): bool {.
    cdecl, importc: "mnl_attr_put_check".}
proc mnl_attr_put_u8_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                            type_arg: uint16; data: uint8): bool {.cdecl,
    importc: "mnl_attr_put_u8_check".}
proc mnl_attr_put_u16_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                             type_arg: uint16; data: uint16): bool {.cdecl,
    importc: "mnl_attr_put_u16_check".}
proc mnl_attr_put_u32_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                             type_arg: uint16; data: uint32): bool {.cdecl,
    importc: "mnl_attr_put_u32_check".}
proc mnl_attr_put_u64_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                             type_arg: uint16; data: uint64): bool {.cdecl,
    importc: "mnl_attr_put_u64_check".}
proc mnl_attr_put_str_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                             type_arg: uint16; data: ptr uint8): bool {.cdecl,
    importc: "mnl_attr_put_str_check".}
proc mnl_attr_put_strz_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                              type_arg: uint16; data: ptr uint8): bool {.cdecl,
    importc: "mnl_attr_put_strz_check".}
proc mnl_attr_nest_start*(nlh: ptr struct_nlmsghdr; type_arg: uint16): ptr struct_nlattr {.
    cdecl, importc: "mnl_attr_nest_start".}
proc mnl_attr_nest_start_check*(nlh: ptr struct_nlmsghdr; buflen: csize_t;
                                type_arg: uint16): ptr struct_nlattr {.cdecl,
    importc: "mnl_attr_nest_start_check".}
proc mnl_attr_nest_end*(nlh: ptr struct_nlmsghdr; start: ptr struct_nlattr): void {.
    cdecl, importc: "mnl_attr_nest_end".}
proc mnl_attr_nest_cancel*(nlh: ptr struct_nlmsghdr; start: ptr struct_nlattr): void {.
    cdecl, importc: "mnl_attr_nest_cancel".}
proc mnl_attr_type_valid*(attr: ptr struct_nlattr; maxtype: uint16): cint {.
    cdecl, importc: "mnl_attr_type_valid".}
proc mnl_attr_validate*(attr: ptr struct_nlattr;
                        type_arg: enum_mnl_attr_data_type): cint {.cdecl,
    importc: "mnl_attr_validate".}
proc mnl_attr_validate2*(attr: ptr struct_nlattr;
                         type_arg: enum_mnl_attr_data_type; len: csize_t): cint {.
    cdecl, importc: "mnl_attr_validate2".}
proc mnl_attr_ok*(attr: ptr struct_nlattr; len: cint): bool {.cdecl,
    importc: "mnl_attr_ok".}
proc mnl_attr_next*(attr: ptr struct_nlattr): ptr struct_nlattr {.cdecl,
    importc: "mnl_attr_next".}
proc mnl_attr_parse*(nlh: ptr struct_nlmsghdr; offset: cuint; cb: mnl_attr_cb_t;
                     data: pointer): cint {.cdecl, importc: "mnl_attr_parse".}
proc mnl_attr_parse_nested*(attr: ptr struct_nlattr; cb: mnl_attr_cb_t;
                            data: pointer): cint {.cdecl,
    importc: "mnl_attr_parse_nested".}
proc mnl_attr_parse_payload*(payload: pointer; payload_len: csize_t;
                             cb: mnl_attr_cb_t; data: pointer): cint {.cdecl,
    importc: "mnl_attr_parse_payload".}
proc mnl_cb_run*(buf: pointer; numbytes: csize_t; seq: cuint; portid: cuint;
                 cb_data: mnl_cb_t; data: pointer): cint {.cdecl,
    importc: "mnl_cb_run".}
proc mnl_cb_run2*(buf: pointer; numbytes: csize_t; seq: cuint; portid: cuint;
                  cb_data: mnl_cb_t; data: pointer; cb_ctl_array: mnl_cb_t;
                  cb_ctl_array_len: cuint): cint {.cdecl, importc: "mnl_cb_run2".}