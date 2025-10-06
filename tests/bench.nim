import times
import libnet

proc oneExec() =
  var t = Table.create()
  t.name = "x"
  t.family = 2

  var buf: array[4096, uint8]
  discard
    nftnl_table_snprintf(addr buf[0], csize_t(buf.len), t.raw, uint32(0), uint32(0))

when isMainModule:
  let n = 1_000_000
  let t0 = cpuTime()
  for _ in 0 ..< n:
    oneExec()
  let t1 = cpuTime()
  echo "exec/s ≈ ", (n.float / (t1 - t0)).int
