
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
const
  IPPROTO_IP* = cuint(0)
const
  IPPROTO_ICMP* = cuint(1)
const
  IPPROTO_IGMP* = cuint(2)
const
  IPPROTO_IPIP* = cuint(4)
const
  IPPROTO_TCP* = cuint(6)
const
  IPPROTO_EGP* = cuint(8)
const
  IPPROTO_PUP* = cuint(12)
const
  IPPROTO_UDP* = cuint(17)
const
  IPPROTO_IDP* = cuint(22)
const
  IPPROTO_TP* = cuint(29)
const
  IPPROTO_DCCP* = cuint(33)
const
  IPPROTO_IPV6* = cuint(41)
const
  IPPROTO_RSVP* = cuint(46)
const
  IPPROTO_GRE* = cuint(47)
const
  IPPROTO_ESP* = cuint(50)
const
  IPPROTO_AH* = cuint(51)
const
  IPPROTO_MTP* = cuint(92)
const
  IPPROTO_BEETPH* = cuint(94)
const
  IPPROTO_ENCAP* = cuint(98)
const
  IPPROTO_PIM* = cuint(103)
const
  IPPROTO_COMP* = cuint(108)
const
  IPPROTO_L2TP* = cuint(115)
const
  IPPROTO_SCTP* = cuint(132)
const
  IPPROTO_UDPLITE* = cuint(136)
const
  IPPROTO_MPLS* = cuint(137)
const
  IPPROTO_ETHERNET* = cuint(143)
const
  IPPROTO_RAW* = cuint(255)
const
  IPPROTO_MPTCP* = cuint(262)
const
  IPPROTO_MAX* = cuint(263)
const
  IPPROTO_HOPOPTS* = cuint(0)
const
  IPPROTO_ROUTING* = cuint(43)
const
  IPPROTO_FRAGMENT* = cuint(44)
const
  IPPROTO_ICMPV6* = cuint(58)
const
  IPPROTO_NONE* = cuint(59)
const
  IPPROTO_DSTOPTS* = cuint(60)
const
  IPPROTO_MH* = cuint(135)
const
  IPPORT_ECHO* = cuint(7)
const
  IPPORT_DISCARD* = cuint(9)
const
  IPPORT_SYSTAT* = cuint(11)
const
  IPPORT_DAYTIME* = cuint(13)
const
  IPPORT_NETSTAT* = cuint(15)
const
  IPPORT_FTP* = cuint(21)
const
  IPPORT_TELNET* = cuint(23)
const
  IPPORT_SMTP* = cuint(25)
const
  IPPORT_TIMESERVER* = cuint(37)
const
  IPPORT_NAMESERVER* = cuint(42)
const
  IPPORT_WHOIS* = cuint(43)
const
  IPPORT_MTP* = cuint(57)
const
  IPPORT_TFTP* = cuint(69)
const
  IPPORT_RJE* = cuint(77)
const
  IPPORT_FINGER* = cuint(79)
const
  IPPORT_TTYLINK* = cuint(87)
const
  IPPORT_SUPDUP* = cuint(95)
const
  IPPORT_EXECSERVER* = cuint(512)
const
  IPPORT_LOGINSERVER* = cuint(513)
const
  IPPORT_CMDSERVER* = cuint(514)
const
  IPPORT_EFSSERVER* = cuint(520)
const
  IPPORT_BIFFUDP* = cuint(512)
const
  IPPORT_WHOSERVER* = cuint(513)
const
  IPPORT_ROUTESERVER* = cuint(520)
const
  IPPORT_RESERVED* = cuint(1024)
const
  IPPORT_USERRESERVED* = cuint(5000)
const
  NFNL_CB_FAILURE* = cint(-1)
const
  NFNL_CB_STOP* = cint(0)
const
  NFNL_CB_CONTINUE* = cint(1)
const
  CONNTRACK* = cuint(1)
const
  EXPECT* = cuint(2)
const
  NFCT_SOPT_UNDO_SNAT* = cuint(0)
const
  NFCT_SOPT_UNDO_DNAT* = cuint(1)
const
  NFCT_SOPT_UNDO_SPAT* = cuint(2)
const
  NFCT_SOPT_UNDO_DPAT* = cuint(3)
const
  NFCT_SOPT_SETUP_ORIGINAL* = cuint(4)
const
  NFCT_SOPT_SETUP_REPLY* = cuint(5)
const
  compiler_NFCT_SOPT_MAX* = cuint(6)
const
  NFCT_GOPT_IS_SNAT* = cuint(0)
const
  NFCT_GOPT_IS_DNAT* = cuint(1)
const
  NFCT_GOPT_IS_SPAT* = cuint(2)
const
  NFCT_GOPT_IS_DPAT* = cuint(3)
const
  compiler_NFCT_GOPT_MAX* = cuint(4)
const
  NFCT_CB_FAILURE* = cint(-1)
const
  NFCT_CB_STOP* = cint(0)
const
  NFCT_CB_CONTINUE* = cint(1)
const
  NFCT_CB_STOLEN* = cint(2)
const
  NFCT_O_PLAIN* = cuint(0)
const
  NFCT_O_DEFAULT* = cuint(0)
const
  NFCT_O_XML* = cuint(1)
const
  NFCT_O_MAX* = cuint(2)
const
  NFCT_OF_SHOW_LAYER3_BIT* = cuint(0)
const
  NFCT_OF_SHOW_LAYER3* = cuint(1)
const
  NFCT_OF_TIME_BIT* = cuint(1)
const
  NFCT_OF_TIME* = cuint(2)
const
  NFCT_OF_ID_BIT* = cuint(2)
const
  NFCT_OF_ID* = cuint(4)
const
  NFCT_OF_TIMESTAMP_BIT* = cuint(3)
const
  NFCT_OF_TIMESTAMP* = cuint(8)
const
  NFCT_CMP_ALL* = cuint(0)
const
  NFCT_CMP_ORIG* = cuint(1)
const
  NFCT_CMP_REPL* = cuint(2)
const
  NFCT_CMP_TIMEOUT_EQ* = cuint(4)
const
  NFCT_CMP_TIMEOUT_GT* = cuint(8)
const
  NFCT_CMP_TIMEOUT_GE* = cuint(12)
const
  NFCT_CMP_TIMEOUT_LT* = cuint(16)
const
  NFCT_CMP_TIMEOUT_LE* = cuint(20)
const
  NFCT_CMP_MASK* = cuint(32)
const
  NFCT_CMP_STRICT* = cuint(64)
const
  NFCT_CP_ALL* = cuint(0)
const
  NFCT_CP_ORIG* = cuint(1)
const
  NFCT_CP_REPL* = cuint(2)
const
  NFCT_CP_META* = cuint(4)
const
  NFCT_CP_OVERRIDE* = cuint(8)
type
  enum_socket_type* {.size: sizeof(cuint).} = enum
    SOCK_STREAM = 1, SOCK_DGRAM = 2, SOCK_RAW = 3, SOCK_RDM = 4,
    SOCK_SEQPACKET = 5, SOCK_DCCP = 6, SOCK_PACKET = 10, SOCK_NONBLOCK = 2048,
    SOCK_CLOEXEC = 524288
type
  enum_nfnetlink_groups* {.size: sizeof(cuint).} = enum
    NFNLGRP_NONE = 0, NFNLGRP_CONNTRACK_NEW = 1, NFNLGRP_CONNTRACK_UPDATE = 2,
    NFNLGRP_CONNTRACK_DESTROY = 3, NFNLGRP_CONNTRACK_EXP_NEW = 4,
    NFNLGRP_CONNTRACK_EXP_UPDATE = 5, NFNLGRP_CONNTRACK_EXP_DESTROY = 6,
    compiler_NFNLGRP_MAX = 7
type
  enum_cntl_msg_types* {.size: sizeof(cuint).} = enum
    IPCTNL_MSG_CT_NEW = 0, IPCTNL_MSG_CT_GET = 1, IPCTNL_MSG_CT_DELETE = 2,
    IPCTNL_MSG_CT_GET_CTRZERO = 3, IPCTNL_MSG_CT_GET_STATS_CPU = 4,
    IPCTNL_MSG_CT_GET_STATS = 5, IPCTNL_MSG_CT_GET_DYING = 6,
    IPCTNL_MSG_CT_GET_UNCONFIRMED = 7, IPCTNL_MSG_MAX = 8
type
  enum_ctnl_exp_msg_types* {.size: sizeof(cuint).} = enum
    IPCTNL_MSG_EXP_NEW = 0, IPCTNL_MSG_EXP_GET = 1, IPCTNL_MSG_EXP_DELETE = 2,
    IPCTNL_MSG_EXP_GET_STATS_CPU = 3, IPCTNL_MSG_EXP_MAX = 4
type
  enum_ctattr_type* {.size: sizeof(cuint).} = enum
    CTA_UNSPEC = 0, CTA_TUPLE_ORIG = 1, CTA_TUPLE_REPLY = 2, CTA_STATUS = 3,
    CTA_PROTOINFO = 4, CTA_HELP = 5, CTA_NAT_SRC = 6, CTA_TIMEOUT = 7,
    CTA_MARK = 8, CTA_COUNTERS_ORIG = 9, CTA_COUNTERS_REPLY = 10, CTA_USE = 11,
    CTA_ID = 12, CTA_NAT_DST = 13, CTA_TUPLE_MASTER = 14, CTA_SEQ_ADJ_ORIG = 15,
    CTA_SEQ_ADJ_REPLY = 16, CTA_SECMARK = 17, CTA_ZONE = 18, CTA_SECCTX = 19,
    CTA_TIMESTAMP = 20, CTA_MARK_MASK = 21, CTA_LABELS = 22,
    CTA_LABELS_MASK = 23, CTA_SYNPROXY = 24, CTA_FILTER = 25,
    CTA_STATUS_MASK = 26, compiler_CTA_MAX = 27
const
  CTA_NAT_SEQ_ADJ_ORIG* = enum_ctattr_type.CTA_SEQ_ADJ_ORIG
const
  CTA_NAT_SEQ_ADJ_REPLY* = enum_ctattr_type.CTA_SEQ_ADJ_REPLY
type
  enum_ctattr_tuple* {.size: sizeof(cuint).} = enum
    CTA_TUPLE_UNSPEC = 0, CTA_TUPLE_IP = 1, CTA_TUPLE_PROTO = 2,
    CTA_TUPLE_ZONE = 3, compiler_CTA_TUPLE_MAX = 4
type
  enum_ctattr_ip* {.size: sizeof(cuint).} = enum
    CTA_IP_UNSPEC = 0, CTA_IP_V4_SRC = 1, CTA_IP_V4_DST = 2, CTA_IP_V6_SRC = 3,
    CTA_IP_V6_DST = 4, compiler_CTA_IP_MAX = 5
type
  enum_ctattr_l4proto* {.size: sizeof(cuint).} = enum
    CTA_PROTO_UNSPEC = 0, CTA_PROTO_NUM = 1, CTA_PROTO_SRC_PORT = 2,
    CTA_PROTO_DST_PORT = 3, CTA_PROTO_ICMP_ID = 4, CTA_PROTO_ICMP_TYPE = 5,
    CTA_PROTO_ICMP_CODE = 6, CTA_PROTO_ICMPV6_ID = 7, CTA_PROTO_ICMPV6_TYPE = 8,
    CTA_PROTO_ICMPV6_CODE = 9, compiler_CTA_PROTO_MAX = 10
type
  enum_ctattr_protoinfo* {.size: sizeof(cuint).} = enum
    CTA_PROTOINFO_UNSPEC = 0, CTA_PROTOINFO_TCP = 1, CTA_PROTOINFO_DCCP = 2,
    CTA_PROTOINFO_SCTP = 3, compiler_CTA_PROTOINFO_MAX = 4
type
  enum_ctattr_protoinfo_tcp* {.size: sizeof(cuint).} = enum
    CTA_PROTOINFO_TCP_UNSPEC = 0, CTA_PROTOINFO_TCP_STATE = 1,
    CTA_PROTOINFO_TCP_WSCALE_ORIGINAL = 2, CTA_PROTOINFO_TCP_WSCALE_REPLY = 3,
    CTA_PROTOINFO_TCP_FLAGS_ORIGINAL = 4, CTA_PROTOINFO_TCP_FLAGS_REPLY = 5,
    compiler_CTA_PROTOINFO_TCP_MAX = 6
type
  enum_ctattr_protoinfo_dccp* {.size: sizeof(cuint).} = enum
    CTA_PROTOINFO_DCCP_UNSPEC = 0, CTA_PROTOINFO_DCCP_STATE = 1,
    CTA_PROTOINFO_DCCP_ROLE = 2, CTA_PROTOINFO_DCCP_HANDSHAKE_SEQ = 3,
    CTA_PROTOINFO_DCCP_PAD = 4, compiler_CTA_PROTOINFO_DCCP_MAX = 5
type
  enum_ctattr_protoinfo_sctp* {.size: sizeof(cuint).} = enum
    CTA_PROTOINFO_SCTP_UNSPEC = 0, CTA_PROTOINFO_SCTP_STATE = 1,
    CTA_PROTOINFO_SCTP_VTAG_ORIGINAL = 2, CTA_PROTOINFO_SCTP_VTAG_REPLY = 3,
    compiler_CTA_PROTOINFO_SCTP_MAX = 4
type
  enum_ctattr_counters* {.size: sizeof(cuint).} = enum
    CTA_COUNTERS_UNSPEC = 0, CTA_COUNTERS_PACKETS = 1, CTA_COUNTERS_BYTES = 2,
    CTA_COUNTERS32_PACKETS = 3, CTA_COUNTERS32_BYTES = 4, CTA_COUNTERS_PAD = 5,
    compiler_CTA_COUNTERS_MAX = 6
type
  enum_ctattr_tstamp* {.size: sizeof(cuint).} = enum
    CTA_TIMESTAMP_UNSPEC = 0, CTA_TIMESTAMP_START = 1, CTA_TIMESTAMP_STOP = 2,
    CTA_TIMESTAMP_PAD = 3, compiler_CTA_TIMESTAMP_MAX = 4
type
  enum_ctattr_nat* {.size: sizeof(cuint).} = enum
    CTA_NAT_UNSPEC = 0, CTA_NAT_V4_MINIP = 1, CTA_NAT_V4_MAXIP = 2,
    CTA_NAT_PROTO = 3, CTA_NAT_V6_MINIP = 4, CTA_NAT_V6_MAXIP = 5,
    compiler_CTA_NAT_MAX = 6
type
  enum_ctattr_protonat* {.size: sizeof(cuint).} = enum
    CTA_PROTONAT_UNSPEC = 0, CTA_PROTONAT_PORT_MIN = 1,
    CTA_PROTONAT_PORT_MAX = 2, compiler_CTA_PROTONAT_MAX = 3
type
  enum_ctattr_seqadj* {.size: sizeof(cuint).} = enum
    CTA_SEQADJ_UNSPEC = 0, CTA_SEQADJ_CORRECTION_POS = 1,
    CTA_SEQADJ_OFFSET_BEFORE = 2, CTA_SEQADJ_OFFSET_AFTER = 3,
    compiler_CTA_SEQADJ_MAX = 4
type
  enum_ctattr_natseq* {.size: sizeof(cuint).} = enum
    CTA_NAT_SEQ_UNSPEC = 0, CTA_NAT_SEQ_CORRECTION_POS = 1,
    CTA_NAT_SEQ_OFFSET_BEFORE = 2, CTA_NAT_SEQ_OFFSET_AFTER = 3,
    compiler_CTA_NAT_SEQ_MAX = 4
type
  enum_ctattr_synproxy* {.size: sizeof(cuint).} = enum
    CTA_SYNPROXY_UNSPEC = 0, CTA_SYNPROXY_ISN = 1, CTA_SYNPROXY_ITS = 2,
    CTA_SYNPROXY_TSOFF = 3, compiler_CTA_SYNPROXY_MAX = 4
type
  enum_ctattr_expect* {.size: sizeof(cuint).} = enum
    CTA_EXPECT_UNSPEC = 0, CTA_EXPECT_MASTER = 1, CTA_EXPECT_TUPLE = 2,
    CTA_EXPECT_MASK = 3, CTA_EXPECT_TIMEOUT = 4, CTA_EXPECT_ID = 5,
    CTA_EXPECT_HELP_NAME = 6, CTA_EXPECT_ZONE = 7, CTA_EXPECT_FLAGS = 8,
    CTA_EXPECT_CLASS = 9, CTA_EXPECT_NAT = 10, CTA_EXPECT_FN = 11,
    compiler_CTA_EXPECT_MAX = 12
type
  enum_ctattr_expect_nat* {.size: sizeof(cuint).} = enum
    CTA_EXPECT_NAT_UNSPEC = 0, CTA_EXPECT_NAT_DIR = 1, CTA_EXPECT_NAT_TUPLE = 2,
    compiler_CTA_EXPECT_NAT_MAX = 3
type
  enum_ctattr_help* {.size: sizeof(cuint).} = enum
    CTA_HELP_UNSPEC = 0, CTA_HELP_NAME = 1, CTA_HELP_INFO = 2,
    compiler_CTA_HELP_MAX = 3
type
  enum_ctattr_secctx* {.size: sizeof(cuint).} = enum
    CTA_SECCTX_UNSPEC = 0, CTA_SECCTX_NAME = 1, compiler_CTA_SECCTX_MAX = 2
type
  enum_ctattr_stats_cpu* {.size: sizeof(cuint).} = enum
    CTA_STATS_UNSPEC = 0, CTA_STATS_SEARCHED = 1, CTA_STATS_FOUND = 2,
    CTA_STATS_NEW = 3, CTA_STATS_INVALID = 4, CTA_STATS_IGNORE = 5,
    CTA_STATS_DELETE = 6, CTA_STATS_DELETE_LIST = 7, CTA_STATS_INSERT = 8,
    CTA_STATS_INSERT_FAILED = 9, CTA_STATS_DROP = 10, CTA_STATS_EARLY_DROP = 11,
    CTA_STATS_ERROR = 12, CTA_STATS_SEARCH_RESTART = 13,
    CTA_STATS_CLASH_RESOLVE = 14, CTA_STATS_CHAIN_TOOLONG = 15,
    compiler_CTA_STATS_MAX = 16
type
  enum_ctattr_stats_global* {.size: sizeof(cuint).} = enum
    CTA_STATS_GLOBAL_UNSPEC = 0, CTA_STATS_GLOBAL_ENTRIES = 1,
    CTA_STATS_GLOBAL_MAX_ENTRIES = 2, compiler_CTA_STATS_GLOBAL_MAX = 3
type
  enum_ctattr_expect_stats* {.size: sizeof(cuint).} = enum
    CTA_STATS_EXP_UNSPEC = 0, CTA_STATS_EXP_NEW = 1, CTA_STATS_EXP_CREATE = 2,
    CTA_STATS_EXP_DELETE = 3, compiler_CTA_STATS_EXP_MAX = 4
type
  enum_ctattr_filter* {.size: sizeof(cuint).} = enum
    CTA_FILTER_UNSPEC = 0, CTA_FILTER_ORIG_FLAGS = 1,
    CTA_FILTER_REPLY_FLAGS = 2, compiler_CTA_FILTER_MAX = 3
type
  enum_ip_conntrack_info* {.size: sizeof(cuint).} = enum
    IP_CT_ESTABLISHED = 0, IP_CT_RELATED = 1, IP_CT_NEW = 2, IP_CT_IS_REPLY = 3,
    IP_CT_RELATED_REPLY = 4, IP_CT_NUMBER = 5
const
  IP_CT_ESTABLISHED_REPLY* = enum_ip_conntrack_info.IP_CT_IS_REPLY
const
  IP_CT_NEW_REPLY* = enum_ip_conntrack_info.IP_CT_NUMBER
type
  enum_ip_conntrack_status* {.size: sizeof(cuint).} = enum
    IPS_EXPECTED_BIT = 0, IPS_EXPECTED = 1, IPS_SEEN_REPLY = 2,
    IPS_CONFIRMED_BIT = 3, IPS_ASSURED = 4, IPS_DST_NAT_BIT = 5,
    IPS_SEQ_ADJUST_BIT = 6, IPS_SRC_NAT_DONE_BIT = 7, IPS_CONFIRMED = 8,
    IPS_DYING_BIT = 9, IPS_FIXED_TIMEOUT_BIT = 10, IPS_TEMPLATE_BIT = 11,
    IPS_UNTRACKED_BIT = 12, IPS_HELPER_BIT = 13, IPS_OFFLOAD_BIT = 14,
    IPS_HW_OFFLOAD_BIT = 15, IPS_SRC_NAT = 16, IPS_DST_NAT = 32,
    IPS_NAT_MASK = 48, IPS_SEQ_ADJUST = 64, IPS_SRC_NAT_DONE = 128,
    IPS_DST_NAT_DONE = 256, IPS_NAT_DONE_MASK = 384, IPS_DYING = 512,
    IPS_FIXED_TIMEOUT = 1024, IPS_TEMPLATE = 2048, IPS_UNTRACKED = 4096,
    IPS_HELPER = 8192, IPS_OFFLOAD = 16384, IPS_HW_OFFLOAD = 32768,
    IPS_UNCHANGEABLE_MASK = 56313
const
  IPS_SEEN_REPLY_BIT* = enum_ip_conntrack_status.IPS_EXPECTED
const
  IPS_ASSURED_BIT* = enum_ip_conntrack_status.IPS_SEEN_REPLY
const
  IPS_SRC_NAT_BIT* = enum_ip_conntrack_status.IPS_ASSURED
const
  IPS_DST_NAT_DONE_BIT* = enum_ip_conntrack_status.IPS_CONFIRMED
const
  compiler_IPS_MAX_BIT* = enum_ip_conntrack_status.IPS_SRC_NAT
type
  enum_ip_conntrack_events* {.size: sizeof(cuint).} = enum
    IPCT_NEW_enumval = 0, IPCT_RELATED_enumval = 1, IPCT_DESTROY = 2,
    IPCT_REPLY = 3, IPCT_ASSURED = 4, IPCT_PROTOINFO = 5, IPCT_HELPER = 6,
    IPCT_MARK = 7, IPCT_SEQADJ = 8, IPCT_SECMARK = 9, IPCT_LABEL = 10,
    IPCT_SYNPROXY = 11
const
  IPCT_NATSEQADJ* = enum_ip_conntrack_events.IPCT_SEQADJ
type
  enum_ip_conntrack_expect_events* {.size: sizeof(cuint).} = enum
    IPEXP_NEW = 0, IPEXP_DESTROY = 1
type
  enum_nf_conntrack_attr* {.size: sizeof(cuint).} = enum
    ATTR_ORIG_IPV4_SRC = 0, ATTR_ORIG_IPV4_DST = 1, ATTR_REPL_IPV4_SRC = 2,
    ATTR_REPL_IPV4_DST = 3, ATTR_ORIG_IPV6_SRC = 4, ATTR_ORIG_IPV6_DST = 5,
    ATTR_REPL_IPV6_SRC = 6, ATTR_REPL_IPV6_DST = 7, ATTR_ORIG_PORT_SRC = 8,
    ATTR_ORIG_PORT_DST = 9, ATTR_REPL_PORT_SRC = 10, ATTR_REPL_PORT_DST = 11,
    ATTR_ICMP_TYPE = 12, ATTR_ICMP_CODE = 13, ATTR_ICMP_ID = 14,
    ATTR_ORIG_L3PROTO = 15, ATTR_REPL_L3PROTO = 16, ATTR_ORIG_L4PROTO = 17,
    ATTR_REPL_L4PROTO = 18, ATTR_TCP_STATE = 19, ATTR_SNAT_IPV4 = 20,
    ATTR_DNAT_IPV4 = 21, ATTR_SNAT_PORT = 22, ATTR_DNAT_PORT = 23,
    ATTR_TIMEOUT = 24, ATTR_MARK = 25, ATTR_ORIG_COUNTER_PACKETS = 26,
    ATTR_REPL_COUNTER_PACKETS = 27, ATTR_ORIG_COUNTER_BYTES = 28,
    ATTR_REPL_COUNTER_BYTES = 29, ATTR_USE = 30, ATTR_ID = 31, ATTR_STATUS = 32,
    ATTR_TCP_FLAGS_ORIG = 33, ATTR_TCP_FLAGS_REPL = 34, ATTR_TCP_MASK_ORIG = 35,
    ATTR_TCP_MASK_REPL = 36, ATTR_MASTER_IPV4_SRC = 37,
    ATTR_MASTER_IPV4_DST = 38, ATTR_MASTER_IPV6_SRC = 39,
    ATTR_MASTER_IPV6_DST = 40, ATTR_MASTER_PORT_SRC = 41,
    ATTR_MASTER_PORT_DST = 42, ATTR_MASTER_L3PROTO = 43,
    ATTR_MASTER_L4PROTO = 44, ATTR_SECMARK = 45,
    ATTR_ORIG_NAT_SEQ_CORRECTION_POS = 46, ATTR_ORIG_NAT_SEQ_OFFSET_BEFORE = 47,
    ATTR_ORIG_NAT_SEQ_OFFSET_AFTER = 48, ATTR_REPL_NAT_SEQ_CORRECTION_POS = 49,
    ATTR_REPL_NAT_SEQ_OFFSET_BEFORE = 50, ATTR_REPL_NAT_SEQ_OFFSET_AFTER = 51,
    ATTR_SCTP_STATE = 52, ATTR_SCTP_VTAG_ORIG = 53, ATTR_SCTP_VTAG_REPL = 54,
    ATTR_HELPER_NAME = 55, ATTR_DCCP_STATE = 56, ATTR_DCCP_ROLE = 57,
    ATTR_DCCP_HANDSHAKE_SEQ = 58, ATTR_TCP_WSCALE_ORIG = 59,
    ATTR_TCP_WSCALE_REPL = 60, ATTR_ZONE = 61, ATTR_SECCTX = 62,
    ATTR_TIMESTAMP_START = 63, ATTR_TIMESTAMP_STOP = 64, ATTR_HELPER_INFO = 65,
    ATTR_CONNLABELS = 66, ATTR_CONNLABELS_MASK = 67, ATTR_ORIG_ZONE = 68,
    ATTR_REPL_ZONE = 69, ATTR_SNAT_IPV6 = 70, ATTR_DNAT_IPV6 = 71,
    ATTR_SYNPROXY_ISN = 72, ATTR_SYNPROXY_ITS = 73, ATTR_SYNPROXY_TSOFF = 74,
    ATTR_MAX = 75
const
  ATTR_IPV4_SRC* = enum_nf_conntrack_attr.ATTR_ORIG_IPV4_SRC
const
  ATTR_IPV4_DST* = enum_nf_conntrack_attr.ATTR_ORIG_IPV4_DST
const
  ATTR_IPV6_SRC* = enum_nf_conntrack_attr.ATTR_ORIG_IPV6_SRC
const
  ATTR_IPV6_DST* = enum_nf_conntrack_attr.ATTR_ORIG_IPV6_DST
const
  ATTR_PORT_SRC* = enum_nf_conntrack_attr.ATTR_ORIG_PORT_SRC
const
  ATTR_PORT_DST* = enum_nf_conntrack_attr.ATTR_ORIG_PORT_DST
const
  ATTR_L3PROTO* = enum_nf_conntrack_attr.ATTR_ORIG_L3PROTO
const
  ATTR_L4PROTO* = enum_nf_conntrack_attr.ATTR_ORIG_L4PROTO
type
  enum_nf_conntrack_attr_grp* {.size: sizeof(cuint).} = enum
    ATTR_GRP_ORIG_IPV4 = 0, ATTR_GRP_REPL_IPV4 = 1, ATTR_GRP_ORIG_IPV6 = 2,
    ATTR_GRP_REPL_IPV6 = 3, ATTR_GRP_ORIG_PORT = 4, ATTR_GRP_REPL_PORT = 5,
    ATTR_GRP_ICMP = 6, ATTR_GRP_MASTER_IPV4 = 7, ATTR_GRP_MASTER_IPV6 = 8,
    ATTR_GRP_MASTER_PORT = 9, ATTR_GRP_ORIG_COUNTERS = 10,
    ATTR_GRP_REPL_COUNTERS = 11, ATTR_GRP_ORIG_ADDR_SRC = 12,
    ATTR_GRP_ORIG_ADDR_DST = 13, ATTR_GRP_REPL_ADDR_SRC = 14,
    ATTR_GRP_REPL_ADDR_DST = 15, ATTR_GRP_MAX = 16
type
  enum_nf_conntrack_msg_type* {.size: sizeof(cint).} = enum
    NFCT_T_ERROR = -2147483648, NFCT_T_UNKNOWN = 0, NFCT_T_NEW = 1,
    NFCT_T_UPDATE = 2, NFCT_T_DESTROY = 4, NFCT_T_ALL = 7, NFCT_T_ERROR_BIT = 31
const
  NFCT_T_NEW_BIT* = enum_nf_conntrack_msg_type.NFCT_T_UNKNOWN
const
  NFCT_T_UPDATE_BIT* = enum_nf_conntrack_msg_type.NFCT_T_NEW
const
  NFCT_T_DESTROY_BIT* = enum_nf_conntrack_msg_type.NFCT_T_UPDATE
type
  enum_nf_conntrack_query* {.size: sizeof(cuint).} = enum
    NFCT_Q_CREATE = 0, NFCT_Q_UPDATE = 1, NFCT_Q_DESTROY = 2, NFCT_Q_GET = 3,
    NFCT_Q_FLUSH = 4, NFCT_Q_DUMP = 5, NFCT_Q_DUMP_RESET = 6,
    NFCT_Q_CREATE_UPDATE = 7, NFCT_Q_DUMP_FILTER = 8,
    NFCT_Q_DUMP_FILTER_RESET = 9, NFCT_Q_FLUSH_FILTER = 10
type
  enum_nfct_filter_attr* {.size: sizeof(cuint).} = enum
    NFCT_FILTER_L4PROTO = 0, NFCT_FILTER_L4PROTO_STATE = 1,
    NFCT_FILTER_SRC_IPV4 = 2, NFCT_FILTER_DST_IPV4 = 3,
    NFCT_FILTER_SRC_IPV6 = 4, NFCT_FILTER_DST_IPV6 = 5, NFCT_FILTER_MARK = 6,
    NFCT_FILTER_ZONE = 7, NFCT_FILTER_MAX = 8
type
  enum_nfct_filter_logic* {.size: sizeof(cuint).} = enum
    NFCT_FILTER_LOGIC_POSITIVE = 0, NFCT_FILTER_LOGIC_NEGATIVE = 1,
    NFCT_FILTER_LOGIC_MAX = 2
type
  enum_nfct_filter_dump_attr* {.size: sizeof(cuint).} = enum
    NFCT_FILTER_DUMP_MARK = 0, NFCT_FILTER_DUMP_L3NUM = 1,
    NFCT_FILTER_DUMP_STATUS = 2, NFCT_FILTER_DUMP_ZONE = 3,
    NFCT_FILTER_DUMP_TUPLE = 4, NFCT_FILTER_DUMP_MAX = 5
type
  enum_nf_expect_attr* {.size: sizeof(cuint).} = enum
    ATTR_EXP_MASTER = 0, ATTR_EXP_EXPECTED = 1, ATTR_EXP_MASK = 2,
    ATTR_EXP_TIMEOUT = 3, ATTR_EXP_ZONE = 4, ATTR_EXP_FLAGS = 5,
    ATTR_EXP_HELPER_NAME = 6, ATTR_EXP_CLASS = 7, ATTR_EXP_NAT_TUPLE = 8,
    ATTR_EXP_NAT_DIR = 9, ATTR_EXP_FN = 10, ATTR_EXP_MAX = 11
type
  struct_nlif_handle* = object
type
  compiler_WCHAR_MIN* = object
type
  struct_nf_expect* = object
type
  compiler_U32_TYPE* = object
type
  struct_nfct_bitmask* = object
type
  compiler_REDIRECT* = object
type
  struct_nfnl_handle* = object
type
  compiler_SWORD_TYPE* = object
type
  compiler_SLONGWORD_TYPE* = object
type
  struct_nf_conntrack* = object
type
  struct_nfct_filter* = object
type
  compiler_restrict* = object
type
  typedef* = object
type
  compiler_NFDBITS* = object
type
  compiler_ULONGWORD_TYPE* = object
type
  compiler_WCHAR_MAX_private* = object
type
  struct_nfct_labelmap* = object
type
  struct_nfct_filter_dump* = object
type
  struct_nfnl_iterator* = object
type
  struct_nfct_handle* = object
type
  compiler_SQUAD_TYPE* = object
type
  IPV6_RXSRCRT* = object
type
  compiler_REDIRECT_NTH* = object
type
  compiler_UQUAD_TYPE* = object
type
  struct_nfnl_subsys_handle* = object
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
  uint8_t* = compiler_uint8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:24:19
  uint16_t* = compiler_uint16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:25:20
  uint32_t* = compiler_uint32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:26:20
  uint64_t* = compiler_uint64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:27:20
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
  gid_t* = compiler_gid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:64:17
  mode_t* = compiler_mode_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:69:18
  nlink_t* = compiler_nlink_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:74:19
  uid_t* = compiler_uid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:79:17
  off_t* = compiler_off_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:85:17
  pid_t* = compiler_pid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:97:17
  id_t* = compiler_id_t      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:103:16
  ssize_t* = compiler_ssize_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:108:19
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
  int8_t* = compiler_int8_t  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:24:18
  int16_t* = compiler_int16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:25:19
  int32_t* = compiler_int32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:26:19
  int64_t* = compiler_int64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:27:19
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
  socklen_t* = compiler_socklen_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/socket.h:33:21
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
  in_addr_t* = uint32        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:30:18
  struct_in_addr* {.pure, inheritable, bycopy.} = object
    s_addr*: in_addr_t       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:31:8
  struct_ip_opts* {.pure, inheritable, bycopy.} = object
    ip_dst*: struct_in_addr  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:145:8
    ip_opts*: array[40'i64, uint8]
  struct_in_pktinfo* {.pure, inheritable, bycopy.} = object
    ipi_ifindex*: cint       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:152:8
    ipi_spec_dst*: struct_in_addr
    ipi_addr*: struct_in_addr
  in_port_t* = uint16        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:125:18
  struct_in6_addr_compiler_in6_u_t* {.union, bycopy.} = object
    compiler_u6_addr8*: array[16'i64, uint8]
    compiler_u6_addr16*: array[8'i64, uint16]
    compiler_u6_addr32*: array[4'i64, uint32]
  struct_in6_addr* {.pure, inheritable, bycopy.} = object
    compiler_in6_u*: struct_in6_addr_compiler_in6_u_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:221:8
  struct_sockaddr_in* {.pure, inheritable, bycopy.} = object
    sin_family*: sa_family_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:247:39
    sin_port*: in_port_t
    sin_addr*: struct_in_addr
    sin_zero*: array[8'i64, uint8]
  struct_sockaddr_in6* {.pure, inheritable, bycopy.} = object
    sin6_family*: sa_family_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:264:39
    sin6_port*: in_port_t
    sin6_flowinfo*: uint32
    sin6_addr*: struct_in6_addr
    sin6_scope_id*: uint32
  struct_ip_mreq* {.pure, inheritable, bycopy.} = object
    imr_multiaddr*: struct_in_addr ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:276:8
    imr_interface*: struct_in_addr
  struct_ip_mreqn* {.pure, inheritable, bycopy.} = object
    imr_multiaddr*: struct_in_addr ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:286:8
    imr_address*: struct_in_addr
    imr_ifindex*: cint
  struct_ip_mreq_source* {.pure, inheritable, bycopy.} = object
    imr_multiaddr*: struct_in_addr ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:298:8
    imr_interface*: struct_in_addr
    imr_sourceaddr*: struct_in_addr
  struct_ipv6_mreq* {.pure, inheritable, bycopy.} = object
    ipv6mr_multiaddr*: struct_in6_addr ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:313:8
    ipv6mr_interface*: cuint
  struct_group_req* {.pure, inheritable, bycopy.} = object
    gr_interface*: uint32    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:325:8
    gr_group*: struct_sockaddr_storage
  struct_group_source_req* {.pure, inheritable, bycopy.} = object
    gsr_interface*: uint32   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:334:8
    gsr_group*: struct_sockaddr_storage
    gsr_source*: struct_sockaddr_storage
  struct_ip_msfilter* {.pure, inheritable, bycopy.} = object
    imsf_multiaddr*: struct_in_addr ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:348:8
    imsf_interface*: struct_in_addr
    imsf_fmode*: uint32
    imsf_numsrc*: uint32
    imsf_slist*: array[1'i64, struct_in_addr]
  struct_group_filter* {.pure, inheritable, bycopy.} = object
    gf_interface*: uint32    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:369:8
    gf_group*: struct_sockaddr_storage
    gf_fmode*: uint32
    gf_numsrc*: uint32
    gf_slist*: array[1'i64, struct_sockaddr_storage]
  struct_nfattr* {.pure, inheritable, bycopy.} = object
    nfa_len*: compiler_u16   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:23:8
    nfa_type*: compiler_u16
  compiler_u16* = cushort    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:24:24
  struct_nfgenmsg* {.pure, inheritable, bycopy.} = object
    nfgen_family*: compiler_u8 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:27:8
    version*: compiler_u8
    res_id*: compiler_be16
  compiler_u8* = uint8       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:21:23
  compiler_be16* = compiler_u16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/types.h:32:25
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
  struct_nfnlhdr* {.pure, inheritable, bycopy.} = object
    nlh*: struct_nlmsghdr    ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:55:8
    nfmsg*: struct_nfgenmsg
  struct_nlmsghdr* {.pure, inheritable, bycopy.} = object
    nlmsg_len*: compiler_u32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:52:8
    nlmsg_type*: compiler_u16
    nlmsg_flags*: compiler_u16
    nlmsg_seq*: compiler_u32
    nlmsg_pid*: compiler_u32
  struct_nfnl_callback* {.pure, inheritable, bycopy.} = object
    call*: proc (a0: ptr struct_nlmsghdr;
                 a1: ptr UncheckedArray[ptr struct_nfattr]; a2: pointer): cint {.
        cdecl.}              ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:60:8
    data*: pointer
    attr_count*: uint16
  struct_sockaddr_nl* {.pure, inheritable, bycopy.} = object
    nl_family*: compiler_kernel_sa_family_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:37:8
    nl_pad*: cushort
    nl_pid*: compiler_u32
    nl_groups*: compiler_u32
  struct_nfct_attr_grp_ipv4* {.pure, inheritable, bycopy.} = object
    src*: uint32             ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:171:8
    dst*: uint32
  struct_nfct_attr_grp_ipv6* {.pure, inheritable, bycopy.} = object
    src*: array[4'i64, uint32] ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:175:8
    dst*: array[4'i64, uint32]
  struct_nfct_attr_grp_port* {.pure, inheritable, bycopy.} = object
    sport*: uint16           ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:179:8
    dport*: uint16
  struct_nfct_attr_grp_icmp* {.pure, inheritable, bycopy.} = object
    id*: uint16              ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:183:8
    code*: uint8
    type_field*: uint8
  struct_nfct_attr_grp_ctrs* {.pure, inheritable, bycopy.} = object
    packets*: uint64         ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:188:8
    bytes*: uint64
  union_nfct_attr_grp_addr* {.union, bycopy.} = object
    ip*: uint32              ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:193:7
    ip6*: array[4'i64, uint32]
    addr_field*: array[4'i64, uint32]
  struct_nfct_filter_proto* {.pure, inheritable, bycopy.} = object
    proto*: uint16           ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:492:8
    state*: uint16
  struct_nfct_filter_ipv4* {.pure, inheritable, bycopy.} = object
    addr_field*: uint32      ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:496:8
    mask*: uint32
  struct_nfct_filter_ipv6* {.pure, inheritable, bycopy.} = object
    addr_field*: array[4'i64, uint32] ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:500:8
    mask*: array[4'i64, uint32]
  struct_nfct_filter_dump_mark* {.pure, inheritable, bycopy.} = object
    val*: uint32             ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:542:8
    mask*: uint32
  compiler_u32* = cuint      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:27:22
  compiler_kernel_sa_family_t* = cushort ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:10:24
when 1 is static:
  const
    internal_NETINET_IN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:19:9
else:
  let internal_NETINET_IN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:19:9
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
when 1 is static:
  const
    internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:20:9
else:
  let internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-uintn.h:20:9
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
    internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:20:9
else:
  let internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/stdint-intn.h:20:9
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
    compiler_USE_KERNEL_IPV6_DEFS* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:41:10
else:
  let compiler_USE_KERNEL_IPV6_DEFS* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:41:10
when 4 is static:
  const
    IP_OPTIONS* = 4          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:47:16
else:
  let IP_OPTIONS* = 4        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:47:16
when 3 is static:
  const
    IP_HDRINCL* = 3          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:48:16
else:
  let IP_HDRINCL* = 3        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:48:16
when 1 is static:
  const
    IP_TOS* = 1              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:49:16
else:
  let IP_TOS* = 1            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:49:16
when 2 is static:
  const
    IP_TTL* = 2              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:50:16
else:
  let IP_TTL* = 2            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:50:16
when 6 is static:
  const
    IP_RECVOPTS* = 6         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:51:16
else:
  let IP_RECVOPTS* = 6       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:51:16
when 7 is static:
  const
    IP_RETOPTS* = 7          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:54:16
else:
  let IP_RETOPTS* = 7        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:54:16
when 32 is static:
  const
    IP_MULTICAST_IF* = 32    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:119:9
else:
  let IP_MULTICAST_IF* = 32  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:119:9
when 33 is static:
  const
    IP_MULTICAST_TTL* = 33   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:120:9
else:
  let IP_MULTICAST_TTL* = 33 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:120:9
when 34 is static:
  const
    IP_MULTICAST_LOOP* = 34  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:121:9
else:
  let IP_MULTICAST_LOOP* = 34 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:121:9
when 35 is static:
  const
    IP_ADD_MEMBERSHIP* = 35  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:122:9
else:
  let IP_ADD_MEMBERSHIP* = 35 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:122:9
when 36 is static:
  const
    IP_DROP_MEMBERSHIP* = 36 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:123:9
else:
  let IP_DROP_MEMBERSHIP* = 36 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:123:9
when 37 is static:
  const
    IP_UNBLOCK_SOURCE* = 37  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:124:9
else:
  let IP_UNBLOCK_SOURCE* = 37 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:124:9
when 38 is static:
  const
    IP_BLOCK_SOURCE* = 38    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:125:9
else:
  let IP_BLOCK_SOURCE* = 38  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:125:9
when 39 is static:
  const
    IP_ADD_SOURCE_MEMBERSHIP* = 39 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:126:9
else:
  let IP_ADD_SOURCE_MEMBERSHIP* = 39 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:126:9
when 40 is static:
  const
    IP_DROP_SOURCE_MEMBERSHIP* = 40 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:127:9
else:
  let IP_DROP_SOURCE_MEMBERSHIP* = 40 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:127:9
when 41 is static:
  const
    IP_MSFILTER* = 41        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:128:9
else:
  let IP_MSFILTER* = 41      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:128:9
when 42 is static:
  const
    MCAST_JOIN_GROUP* = 42   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:66:10
else:
  let MCAST_JOIN_GROUP* = 42 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:66:10
when 43 is static:
  const
    MCAST_BLOCK_SOURCE* = 43 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:67:10
else:
  let MCAST_BLOCK_SOURCE* = 43 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:67:10
when 44 is static:
  const
    MCAST_UNBLOCK_SOURCE* = 44 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:68:10
else:
  let MCAST_UNBLOCK_SOURCE* = 44 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:68:10
when 45 is static:
  const
    MCAST_LEAVE_GROUP* = 45  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:69:10
else:
  let MCAST_LEAVE_GROUP* = 45 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:69:10
when 46 is static:
  const
    MCAST_JOIN_SOURCE_GROUP* = 46 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:70:10
else:
  let MCAST_JOIN_SOURCE_GROUP* = 46 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:70:10
when 47 is static:
  const
    MCAST_LEAVE_SOURCE_GROUP* = 47 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:71:10
else:
  let MCAST_LEAVE_SOURCE_GROUP* = 47 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:71:10
when 48 is static:
  const
    MCAST_MSFILTER* = 48     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:72:10
else:
  let MCAST_MSFILTER* = 48   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:72:10
when 49 is static:
  const
    IP_MULTICAST_ALL* = 49   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:129:9
else:
  let IP_MULTICAST_ALL* = 49 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:129:9
when 50 is static:
  const
    IP_UNICAST_IF* = 50      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:130:9
else:
  let IP_UNICAST_IF* = 50    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:130:9
when 0 is static:
  const
    MCAST_EXCLUDE* = 0       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:76:10
else:
  let MCAST_EXCLUDE* = 0     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:76:10
when 1 is static:
  const
    MCAST_INCLUDE* = 1       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:77:10
else:
  let MCAST_INCLUDE* = 1     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:77:10
when 5 is static:
  const
    IP_ROUTER_ALERT* = 5     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:80:9
else:
  let IP_ROUTER_ALERT* = 5   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:80:9
when 8 is static:
  const
    IP_PKTINFO* = 8          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:81:9
else:
  let IP_PKTINFO* = 8        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:81:9
when 9 is static:
  const
    IP_PKTOPTIONS* = 9       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:82:9
else:
  let IP_PKTOPTIONS* = 9     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:82:9
when 10 is static:
  const
    IP_PMTUDISC* = 10        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:83:9
else:
  let IP_PMTUDISC* = 10      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:83:9
when 10 is static:
  const
    IP_MTU_DISCOVER* = 10    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:84:9
else:
  let IP_MTU_DISCOVER* = 10  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:84:9
when 11 is static:
  const
    IP_RECVERR* = 11         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:85:9
else:
  let IP_RECVERR* = 11       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:85:9
when 12 is static:
  const
    IP_RECVTTL* = 12         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:86:9
else:
  let IP_RECVTTL* = 12       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:86:9
when 13 is static:
  const
    IP_RECVTOS* = 13         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:87:9
else:
  let IP_RECVTOS* = 13       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:87:9
when 14 is static:
  const
    IP_MTU* = 14             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:88:9
else:
  let IP_MTU* = 14           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:88:9
when 15 is static:
  const
    IP_FREEBIND* = 15        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:89:9
else:
  let IP_FREEBIND* = 15      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:89:9
when 16 is static:
  const
    IP_IPSEC_POLICY* = 16    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:90:9
else:
  let IP_IPSEC_POLICY* = 16  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:90:9
when 17 is static:
  const
    IP_XFRM_POLICY* = 17     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:91:9
else:
  let IP_XFRM_POLICY* = 17   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:91:9
when 18 is static:
  const
    IP_PASSSEC* = 18         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:92:9
else:
  let IP_PASSSEC* = 18       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:92:9
when 19 is static:
  const
    IP_TRANSPARENT* = 19     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:93:9
else:
  let IP_TRANSPARENT* = 19   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:93:9
when 20 is static:
  const
    IP_ORIGDSTADDR* = 20     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:97:9
else:
  let IP_ORIGDSTADDR* = 20   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:97:9
when IP_ORIGDSTADDR is typedesc:
  type
    IP_RECVORIGDSTADDR* = IP_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:98:9
else:
  when IP_ORIGDSTADDR is static:
    const
      IP_RECVORIGDSTADDR* = IP_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:98:9
  else:
    let IP_RECVORIGDSTADDR* = IP_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:98:9
when 21 is static:
  const
    IP_MINTTL* = 21          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:100:9
else:
  let IP_MINTTL* = 21        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:100:9
when 22 is static:
  const
    IP_NODEFRAG* = 22        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:101:9
else:
  let IP_NODEFRAG* = 22      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:101:9
when 23 is static:
  const
    IP_CHECKSUM* = 23        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:102:9
else:
  let IP_CHECKSUM* = 23      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:102:9
when 24 is static:
  const
    IP_BIND_ADDRESS_NO_PORT* = 24 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:103:9
else:
  let IP_BIND_ADDRESS_NO_PORT* = 24 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:103:9
when 25 is static:
  const
    IP_RECVFRAGSIZE* = 25    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:104:9
else:
  let IP_RECVFRAGSIZE* = 25  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:104:9
when 26 is static:
  const
    IP_RECVERR_RFC4884* = 26 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:105:9
else:
  let IP_RECVERR_RFC4884* = 26 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:105:9
when 0 is static:
  const
    IP_PMTUDISC_DONT* = 0    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:108:9
else:
  let IP_PMTUDISC_DONT* = 0  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:108:9
when 1 is static:
  const
    IP_PMTUDISC_WANT* = 1    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:109:9
else:
  let IP_PMTUDISC_WANT* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:109:9
when 2 is static:
  const
    IP_PMTUDISC_DO* = 2      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:110:9
else:
  let IP_PMTUDISC_DO* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:110:9
when 3 is static:
  const
    IP_PMTUDISC_PROBE* = 3   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:111:9
else:
  let IP_PMTUDISC_PROBE* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:111:9
when 4 is static:
  const
    IP_PMTUDISC_INTERFACE* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:115:9
else:
  let IP_PMTUDISC_INTERFACE* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:115:9
when 5 is static:
  const
    IP_PMTUDISC_OMIT* = 5    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:117:9
else:
  let IP_PMTUDISC_OMIT* = 5  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:117:9
when 51 is static:
  const
    IP_LOCAL_PORT_RANGE* = 51 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:131:9
else:
  let IP_LOCAL_PORT_RANGE* = 51 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:131:9
when 52 is static:
  const
    IP_PROTOCOL* = 52        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:132:9
else:
  let IP_PROTOCOL* = 52      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:132:9
when 0 is static:
  const
    SOL_IP* = 0              ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:135:9
else:
  let SOL_IP* = 0            ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:135:9
when 1 is static:
  const
    IP_DEFAULT_MULTICAST_TTL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:137:9
else:
  let IP_DEFAULT_MULTICAST_TTL* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:137:9
when 1 is static:
  const
    IP_DEFAULT_MULTICAST_LOOP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:138:9
else:
  let IP_DEFAULT_MULTICAST_LOOP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:138:9
when 20 is static:
  const
    IP_MAX_MEMBERSHIPS* = 20 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:139:9
else:
  let IP_MAX_MEMBERSHIPS* = 20 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:139:9
when 1 is static:
  const
    IPV6_ADDRFORM* = 1       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:163:9
else:
  let IPV6_ADDRFORM* = 1     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:163:9
when 2 is static:
  const
    IPV6_2292PKTINFO* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:164:9
else:
  let IPV6_2292PKTINFO* = 2  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:164:9
when 3 is static:
  const
    IPV6_2292HOPOPTS* = 3    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:165:9
else:
  let IPV6_2292HOPOPTS* = 3  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:165:9
when 4 is static:
  const
    IPV6_2292DSTOPTS* = 4    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:166:9
else:
  let IPV6_2292DSTOPTS* = 4  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:166:9
when 5 is static:
  const
    IPV6_2292RTHDR* = 5      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:167:9
else:
  let IPV6_2292RTHDR* = 5    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:167:9
when 6 is static:
  const
    IPV6_2292PKTOPTIONS* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:168:9
else:
  let IPV6_2292PKTOPTIONS* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:168:9
when 7 is static:
  const
    IPV6_CHECKSUM* = 7       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:169:9
else:
  let IPV6_CHECKSUM* = 7     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:169:9
when 8 is static:
  const
    IPV6_2292HOPLIMIT* = 8   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:170:9
else:
  let IPV6_2292HOPLIMIT* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:170:9
when IPV6_RXSRCRT is typedesc:
  type
    SCM_SRCRT* = IPV6_RXSRCRT ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:172:9
else:
  when IPV6_RXSRCRT is static:
    const
      SCM_SRCRT* = IPV6_RXSRCRT ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:172:9
  else:
    let SCM_SRCRT* = IPV6_RXSRCRT ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:172:9
when 9 is static:
  const
    IPV6_NEXTHOP* = 9        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:174:9
else:
  let IPV6_NEXTHOP* = 9      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:174:9
when 10 is static:
  const
    IPV6_AUTHHDR* = 10       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:175:9
else:
  let IPV6_AUTHHDR* = 10     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:175:9
when 16 is static:
  const
    IPV6_UNICAST_HOPS* = 16  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:176:9
else:
  let IPV6_UNICAST_HOPS* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:176:9
when 17 is static:
  const
    IPV6_MULTICAST_IF* = 17  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:177:9
else:
  let IPV6_MULTICAST_IF* = 17 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:177:9
when 18 is static:
  const
    IPV6_MULTICAST_HOPS* = 18 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:178:9
else:
  let IPV6_MULTICAST_HOPS* = 18 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:178:9
when 19 is static:
  const
    IPV6_MULTICAST_LOOP* = 19 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:179:9
else:
  let IPV6_MULTICAST_LOOP* = 19 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:179:9
when 20 is static:
  const
    IPV6_JOIN_GROUP* = 20    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:180:9
else:
  let IPV6_JOIN_GROUP* = 20  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:180:9
when 21 is static:
  const
    IPV6_LEAVE_GROUP* = 21   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:181:9
else:
  let IPV6_LEAVE_GROUP* = 21 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:181:9
when 22 is static:
  const
    IPV6_ROUTER_ALERT* = 22  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:182:9
else:
  let IPV6_ROUTER_ALERT* = 22 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:182:9
when 23 is static:
  const
    IPV6_MTU_DISCOVER* = 23  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:183:9
else:
  let IPV6_MTU_DISCOVER* = 23 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:183:9
when 24 is static:
  const
    IPV6_MTU* = 24           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:184:9
else:
  let IPV6_MTU* = 24         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:184:9
when 25 is static:
  const
    IPV6_RECVERR* = 25       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:185:9
else:
  let IPV6_RECVERR* = 25     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:185:9
when 26 is static:
  const
    IPV6_V6ONLY* = 26        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:186:9
else:
  let IPV6_V6ONLY* = 26      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:186:9
when 27 is static:
  const
    IPV6_JOIN_ANYCAST* = 27  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:187:9
else:
  let IPV6_JOIN_ANYCAST* = 27 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:187:9
when 28 is static:
  const
    IPV6_LEAVE_ANYCAST* = 28 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:188:9
else:
  let IPV6_LEAVE_ANYCAST* = 28 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:188:9
when 29 is static:
  const
    IPV6_MULTICAST_ALL* = 29 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:189:9
else:
  let IPV6_MULTICAST_ALL* = 29 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:189:9
when 30 is static:
  const
    IPV6_ROUTER_ALERT_ISOLATE* = 30 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:190:9
else:
  let IPV6_ROUTER_ALERT_ISOLATE* = 30 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:190:9
when 31 is static:
  const
    IPV6_RECVERR_RFC4884* = 31 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:191:9
else:
  let IPV6_RECVERR_RFC4884* = 31 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:191:9
when 34 is static:
  const
    IPV6_IPSEC_POLICY* = 34  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:192:9
else:
  let IPV6_IPSEC_POLICY* = 34 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:192:9
when 35 is static:
  const
    IPV6_XFRM_POLICY* = 35   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:193:9
else:
  let IPV6_XFRM_POLICY* = 35 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:193:9
when 36 is static:
  const
    IPV6_HDRINCL* = 36       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:194:9
else:
  let IPV6_HDRINCL* = 36     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:194:9
when 49 is static:
  const
    IPV6_RECVPKTINFO* = 49   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:197:9
else:
  let IPV6_RECVPKTINFO* = 49 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:197:9
when 50 is static:
  const
    IPV6_PKTINFO* = 50       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:198:9
else:
  let IPV6_PKTINFO* = 50     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:198:9
when 51 is static:
  const
    IPV6_RECVHOPLIMIT* = 51  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:199:9
else:
  let IPV6_RECVHOPLIMIT* = 51 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:199:9
when 52 is static:
  const
    IPV6_HOPLIMIT* = 52      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:200:9
else:
  let IPV6_HOPLIMIT* = 52    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:200:9
when 53 is static:
  const
    IPV6_RECVHOPOPTS* = 53   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:201:9
else:
  let IPV6_RECVHOPOPTS* = 53 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:201:9
when 54 is static:
  const
    IPV6_HOPOPTS* = 54       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:202:9
else:
  let IPV6_HOPOPTS* = 54     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:202:9
when 55 is static:
  const
    IPV6_RTHDRDSTOPTS* = 55  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:203:9
else:
  let IPV6_RTHDRDSTOPTS* = 55 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:203:9
when 56 is static:
  const
    IPV6_RECVRTHDR* = 56     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:204:9
else:
  let IPV6_RECVRTHDR* = 56   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:204:9
when 57 is static:
  const
    IPV6_RTHDR* = 57         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:205:9
else:
  let IPV6_RTHDR* = 57       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:205:9
when 58 is static:
  const
    IPV6_RECVDSTOPTS* = 58   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:206:9
else:
  let IPV6_RECVDSTOPTS* = 58 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:206:9
when 59 is static:
  const
    IPV6_DSTOPTS* = 59       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:207:9
else:
  let IPV6_DSTOPTS* = 59     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:207:9
when 60 is static:
  const
    IPV6_RECVPATHMTU* = 60   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:208:9
else:
  let IPV6_RECVPATHMTU* = 60 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:208:9
when 61 is static:
  const
    IPV6_PATHMTU* = 61       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:209:9
else:
  let IPV6_PATHMTU* = 61     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:209:9
when 62 is static:
  const
    IPV6_DONTFRAG* = 62      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:210:9
else:
  let IPV6_DONTFRAG* = 62    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:210:9
when 66 is static:
  const
    IPV6_RECVTCLASS* = 66    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:213:9
else:
  let IPV6_RECVTCLASS* = 66  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:213:9
when 67 is static:
  const
    IPV6_TCLASS* = 67        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:214:9
else:
  let IPV6_TCLASS* = 67      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:214:9
when 70 is static:
  const
    IPV6_AUTOFLOWLABEL* = 70 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:216:9
else:
  let IPV6_AUTOFLOWLABEL* = 70 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:216:9
when 72 is static:
  const
    IPV6_ADDR_PREFERENCES* = 72 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:219:9
else:
  let IPV6_ADDR_PREFERENCES* = 72 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:219:9
when 73 is static:
  const
    IPV6_MINHOPCOUNT* = 73   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:222:9
else:
  let IPV6_MINHOPCOUNT* = 73 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:222:9
when 74 is static:
  const
    IPV6_ORIGDSTADDR* = 74   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:224:9
else:
  let IPV6_ORIGDSTADDR* = 74 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:224:9
when IPV6_ORIGDSTADDR is typedesc:
  type
    IPV6_RECVORIGDSTADDR* = IPV6_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:225:9
else:
  when IPV6_ORIGDSTADDR is static:
    const
      IPV6_RECVORIGDSTADDR* = IPV6_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:225:9
  else:
    let IPV6_RECVORIGDSTADDR* = IPV6_ORIGDSTADDR ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:225:9
when 75 is static:
  const
    IPV6_TRANSPARENT* = 75   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:226:9
else:
  let IPV6_TRANSPARENT* = 75 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:226:9
when 76 is static:
  const
    IPV6_UNICAST_IF* = 76    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:227:9
else:
  let IPV6_UNICAST_IF* = 76  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:227:9
when 77 is static:
  const
    IPV6_RECVFRAGSIZE* = 77  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:228:9
else:
  let IPV6_RECVFRAGSIZE* = 77 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:228:9
when 78 is static:
  const
    IPV6_FREEBIND* = 78      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:229:9
else:
  let IPV6_FREEBIND* = 78    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:229:9
when IPV6_JOIN_GROUP is typedesc:
  type
    IPV6_ADD_MEMBERSHIP* = IPV6_JOIN_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:233:10
else:
  when IPV6_JOIN_GROUP is static:
    const
      IPV6_ADD_MEMBERSHIP* = IPV6_JOIN_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:233:10
  else:
    let IPV6_ADD_MEMBERSHIP* = IPV6_JOIN_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:233:10
when IPV6_LEAVE_GROUP is typedesc:
  type
    IPV6_DROP_MEMBERSHIP* = IPV6_LEAVE_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:234:10
else:
  when IPV6_LEAVE_GROUP is static:
    const
      IPV6_DROP_MEMBERSHIP* = IPV6_LEAVE_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:234:10
  else:
    let IPV6_DROP_MEMBERSHIP* = IPV6_LEAVE_GROUP ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:234:10
when IPV6_HOPOPTS is typedesc:
  type
    IPV6_RXHOPOPTS* = IPV6_HOPOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:236:9
else:
  when IPV6_HOPOPTS is static:
    const
      IPV6_RXHOPOPTS* = IPV6_HOPOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:236:9
  else:
    let IPV6_RXHOPOPTS* = IPV6_HOPOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:236:9
when IPV6_DSTOPTS is typedesc:
  type
    IPV6_RXDSTOPTS* = IPV6_DSTOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:237:9
else:
  when IPV6_DSTOPTS is static:
    const
      IPV6_RXDSTOPTS* = IPV6_DSTOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:237:9
  else:
    let IPV6_RXDSTOPTS* = IPV6_DSTOPTS ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:237:9
when 0 is static:
  const
    IPV6_PMTUDISC_DONT* = 0  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:240:9
else:
  let IPV6_PMTUDISC_DONT* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:240:9
when 1 is static:
  const
    IPV6_PMTUDISC_WANT* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:241:9
else:
  let IPV6_PMTUDISC_WANT* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:241:9
when 2 is static:
  const
    IPV6_PMTUDISC_DO* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:242:9
else:
  let IPV6_PMTUDISC_DO* = 2  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:242:9
when 3 is static:
  const
    IPV6_PMTUDISC_PROBE* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:243:9
else:
  let IPV6_PMTUDISC_PROBE* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:243:9
when 4 is static:
  const
    IPV6_PMTUDISC_INTERFACE* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:244:9
else:
  let IPV6_PMTUDISC_INTERFACE* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:244:9
when 5 is static:
  const
    IPV6_PMTUDISC_OMIT* = 5  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:245:9
else:
  let IPV6_PMTUDISC_OMIT* = 5 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:245:9
when 41 is static:
  const
    SOL_IPV6* = 41           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:248:9
else:
  let SOL_IPV6* = 41         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:248:9
when 58 is static:
  const
    SOL_ICMPV6* = 58         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:249:9
else:
  let SOL_ICMPV6* = 58       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:249:9
when 0 is static:
  const
    IPV6_RTHDR_LOOSE* = 0    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:252:9
else:
  let IPV6_RTHDR_LOOSE* = 0  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:252:9
when 1 is static:
  const
    IPV6_RTHDR_STRICT* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:253:9
else:
  let IPV6_RTHDR_STRICT* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:253:9
when 0 is static:
  const
    IPV6_RTHDR_TYPE_0* = 0   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:255:9
else:
  let IPV6_RTHDR_TYPE_0* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/in.h:255:9
when 4278190080 is static:
  const
    IN_CLASSA_NET* = 4278190080'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:173:9
else:
  let IN_CLASSA_NET* = 4278190080'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:173:9
when 24 is static:
  const
    IN_CLASSA_NSHIFT* = 24   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:174:9
else:
  let IN_CLASSA_NSHIFT* = 24 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:174:9
when 128 is static:
  const
    IN_CLASSA_MAX* = 128     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:176:9
else:
  let IN_CLASSA_MAX* = 128   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:176:9
when 4294901760 is static:
  const
    IN_CLASSB_NET* = 4294901760'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:179:9
else:
  let IN_CLASSB_NET* = 4294901760'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:179:9
when 16 is static:
  const
    IN_CLASSB_NSHIFT* = 16   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:180:9
else:
  let IN_CLASSB_NSHIFT* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:180:9
when 65536 is static:
  const
    IN_CLASSB_MAX* = 65536   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:182:9
else:
  let IN_CLASSB_MAX* = 65536 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:182:9
when 4294967040 is static:
  const
    IN_CLASSC_NET* = 4294967040'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:185:9
else:
  let IN_CLASSC_NET* = 4294967040'i64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:185:9
when 8 is static:
  const
    IN_CLASSC_NSHIFT* = 8    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:186:9
else:
  let IN_CLASSC_NSHIFT* = 8  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:186:9
when 127 is static:
  const
    IN_LOOPBACKNET* = 127    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:206:9
else:
  let IN_LOOPBACKNET* = 127  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:206:9
when 16 is static:
  const
    INET_ADDRSTRLEN* = 16    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:242:9
else:
  let INET_ADDRSTRLEN* = 16  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:242:9
when 46 is static:
  const
    INET6_ADDRSTRLEN* = 46   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:243:9
else:
  let INET6_ADDRSTRLEN* = 46 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/netinet/in.h:243:9
when 1 is static:
  const
    NF_NETLINK_CONNTRACK_NEW* = 1 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:9:9
else:
  let NF_NETLINK_CONNTRACK_NEW* = 1 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:9:9
when 2 is static:
  const
    NF_NETLINK_CONNTRACK_UPDATE* = 2 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:10:9
else:
  let NF_NETLINK_CONNTRACK_UPDATE* = 2 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:10:9
when 4 is static:
  const
    NF_NETLINK_CONNTRACK_DESTROY* = 4 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:11:9
else:
  let NF_NETLINK_CONNTRACK_DESTROY* = 4 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:11:9
when 8 is static:
  const
    NF_NETLINK_CONNTRACK_EXP_NEW* = 8 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:12:9
else:
  let NF_NETLINK_CONNTRACK_EXP_NEW* = 8 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:12:9
when 16 is static:
  const
    NF_NETLINK_CONNTRACK_EXP_UPDATE* = 16 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:13:9
else:
  let NF_NETLINK_CONNTRACK_EXP_UPDATE* = 16 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:13:9
when 32 is static:
  const
    NF_NETLINK_CONNTRACK_EXP_DESTROY* = 32 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:14:9
else:
  let NF_NETLINK_CONNTRACK_EXP_DESTROY* = 32 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:14:9
when 32768 is static:
  const
    NFNL_NFA_NEST* = 32768   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:32:9
else:
  let NFNL_NFA_NEST* = 32768 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:32:9
when 4 is static:
  const
    NFA_ALIGNTO* = 4         ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:35:9
else:
  let NFA_ALIGNTO* = 4       ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink_compat.h:35:9
when 0 is static:
  const
    NFNETLINK_V0* = 0        ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:33:9
else:
  let NFNETLINK_V0* = 0      ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:33:9
when 0 is static:
  const
    NFNL_SUBSYS_NONE* = 0    ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:44:9
else:
  let NFNL_SUBSYS_NONE* = 0  ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:44:9
when 1 is static:
  const
    NFNL_SUBSYS_CTNETLINK* = 1 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:45:9
else:
  let NFNL_SUBSYS_CTNETLINK* = 1 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:45:9
when 2 is static:
  const
    NFNL_SUBSYS_CTNETLINK_EXP* = 2 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:46:9
else:
  let NFNL_SUBSYS_CTNETLINK_EXP* = 2 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:46:9
when 3 is static:
  const
    NFNL_SUBSYS_QUEUE* = 3   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:47:9
else:
  let NFNL_SUBSYS_QUEUE* = 3 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:47:9
when 4 is static:
  const
    NFNL_SUBSYS_ULOG* = 4    ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:48:9
else:
  let NFNL_SUBSYS_ULOG* = 4  ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:48:9
when 5 is static:
  const
    NFNL_SUBSYS_OSF* = 5     ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:49:9
else:
  let NFNL_SUBSYS_OSF* = 5   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:49:9
when 6 is static:
  const
    NFNL_SUBSYS_IPSET* = 6   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:50:9
else:
  let NFNL_SUBSYS_IPSET* = 6 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:50:9
when 7 is static:
  const
    NFNL_SUBSYS_COUNT* = 7   ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:51:9
else:
  let NFNL_SUBSYS_COUNT* = 7 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/linux_nfnetlink.h:51:9
when 1 is static:
  const
    internal_STDINT_H* = 1   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:23:9
else:
  let internal_STDINT_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/stdint.h:23:9
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
    internal_BITS_WCHAR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wchar.h:20:9
else:
  let internal_BITS_WCHAR_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/wchar.h:20:9
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
when 4 is static:
  const
    NETLINK_BROADCAST_SEND_ERROR* = 4 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:32:9
else:
  let NETLINK_BROADCAST_SEND_ERROR* = 4 ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:32:9
when 8192 is static:
  const
    NFNL_BUFFSIZE* = 8192    ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:45:9
else:
  let NFNL_BUFFSIZE* = 8192  ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:45:9
when 16 is static:
  const
    IFNAMSIZ* = 16           ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:218:9
else:
  let IFNAMSIZ* = 16         ## Generated based on /nix/store/3c14s9n2pj710mgg0vzfyh1rdvaz35cd-libnfnetlink-1.0.2/include/libnfnetlink/libnfnetlink.h:218:9
when 1 is static:
  const
    internal_BYTESWAP_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/byteswap.h:20:9
else:
  let internal_BYTESWAP_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/byteswap.h:20:9
when CTA_NAT_SRC is typedesc:
  type
    CTA_NAT* = CTA_NAT_SRC   ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:40:9
else:
  when CTA_NAT_SRC is static:
    const
      CTA_NAT* = CTA_NAT_SRC ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:40:9
  else:
    let CTA_NAT* = CTA_NAT_SRC ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:40:9
when CTA_NAT_V4_MINIP is typedesc:
  type
    CTA_NAT_MINIP* = CTA_NAT_V4_MINIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:163:9
else:
  when CTA_NAT_V4_MINIP is static:
    const
      CTA_NAT_MINIP* = CTA_NAT_V4_MINIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:163:9
  else:
    let CTA_NAT_MINIP* = CTA_NAT_V4_MINIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:163:9
when CTA_NAT_V4_MAXIP is typedesc:
  type
    CTA_NAT_MAXIP* = CTA_NAT_V4_MAXIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:165:9
else:
  when CTA_NAT_V4_MAXIP is static:
    const
      CTA_NAT_MAXIP* = CTA_NAT_V4_MAXIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:165:9
  else:
    let CTA_NAT_MAXIP* = CTA_NAT_V4_MAXIP ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nfnetlink_conntrack.h:165:9
when 1 is static:
  const
    NF_CT_EXPECT_PERMANENT* = 1 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:163:9
else:
  let NF_CT_EXPECT_PERMANENT* = 1 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:163:9
when 2 is static:
  const
    NF_CT_EXPECT_INACTIVE* = 2 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:164:9
else:
  let NF_CT_EXPECT_INACTIVE* = 2 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:164:9
when 4 is static:
  const
    NF_CT_EXPECT_USERSPACE* = 4 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:165:9
else:
  let NF_CT_EXPECT_USERSPACE* = 4 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/linux_nf_conntrack_common.h:165:9
when 1 is static:
  const
    IP_CT_TCP_FLAG_WINDOW_SCALE* = 1 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:752:9
else:
  let IP_CT_TCP_FLAG_WINDOW_SCALE* = 1 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:752:9
when 2 is static:
  const
    IP_CT_TCP_FLAG_SACK_PERM* = 2 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:755:9
else:
  let IP_CT_TCP_FLAG_SACK_PERM* = 2 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:755:9
when 4 is static:
  const
    IP_CT_TCP_FLAG_CLOSE_INIT* = 4 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:758:9
else:
  let IP_CT_TCP_FLAG_CLOSE_INIT* = 4 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:758:9
when 8 is static:
  const
    IP_CT_TCP_FLAG_BE_LIBERAL* = 8 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:761:9
else:
  let IP_CT_TCP_FLAG_BE_LIBERAL* = 8 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:761:9
when 0 is static:
  const
    NFCT_DIR_ORIGINAL* = 0   ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:765:9
else:
  let NFCT_DIR_ORIGINAL* = 0 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:765:9
when 1 is static:
  const
    NFCT_DIR_REPLY* = 1      ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:766:9
else:
  let NFCT_DIR_REPLY* = 1    ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:766:9
when 16 is static:
  const
    NFCT_HELPER_NAME_MAX* = 16 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:772:9
else:
  let NFCT_HELPER_NAME_MAX* = 16 ## Generated based on /nix/store/xdvx67a2ig5s78dmqd3ra31q043qld1r-libnetfilter_conntrack-1.1.0/include/libnetfilter_conntrack/libnetfilter_conntrack.h:772:9
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
var in6addr_any* {.importc: "in6addr_any".}: struct_in6_addr
var in6addr_loopback* {.importc: "in6addr_loopback".}: struct_in6_addr
proc ntohl*(compiler_netlong: uint32): uint32 {.cdecl, importc: "ntohl".}
proc ntohs*(compiler_netshort: uint16): uint16 {.cdecl, importc: "ntohs".}
proc htonl*(compiler_hostlong: uint32): uint32 {.cdecl, importc: "htonl".}
proc htons*(compiler_hostshort: uint16): uint16 {.cdecl, importc: "htons".}
proc bindresvport*(compiler_sockfd: cint;
                   compiler_sock_in: ptr struct_sockaddr_in): cint {.cdecl,
    importc: "bindresvport".}
proc bindresvport6*(compiler_sockfd: cint;
                    compiler_sock_in: ptr struct_sockaddr_in6): cint {.cdecl,
    importc: "bindresvport6".}
proc nfnl_fd*(h: ptr struct_nfnl_handle): cint {.cdecl, importc: "nfnl_fd".}
proc nfnl_portid*(h: ptr struct_nfnl_handle): cuint {.cdecl,
    importc: "nfnl_portid".}
proc nfnl_open*(): ptr struct_nfnl_handle {.cdecl, importc: "nfnl_open".}
proc nfnl_close*(a0: ptr struct_nfnl_handle): cint {.cdecl,
    importc: "nfnl_close".}
proc nfnl_subsys_open*(a0: ptr struct_nfnl_handle; a1: uint8; a2: uint8;
                       a3: cuint): ptr struct_nfnl_subsys_handle {.cdecl,
    importc: "nfnl_subsys_open".}
proc nfnl_subsys_close*(a0: ptr struct_nfnl_subsys_handle): void {.cdecl,
    importc: "nfnl_subsys_close".}
proc nfnl_set_sequence_tracking*(h: ptr struct_nfnl_handle): void {.cdecl,
    importc: "nfnl_set_sequence_tracking".}
proc nfnl_unset_sequence_tracking*(h: ptr struct_nfnl_handle): void {.cdecl,
    importc: "nfnl_unset_sequence_tracking".}
proc nfnl_set_rcv_buffer_size*(h: ptr struct_nfnl_handle; size: cuint): void {.
    cdecl, importc: "nfnl_set_rcv_buffer_size".}
proc nfnl_send*(a0: ptr struct_nfnl_handle; a1: ptr struct_nlmsghdr): cint {.
    cdecl, importc: "nfnl_send".}
proc nfnl_sendmsg*(a0: ptr struct_nfnl_handle; msg: ptr struct_msghdr;
                   flags: cuint): cint {.cdecl, importc: "nfnl_sendmsg".}
proc nfnl_sendiov*(nfnlh: ptr struct_nfnl_handle; iov: ptr struct_iovec;
                   num: cuint; flags: cuint): cint {.cdecl,
    importc: "nfnl_sendiov".}
proc nfnl_fill_hdr*(a0: ptr struct_nfnl_subsys_handle; a1: ptr struct_nlmsghdr;
                    a2: cuint; a3: uint8; a4: uint16; a5: uint16; a6: uint16): void {.
    cdecl, importc: "nfnl_fill_hdr".}
proc nfnl_talk*(a0: ptr struct_nfnl_handle; a1: ptr struct_nlmsghdr; a2: pid_t;
                a3: cuint; a4: ptr struct_nlmsghdr; a5: proc (
    a0: ptr struct_sockaddr_nl; a1: ptr struct_nlmsghdr; a2: pointer): cint {.
    cdecl.}; a6: pointer): cint {.cdecl, importc: "nfnl_talk".}
proc nfnl_listen*(a0: ptr struct_nfnl_handle; a1: proc (
    a0: ptr struct_sockaddr_nl; a1: ptr struct_nlmsghdr; a2: pointer): cint {.
    cdecl.}; a2: pointer): cint {.cdecl, importc: "nfnl_listen".}
proc nfnl_recv*(h: ptr struct_nfnl_handle; buf: ptr uint8; len: csize_t): ssize_t {.
    cdecl, importc: "nfnl_recv".}
proc nfnl_callback_register*(a0: ptr struct_nfnl_subsys_handle; type_arg: uint8;
                             cb: ptr struct_nfnl_callback): cint {.cdecl,
    importc: "nfnl_callback_register".}
proc nfnl_callback_unregister*(a0: ptr struct_nfnl_subsys_handle;
                               type_arg: uint8): cint {.cdecl,
    importc: "nfnl_callback_unregister".}
proc nfnl_handle_packet*(a0: ptr struct_nfnl_handle; buf: ptr uint8; len: cint): cint {.
    cdecl, importc: "nfnl_handle_packet".}
proc nfnl_parse_hdr*(nfnlh: ptr struct_nfnl_handle; nlh: ptr struct_nlmsghdr;
                     genmsg: ptr ptr struct_nfgenmsg): ptr struct_nfattr {.
    cdecl, importc: "nfnl_parse_hdr".}
proc nfnl_check_attributes*(nfnlh: ptr struct_nfnl_handle;
                            nlh: ptr struct_nlmsghdr;
                            tb: ptr UncheckedArray[ptr struct_nfattr]): cint {.
    cdecl, importc: "nfnl_check_attributes".}
proc nfnl_get_msg_first*(h: ptr struct_nfnl_handle; buf: ptr uint8; len: csize_t): ptr struct_nlmsghdr {.
    cdecl, importc: "nfnl_get_msg_first".}
proc nfnl_get_msg_next*(h: ptr struct_nfnl_handle; buf: ptr uint8; len: csize_t): ptr struct_nlmsghdr {.
    cdecl, importc: "nfnl_get_msg_next".}
proc nfnl_join*(nfnlh: ptr struct_nfnl_handle; group: cuint): cint {.cdecl,
    importc: "nfnl_join".}
proc nfnl_process*(h: ptr struct_nfnl_handle; buf: ptr uint8; len: csize_t): cint {.
    cdecl, importc: "nfnl_process".}
proc nfnl_iterator_create*(h: ptr struct_nfnl_handle; buf: ptr uint8;
                           len: csize_t): ptr struct_nfnl_iterator {.cdecl,
    importc: "nfnl_iterator_create".}
proc nfnl_iterator_destroy*(it: ptr struct_nfnl_iterator): void {.cdecl,
    importc: "nfnl_iterator_destroy".}
proc nfnl_iterator_process*(h: ptr struct_nfnl_handle;
                            it: ptr struct_nfnl_iterator): cint {.cdecl,
    importc: "nfnl_iterator_process".}
proc nfnl_iterator_next*(h: ptr struct_nfnl_handle; it: ptr struct_nfnl_iterator): cint {.
    cdecl, importc: "nfnl_iterator_next".}
proc nfnl_catch*(h: ptr struct_nfnl_handle): cint {.cdecl, importc: "nfnl_catch".}
proc nfnl_query*(h: ptr struct_nfnl_handle; nlh: ptr struct_nlmsghdr): cint {.
    cdecl, importc: "nfnl_query".}
proc nfnl_addattr_l*(a0: ptr struct_nlmsghdr; a1: cint; a2: cint; a3: pointer;
                     a4: cint): cint {.cdecl, importc: "nfnl_addattr_l".}
proc nfnl_addattr8*(a0: ptr struct_nlmsghdr; a1: cint; a2: cint; a3: uint8): cint {.
    cdecl, importc: "nfnl_addattr8".}
proc nfnl_addattr16*(a0: ptr struct_nlmsghdr; a1: cint; a2: cint; a3: uint16): cint {.
    cdecl, importc: "nfnl_addattr16".}
proc nfnl_addattr32*(a0: ptr struct_nlmsghdr; a1: cint; a2: cint; a3: uint32): cint {.
    cdecl, importc: "nfnl_addattr32".}
proc nfnl_nfa_addattr_l*(a0: ptr struct_nfattr; a1: cint; a2: cint; a3: pointer;
                         a4: cint): cint {.cdecl, importc: "nfnl_nfa_addattr_l".}
proc nfnl_nfa_addattr16*(a0: ptr struct_nfattr; a1: cint; a2: cint; a3: uint16): cint {.
    cdecl, importc: "nfnl_nfa_addattr16".}
proc nfnl_nfa_addattr32*(a0: ptr struct_nfattr; a1: cint; a2: cint; a3: uint32): cint {.
    cdecl, importc: "nfnl_nfa_addattr32".}
proc nfnl_parse_attr*(a0: ptr ptr struct_nfattr; a1: cint;
                      a2: ptr struct_nfattr; a3: cint): cint {.cdecl,
    importc: "nfnl_parse_attr".}
proc nfnl_build_nfa_iovec*(iov: ptr struct_iovec; nfa: ptr struct_nfattr;
                           type_arg: uint16; len: uint32; val: ptr uint8): void {.
    cdecl, importc: "nfnl_build_nfa_iovec".}
proc nfnl_rcvbufsiz*(h: ptr struct_nfnl_handle; size: cuint): cuint {.cdecl,
    importc: "nfnl_rcvbufsiz".}
proc nfnl_dump_packet*(a0: ptr struct_nlmsghdr; a1: cint; a2: ptr uint8): void {.
    cdecl, importc: "nfnl_dump_packet".}
proc nlif_open*(): ptr struct_nlif_handle {.cdecl, importc: "nlif_open".}
proc nlif_close*(orig: ptr struct_nlif_handle): void {.cdecl,
    importc: "nlif_close".}
proc nlif_fd*(nlif_handle: ptr struct_nlif_handle): cint {.cdecl,
    importc: "nlif_fd".}
proc nlif_query*(nlif_handle: ptr struct_nlif_handle): cint {.cdecl,
    importc: "nlif_query".}
proc nlif_catch*(nlif_handle: ptr struct_nlif_handle): cint {.cdecl,
    importc: "nlif_catch".}
proc nlif_index2name*(nlif_handle: ptr struct_nlif_handle; if_index: cuint;
                      name: ptr uint8): cint {.cdecl, importc: "nlif_index2name".}
proc nlif_get_ifflags*(h: ptr struct_nlif_handle; index: cuint; flags: ptr cuint): cint {.
    cdecl, importc: "nlif_get_ifflags".}
proc nfct_open*(a0: uint8; a1: cuint): ptr struct_nfct_handle {.cdecl,
    importc: "nfct_open".}
proc nfct_open_nfnl*(nfnlh: ptr struct_nfnl_handle; subsys_id: uint8;
                     subscriptions: cuint): ptr struct_nfct_handle {.cdecl,
    importc: "nfct_open_nfnl".}
proc nfct_close*(cth: ptr struct_nfct_handle): cint {.cdecl,
    importc: "nfct_close".}
proc nfct_fd*(cth: ptr struct_nfct_handle): cint {.cdecl, importc: "nfct_fd".}
proc nfct_nfnlh*(cth: ptr struct_nfct_handle): ptr struct_nfnl_handle {.cdecl,
    importc: "nfct_nfnlh".}
proc nfct_new*(): ptr struct_nf_conntrack {.cdecl, importc: "nfct_new".}
proc nfct_destroy*(ct: ptr struct_nf_conntrack): void {.cdecl,
    importc: "nfct_destroy".}
proc nfct_clone*(ct: ptr struct_nf_conntrack): ptr struct_nf_conntrack {.cdecl,
    importc: "nfct_clone".}
proc nfct_sizeof*(ct: ptr struct_nf_conntrack): csize_t {.cdecl,
    importc: "nfct_sizeof".}
proc nfct_maxsize*(): csize_t {.cdecl, importc: "nfct_maxsize".}
proc nfct_setobjopt*(ct: ptr struct_nf_conntrack; option: cuint): cint {.cdecl,
    importc: "nfct_setobjopt".}
proc nfct_getobjopt*(ct: ptr struct_nf_conntrack; option: cuint): cint {.cdecl,
    importc: "nfct_getobjopt".}
proc nfct_callback_register*(h: ptr struct_nfct_handle;
                             type_arg: enum_nf_conntrack_msg_type; cb: proc (
    a0: enum_nf_conntrack_msg_type; a1: ptr struct_nf_conntrack; a2: pointer): cint {.
    cdecl.}; data: pointer): cint {.cdecl, importc: "nfct_callback_register".}
proc nfct_callback_unregister*(h: ptr struct_nfct_handle): void {.cdecl,
    importc: "nfct_callback_unregister".}
proc nfct_callback_register2*(h: ptr struct_nfct_handle;
                              type_arg: enum_nf_conntrack_msg_type; cb: proc (
    a0: ptr struct_nlmsghdr; a1: enum_nf_conntrack_msg_type;
    a2: ptr struct_nf_conntrack; a3: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nfct_callback_register2".}
proc nfct_callback_unregister2*(h: ptr struct_nfct_handle): void {.cdecl,
    importc: "nfct_callback_unregister2".}
proc nfct_bitmask_new*(maxbit: cuint): ptr struct_nfct_bitmask {.cdecl,
    importc: "nfct_bitmask_new".}
proc nfct_bitmask_clone*(a0: ptr struct_nfct_bitmask): ptr struct_nfct_bitmask {.
    cdecl, importc: "nfct_bitmask_clone".}
proc nfct_bitmask_maxbit*(a0: ptr struct_nfct_bitmask): cuint {.cdecl,
    importc: "nfct_bitmask_maxbit".}
proc nfct_bitmask_set_bit*(a0: ptr struct_nfct_bitmask; bit: cuint): void {.
    cdecl, importc: "nfct_bitmask_set_bit".}
proc nfct_bitmask_test_bit*(a0: ptr struct_nfct_bitmask; bit: cuint): cint {.
    cdecl, importc: "nfct_bitmask_test_bit".}
proc nfct_bitmask_unset_bit*(a0: ptr struct_nfct_bitmask; bit: cuint): void {.
    cdecl, importc: "nfct_bitmask_unset_bit".}
proc nfct_bitmask_destroy*(a0: ptr struct_nfct_bitmask): void {.cdecl,
    importc: "nfct_bitmask_destroy".}
proc nfct_bitmask_clear*(a0: ptr struct_nfct_bitmask): void {.cdecl,
    importc: "nfct_bitmask_clear".}
proc nfct_bitmask_equal*(a0: ptr struct_nfct_bitmask;
                         a1: ptr struct_nfct_bitmask): bool {.cdecl,
    importc: "nfct_bitmask_equal".}
proc nfct_labels_get_path*(): ptr uint8 {.cdecl, importc: "nfct_labels_get_path".}
proc nfct_labelmap_new*(mapfile: ptr uint8): ptr struct_nfct_labelmap {.cdecl,
    importc: "nfct_labelmap_new".}
proc nfct_labelmap_destroy*(map: ptr struct_nfct_labelmap): void {.cdecl,
    importc: "nfct_labelmap_destroy".}
proc nfct_labelmap_get_name*(m: ptr struct_nfct_labelmap; bit: cuint): ptr uint8 {.
    cdecl, importc: "nfct_labelmap_get_name".}
proc nfct_labelmap_get_bit*(m: ptr struct_nfct_labelmap; name: ptr uint8): cint {.
    cdecl, importc: "nfct_labelmap_get_bit".}
proc nfct_set_attr*(ct: ptr struct_nf_conntrack;
                    type_arg: enum_nf_conntrack_attr; value: pointer): void {.
    cdecl, importc: "nfct_set_attr".}
proc nfct_set_attr_u8*(ct: ptr struct_nf_conntrack;
                       type_arg: enum_nf_conntrack_attr; value: uint8): void {.
    cdecl, importc: "nfct_set_attr_u8".}
proc nfct_set_attr_u16*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr; value: uint16): void {.
    cdecl, importc: "nfct_set_attr_u16".}
proc nfct_set_attr_u32*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr; value: uint32): void {.
    cdecl, importc: "nfct_set_attr_u32".}
proc nfct_set_attr_u64*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr; value: uint64): void {.
    cdecl, importc: "nfct_set_attr_u64".}
proc nfct_set_attr_l*(ct: ptr struct_nf_conntrack;
                      type_arg: enum_nf_conntrack_attr; value: pointer;
                      len: csize_t): void {.cdecl, importc: "nfct_set_attr_l".}
proc nfct_get_attr*(ct: ptr struct_nf_conntrack;
                    type_arg: enum_nf_conntrack_attr): pointer {.cdecl,
    importc: "nfct_get_attr".}
proc nfct_get_attr_u8*(ct: ptr struct_nf_conntrack;
                       type_arg: enum_nf_conntrack_attr): uint8 {.cdecl,
    importc: "nfct_get_attr_u8".}
proc nfct_get_attr_u16*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr): uint16 {.cdecl,
    importc: "nfct_get_attr_u16".}
proc nfct_get_attr_u32*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr): uint32 {.cdecl,
    importc: "nfct_get_attr_u32".}
proc nfct_get_attr_u64*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr): uint64 {.cdecl,
    importc: "nfct_get_attr_u64".}
proc nfct_attr_is_set*(ct: ptr struct_nf_conntrack;
                       type_arg: enum_nf_conntrack_attr): cint {.cdecl,
    importc: "nfct_attr_is_set".}
proc nfct_attr_is_set_array*(ct: ptr struct_nf_conntrack;
                             type_array: ptr enum_nf_conntrack_attr; size: cint): cint {.
    cdecl, importc: "nfct_attr_is_set_array".}
proc nfct_attr_unset*(ct: ptr struct_nf_conntrack;
                      type_arg: enum_nf_conntrack_attr): cint {.cdecl,
    importc: "nfct_attr_unset".}
proc nfct_set_attr_grp*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr_grp; value: pointer): void {.
    cdecl, importc: "nfct_set_attr_grp".}
proc nfct_get_attr_grp*(ct: ptr struct_nf_conntrack;
                        type_arg: enum_nf_conntrack_attr_grp; data: pointer): cint {.
    cdecl, importc: "nfct_get_attr_grp".}
proc nfct_attr_grp_is_set*(ct: ptr struct_nf_conntrack;
                           type_arg: enum_nf_conntrack_attr_grp): cint {.cdecl,
    importc: "nfct_attr_grp_is_set".}
proc nfct_attr_grp_unset*(ct: ptr struct_nf_conntrack;
                          type_arg: enum_nf_conntrack_attr_grp): cint {.cdecl,
    importc: "nfct_attr_grp_unset".}
proc nfct_snprintf*(buf: ptr uint8; size: cuint; ct: ptr struct_nf_conntrack;
                    msg_type: cuint; out_type: cuint; out_flags: cuint): cint {.
    cdecl, importc: "nfct_snprintf".}
proc nfct_snprintf_labels*(buf: ptr uint8; size: cuint;
                           ct: ptr struct_nf_conntrack; msg_type: cuint;
                           out_type: cuint; out_flags: cuint;
                           map: ptr struct_nfct_labelmap): cint {.cdecl,
    importc: "nfct_snprintf_labels".}
proc nfct_compare*(ct1: ptr struct_nf_conntrack; ct2: ptr struct_nf_conntrack): cint {.
    cdecl, importc: "nfct_compare".}
proc nfct_cmp*(ct1: ptr struct_nf_conntrack; ct2: ptr struct_nf_conntrack;
               flags: cuint): cint {.cdecl, importc: "nfct_cmp".}
proc nfct_query*(h: ptr struct_nfct_handle; query: enum_nf_conntrack_query;
                 data: pointer): cint {.cdecl, importc: "nfct_query".}
proc nfct_send*(h: ptr struct_nfct_handle; query: enum_nf_conntrack_query;
                data: pointer): cint {.cdecl, importc: "nfct_send".}
proc nfct_catch*(h: ptr struct_nfct_handle): cint {.cdecl, importc: "nfct_catch".}
proc nfct_copy*(dest: ptr struct_nf_conntrack; source: ptr struct_nf_conntrack;
                flags: cuint): void {.cdecl, importc: "nfct_copy".}
proc nfct_copy_attr*(ct1: ptr struct_nf_conntrack; ct2: ptr struct_nf_conntrack;
                     type_arg: enum_nf_conntrack_attr): void {.cdecl,
    importc: "nfct_copy_attr".}
proc nfct_filter_create*(): ptr struct_nfct_filter {.cdecl,
    importc: "nfct_filter_create".}
proc nfct_filter_destroy*(filter: ptr struct_nfct_filter): void {.cdecl,
    importc: "nfct_filter_destroy".}
proc nfct_filter_add_attr*(filter: ptr struct_nfct_filter;
                           attr: enum_nfct_filter_attr; value: pointer): void {.
    cdecl, importc: "nfct_filter_add_attr".}
proc nfct_filter_add_attr_u32*(filter: ptr struct_nfct_filter;
                               attr: enum_nfct_filter_attr; value: uint32): void {.
    cdecl, importc: "nfct_filter_add_attr_u32".}
proc nfct_filter_set_logic*(filter: ptr struct_nfct_filter;
                            attr: enum_nfct_filter_attr;
                            logic: enum_nfct_filter_logic): cint {.cdecl,
    importc: "nfct_filter_set_logic".}
proc nfct_filter_attach*(fd: cint; filter: ptr struct_nfct_filter): cint {.
    cdecl, importc: "nfct_filter_attach".}
proc nfct_filter_detach*(fd: cint): cint {.cdecl, importc: "nfct_filter_detach".}
proc nfct_filter_dump_create*(): ptr struct_nfct_filter_dump {.cdecl,
    importc: "nfct_filter_dump_create".}
proc nfct_filter_dump_destroy*(filter: ptr struct_nfct_filter_dump): void {.
    cdecl, importc: "nfct_filter_dump_destroy".}
proc nfct_filter_dump_set_attr*(filter_dump: ptr struct_nfct_filter_dump;
                                type_arg: enum_nfct_filter_dump_attr;
                                data: pointer): void {.cdecl,
    importc: "nfct_filter_dump_set_attr".}
proc nfct_filter_dump_set_attr_u8*(filter_dump: ptr struct_nfct_filter_dump;
                                   type_arg: enum_nfct_filter_dump_attr;
                                   data: uint8): void {.cdecl,
    importc: "nfct_filter_dump_set_attr_u8".}
proc nfct_filter_dump_set_attr_u16*(filter_dump: ptr struct_nfct_filter_dump;
                                    type_arg: enum_nfct_filter_dump_attr;
                                    data: uint16): void {.cdecl,
    importc: "nfct_filter_dump_set_attr_u16".}
proc nfct_build_conntrack*(ssh: ptr struct_nfnl_subsys_handle; req: pointer;
                           size: csize_t; type_arg: uint16; flags: uint16;
                           ct: ptr struct_nf_conntrack): cint {.cdecl,
    importc: "nfct_build_conntrack".}
proc nfct_parse_conntrack*(msg: enum_nf_conntrack_msg_type;
                           nlh: ptr struct_nlmsghdr; ct: ptr struct_nf_conntrack): cint {.
    cdecl, importc: "nfct_parse_conntrack".}
proc nfct_build_query*(ssh: ptr struct_nfnl_subsys_handle;
                       query: enum_nf_conntrack_query; data: pointer;
                       req: pointer; size: cuint): cint {.cdecl,
    importc: "nfct_build_query".}
proc nfct_nlmsg_build*(nlh: ptr struct_nlmsghdr; ct: ptr struct_nf_conntrack): cint {.
    cdecl, importc: "nfct_nlmsg_build".}
proc nfct_nlmsg_build_filter*(nlh: ptr struct_nlmsghdr;
                              filter_dump: ptr struct_nfct_filter_dump): cint {.
    cdecl, importc: "nfct_nlmsg_build_filter".}
proc nfct_nlmsg_parse*(nlh: ptr struct_nlmsghdr; ct: ptr struct_nf_conntrack): cint {.
    cdecl, importc: "nfct_nlmsg_parse".}
proc nfct_payload_parse*(payload: pointer; payload_len: csize_t; l3num: uint16;
                         ct: ptr struct_nf_conntrack): cint {.cdecl,
    importc: "nfct_payload_parse".}
proc nfexp_new*(): ptr struct_nf_expect {.cdecl, importc: "nfexp_new".}
proc nfexp_destroy*(exp: ptr struct_nf_expect): void {.cdecl,
    importc: "nfexp_destroy".}
proc nfexp_clone*(exp: ptr struct_nf_expect): ptr struct_nf_expect {.cdecl,
    importc: "nfexp_clone".}
proc nfexp_sizeof*(exp: ptr struct_nf_expect): csize_t {.cdecl,
    importc: "nfexp_sizeof".}
proc nfexp_maxsize*(): csize_t {.cdecl, importc: "nfexp_maxsize".}
proc nfexp_callback_register*(h: ptr struct_nfct_handle;
                              type_arg: enum_nf_conntrack_msg_type; cb: proc (
    a0: enum_nf_conntrack_msg_type; a1: ptr struct_nf_expect; a2: pointer): cint {.
    cdecl.}; data: pointer): cint {.cdecl, importc: "nfexp_callback_register".}
proc nfexp_callback_unregister*(h: ptr struct_nfct_handle): void {.cdecl,
    importc: "nfexp_callback_unregister".}
proc nfexp_callback_register2*(h: ptr struct_nfct_handle;
                               type_arg: enum_nf_conntrack_msg_type; cb: proc (
    a0: ptr struct_nlmsghdr; a1: enum_nf_conntrack_msg_type;
    a2: ptr struct_nf_expect; a3: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nfexp_callback_register2".}
proc nfexp_callback_unregister2*(h: ptr struct_nfct_handle): void {.cdecl,
    importc: "nfexp_callback_unregister2".}
proc nfexp_set_attr*(exp: ptr struct_nf_expect; type_arg: enum_nf_expect_attr;
                     value: pointer): void {.cdecl, importc: "nfexp_set_attr".}
proc nfexp_set_attr_u8*(exp: ptr struct_nf_expect;
                        type_arg: enum_nf_expect_attr; value: uint8): void {.
    cdecl, importc: "nfexp_set_attr_u8".}
proc nfexp_set_attr_u16*(exp: ptr struct_nf_expect;
                         type_arg: enum_nf_expect_attr; value: uint16): void {.
    cdecl, importc: "nfexp_set_attr_u16".}
proc nfexp_set_attr_u32*(exp: ptr struct_nf_expect;
                         type_arg: enum_nf_expect_attr; value: uint32): void {.
    cdecl, importc: "nfexp_set_attr_u32".}
proc nfexp_get_attr*(exp: ptr struct_nf_expect; type_arg: enum_nf_expect_attr): pointer {.
    cdecl, importc: "nfexp_get_attr".}
proc nfexp_get_attr_u8*(exp: ptr struct_nf_expect; type_arg: enum_nf_expect_attr): uint8 {.
    cdecl, importc: "nfexp_get_attr_u8".}
proc nfexp_get_attr_u16*(exp: ptr struct_nf_expect;
                         type_arg: enum_nf_expect_attr): uint16 {.cdecl,
    importc: "nfexp_get_attr_u16".}
proc nfexp_get_attr_u32*(exp: ptr struct_nf_expect;
                         type_arg: enum_nf_expect_attr): uint32 {.cdecl,
    importc: "nfexp_get_attr_u32".}
proc nfexp_attr_is_set*(exp: ptr struct_nf_expect; type_arg: enum_nf_expect_attr): cint {.
    cdecl, importc: "nfexp_attr_is_set".}
proc nfexp_attr_unset*(exp: ptr struct_nf_expect; type_arg: enum_nf_expect_attr): cint {.
    cdecl, importc: "nfexp_attr_unset".}
proc nfexp_query*(h: ptr struct_nfct_handle; qt: enum_nf_conntrack_query;
                  data: pointer): cint {.cdecl, importc: "nfexp_query".}
proc nfexp_snprintf*(buf: ptr uint8; size: cuint; exp: ptr struct_nf_expect;
                     msg_type: cuint; out_type: cuint; out_flags: cuint): cint {.
    cdecl, importc: "nfexp_snprintf".}
proc nfexp_cmp*(exp1: ptr struct_nf_expect; exp2: ptr struct_nf_expect;
                flags: cuint): cint {.cdecl, importc: "nfexp_cmp".}
proc nfexp_send*(h: ptr struct_nfct_handle; qt: enum_nf_conntrack_query;
                 data: pointer): cint {.cdecl, importc: "nfexp_send".}
proc nfexp_catch*(h: ptr struct_nfct_handle): cint {.cdecl,
    importc: "nfexp_catch".}
proc nfexp_build_expect*(ssh: ptr struct_nfnl_subsys_handle; req: pointer;
                         size: csize_t; type_arg: uint16; flags: uint16;
                         exp: ptr struct_nf_expect): cint {.cdecl,
    importc: "nfexp_build_expect".}
proc nfexp_parse_expect*(type_arg: enum_nf_conntrack_msg_type;
                         nlh: ptr struct_nlmsghdr; exp: ptr struct_nf_expect): cint {.
    cdecl, importc: "nfexp_parse_expect".}
proc nfexp_build_query*(ssh: ptr struct_nfnl_subsys_handle;
                        qt: enum_nf_conntrack_query; data: pointer;
                        buffer: pointer; size: cuint): cint {.cdecl,
    importc: "nfexp_build_query".}
proc nfexp_nlmsg_build*(nlh: ptr struct_nlmsghdr; exp: ptr struct_nf_expect): cint {.
    cdecl, importc: "nfexp_nlmsg_build".}
proc nfexp_nlmsg_parse*(nlh: ptr struct_nlmsghdr; exp: ptr struct_nf_expect): cint {.
    cdecl, importc: "nfexp_nlmsg_parse".}