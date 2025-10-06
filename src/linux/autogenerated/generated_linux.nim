
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
  NETLINK_UNCONNECTED* = cuint(0)
const
  NETLINK_CONNECTED* = cuint(1)
type
  enum_socket_type* {.size: sizeof(cuint).} = enum
    SOCK_STREAM = 1, SOCK_DGRAM = 2, SOCK_RAW = 3, SOCK_RDM = 4,
    SOCK_SEQPACKET = 5, SOCK_DCCP = 6, SOCK_PACKET = 10, SOCK_NONBLOCK = 2048,
    SOCK_CLOEXEC = 524288
type
  enum_nlmsgerr_attrs* {.size: sizeof(cuint).} = enum
    NLMSGERR_ATTR_UNUSED = 0, NLMSGERR_ATTR_MSG = 1, NLMSGERR_ATTR_OFFS = 2,
    NLMSGERR_ATTR_COOKIE = 3, NLMSGERR_ATTR_POLICY = 4,
    NLMSGERR_ATTR_MISS_TYPE = 5, NLMSGERR_ATTR_MISS_NEST = 6,
    compiler_NLMSGERR_ATTR_MAX = 7
const
  NLMSGERR_ATTR_MAX* = enum_nlmsgerr_attrs.NLMSGERR_ATTR_MISS_NEST
type
  enum_nl_mmap_status* {.size: sizeof(cuint).} = enum
    NL_MMAP_STATUS_UNUSED = 0, NL_MMAP_STATUS_RESERVED = 1,
    NL_MMAP_STATUS_VALID = 2, NL_MMAP_STATUS_COPY = 3, NL_MMAP_STATUS_SKIP = 4
type
  enum_netlink_attribute_type* {.size: sizeof(cuint).} = enum
    NL_ATTR_TYPE_INVALID = 0, NL_ATTR_TYPE_FLAG = 1, NL_ATTR_TYPE_U8 = 2,
    NL_ATTR_TYPE_U16 = 3, NL_ATTR_TYPE_U32 = 4, NL_ATTR_TYPE_U64 = 5,
    NL_ATTR_TYPE_S8 = 6, NL_ATTR_TYPE_S16 = 7, NL_ATTR_TYPE_S32 = 8,
    NL_ATTR_TYPE_S64 = 9, NL_ATTR_TYPE_BINARY = 10, NL_ATTR_TYPE_STRING = 11,
    NL_ATTR_TYPE_NUL_STRING = 12, NL_ATTR_TYPE_NESTED = 13,
    NL_ATTR_TYPE_NESTED_ARRAY = 14, NL_ATTR_TYPE_BITFIELD32 = 15,
    NL_ATTR_TYPE_SINT = 16, NL_ATTR_TYPE_UINT = 17
type
  enum_netlink_policy_type_attr* {.size: sizeof(cuint).} = enum
    NL_POLICY_TYPE_ATTR_UNSPEC = 0, NL_POLICY_TYPE_ATTR_TYPE = 1,
    NL_POLICY_TYPE_ATTR_MIN_VALUE_S = 2, NL_POLICY_TYPE_ATTR_MAX_VALUE_S = 3,
    NL_POLICY_TYPE_ATTR_MIN_VALUE_U = 4, NL_POLICY_TYPE_ATTR_MAX_VALUE_U = 5,
    NL_POLICY_TYPE_ATTR_MIN_LENGTH = 6, NL_POLICY_TYPE_ATTR_MAX_LENGTH = 7,
    NL_POLICY_TYPE_ATTR_POLICY_IDX = 8, NL_POLICY_TYPE_ATTR_POLICY_MAXTYPE = 9,
    NL_POLICY_TYPE_ATTR_BITFIELD32_MASK = 10, NL_POLICY_TYPE_ATTR_PAD = 11,
    NL_POLICY_TYPE_ATTR_MASK = 12, compiler_NL_POLICY_TYPE_ATTR_MAX = 13
const
  NL_POLICY_TYPE_ATTR_MAX* = enum_netlink_policy_type_attr.NL_POLICY_TYPE_ATTR_MASK
type
  enum_nft_registers* {.size: sizeof(cuint).} = enum
    NFT_REG_VERDICT = 0, NFT_REG_1 = 1, NFT_REG_2 = 2, NFT_REG_3 = 3,
    NFT_REG_4 = 4, compiler_NFT_REG_MAX = 5, NFT_REG32_00 = 8, NFT_REG32_01 = 9,
    NFT_REG32_02 = 10, NFT_REG32_03 = 11, NFT_REG32_04 = 12, NFT_REG32_05 = 13,
    NFT_REG32_06 = 14, NFT_REG32_07 = 15, NFT_REG32_08 = 16, NFT_REG32_09 = 17,
    NFT_REG32_10 = 18, NFT_REG32_11 = 19, NFT_REG32_12 = 20, NFT_REG32_13 = 21,
    NFT_REG32_14 = 22, NFT_REG32_15 = 23
type
  enum_nft_verdicts* {.size: sizeof(cint).} = enum
    NFT_RETURN = -5, NFT_GOTO = -4, NFT_JUMP = -3, NFT_BREAK = -2,
    NFT_CONTINUE = -1
type
  enum_nf_tables_msg_types* {.size: sizeof(cuint).} = enum
    NFT_MSG_NEWTABLE = 0, NFT_MSG_GETTABLE = 1, NFT_MSG_DELTABLE = 2,
    NFT_MSG_NEWCHAIN = 3, NFT_MSG_GETCHAIN = 4, NFT_MSG_DELCHAIN = 5,
    NFT_MSG_NEWRULE = 6, NFT_MSG_GETRULE = 7, NFT_MSG_DELRULE = 8,
    NFT_MSG_NEWSET = 9, NFT_MSG_GETSET = 10, NFT_MSG_DELSET = 11,
    NFT_MSG_NEWSETELEM = 12, NFT_MSG_GETSETELEM = 13, NFT_MSG_DELSETELEM = 14,
    NFT_MSG_NEWGEN = 15, NFT_MSG_GETGEN = 16, NFT_MSG_TRACE = 17,
    NFT_MSG_NEWOBJ = 18, NFT_MSG_GETOBJ = 19, NFT_MSG_DELOBJ = 20,
    NFT_MSG_GETOBJ_RESET = 21, NFT_MSG_NEWFLOWTABLE = 22,
    NFT_MSG_GETFLOWTABLE = 23, NFT_MSG_DELFLOWTABLE = 24,
    NFT_MSG_GETRULE_RESET = 25, NFT_MSG_DESTROYTABLE = 26,
    NFT_MSG_DESTROYCHAIN = 27, NFT_MSG_DESTROYRULE = 28,
    NFT_MSG_DESTROYSET = 29, NFT_MSG_DESTROYSETELEM = 30,
    NFT_MSG_DESTROYOBJ = 31, NFT_MSG_DESTROYFLOWTABLE = 32,
    NFT_MSG_GETSETELEM_RESET = 33, NFT_MSG_MAX = 34
type
  enum_nft_list_attributes* {.size: sizeof(cuint).} = enum
    NFTA_LIST_UNSPEC = 0, NFTA_LIST_ELEM = 1, compiler_NFTA_LIST_MAX = 2
type
  enum_nft_hook_attributes* {.size: sizeof(cuint).} = enum
    NFTA_HOOK_UNSPEC = 0, NFTA_HOOK_HOOKNUM = 1, NFTA_HOOK_PRIORITY = 2,
    NFTA_HOOK_DEV = 3, NFTA_HOOK_DEVS = 4, compiler_NFTA_HOOK_MAX = 5
type
  enum_nft_table_flags* {.size: sizeof(cuint).} = enum
    NFT_TABLE_F_DORMANT = 1, NFT_TABLE_F_OWNER = 2, NFT_TABLE_F_PERSIST = 4
type
  enum_nft_table_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TABLE_UNSPEC = 0, NFTA_TABLE_NAME = 1, NFTA_TABLE_FLAGS = 2,
    NFTA_TABLE_USE = 3, NFTA_TABLE_HANDLE = 4, NFTA_TABLE_PAD = 5,
    NFTA_TABLE_USERDATA = 6, NFTA_TABLE_OWNER = 7, compiler_NFTA_TABLE_MAX = 8
type
  enum_nft_chain_flags* {.size: sizeof(cuint).} = enum
    NFT_CHAIN_BASE = 1, NFT_CHAIN_HW_OFFLOAD = 2, NFT_CHAIN_BINDING = 4
type
  enum_nft_chain_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CHAIN_UNSPEC = 0, NFTA_CHAIN_TABLE = 1, NFTA_CHAIN_HANDLE = 2,
    NFTA_CHAIN_NAME = 3, NFTA_CHAIN_HOOK = 4, NFTA_CHAIN_POLICY = 5,
    NFTA_CHAIN_USE = 6, NFTA_CHAIN_TYPE = 7, NFTA_CHAIN_COUNTERS = 8,
    NFTA_CHAIN_PAD = 9, NFTA_CHAIN_FLAGS = 10, NFTA_CHAIN_ID = 11,
    NFTA_CHAIN_USERDATA = 12, compiler_NFTA_CHAIN_MAX = 13
type
  enum_nft_rule_attributes* {.size: sizeof(cuint).} = enum
    NFTA_RULE_UNSPEC = 0, NFTA_RULE_TABLE = 1, NFTA_RULE_CHAIN = 2,
    NFTA_RULE_HANDLE = 3, NFTA_RULE_EXPRESSIONS = 4, NFTA_RULE_COMPAT = 5,
    NFTA_RULE_POSITION = 6, NFTA_RULE_USERDATA = 7, NFTA_RULE_PAD = 8,
    NFTA_RULE_ID = 9, NFTA_RULE_POSITION_ID = 10, NFTA_RULE_CHAIN_ID = 11,
    compiler_NFTA_RULE_MAX = 12
type
  enum_nft_rule_compat_flags* {.size: sizeof(cuint).} = enum
    NFT_RULE_COMPAT_F_UNUSED = 1, NFT_RULE_COMPAT_F_INV = 2
const
  NFT_RULE_COMPAT_F_MASK* = enum_nft_rule_compat_flags.NFT_RULE_COMPAT_F_INV
type
  enum_nft_rule_compat_attributes* {.size: sizeof(cuint).} = enum
    NFTA_RULE_COMPAT_UNSPEC = 0, NFTA_RULE_COMPAT_PROTO = 1,
    NFTA_RULE_COMPAT_FLAGS = 2, compiler_NFTA_RULE_COMPAT_MAX = 3
type
  enum_nft_set_flags* {.size: sizeof(cuint).} = enum
    NFT_SET_ANONYMOUS = 1, NFT_SET_CONSTANT = 2, NFT_SET_INTERVAL = 4,
    NFT_SET_MAP = 8, NFT_SET_TIMEOUT = 16, NFT_SET_EVAL = 32,
    NFT_SET_OBJECT = 64, NFT_SET_CONCAT = 128, NFT_SET_EXPR = 256
type
  enum_nft_set_policies* {.size: sizeof(cuint).} = enum
    NFT_SET_POL_PERFORMANCE = 0, NFT_SET_POL_MEMORY = 1
type
  enum_nft_set_desc_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SET_DESC_UNSPEC = 0, NFTA_SET_DESC_SIZE = 1, NFTA_SET_DESC_CONCAT = 2,
    compiler_NFTA_SET_DESC_MAX = 3
type
  enum_nft_set_field_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SET_FIELD_UNSPEC = 0, NFTA_SET_FIELD_LEN = 1,
    compiler_NFTA_SET_FIELD_MAX = 2
type
  enum_nft_set_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SET_UNSPEC = 0, NFTA_SET_TABLE = 1, NFTA_SET_NAME = 2,
    NFTA_SET_FLAGS = 3, NFTA_SET_KEY_TYPE = 4, NFTA_SET_KEY_LEN = 5,
    NFTA_SET_DATA_TYPE = 6, NFTA_SET_DATA_LEN = 7, NFTA_SET_POLICY = 8,
    NFTA_SET_DESC = 9, NFTA_SET_ID = 10, NFTA_SET_TIMEOUT = 11,
    NFTA_SET_GC_INTERVAL = 12, NFTA_SET_USERDATA = 13, NFTA_SET_PAD = 14,
    NFTA_SET_OBJ_TYPE = 15, NFTA_SET_HANDLE = 16, NFTA_SET_EXPR = 17,
    NFTA_SET_EXPRESSIONS = 18, compiler_NFTA_SET_MAX = 19
type
  enum_nft_set_elem_flags* {.size: sizeof(cuint).} = enum
    NFT_SET_ELEM_INTERVAL_END = 1, NFT_SET_ELEM_CATCHALL = 2
type
  enum_nft_set_elem_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SET_ELEM_UNSPEC = 0, NFTA_SET_ELEM_KEY = 1, NFTA_SET_ELEM_DATA = 2,
    NFTA_SET_ELEM_FLAGS = 3, NFTA_SET_ELEM_TIMEOUT = 4,
    NFTA_SET_ELEM_EXPIRATION = 5, NFTA_SET_ELEM_USERDATA = 6,
    NFTA_SET_ELEM_EXPR = 7, NFTA_SET_ELEM_PAD = 8, NFTA_SET_ELEM_OBJREF = 9,
    NFTA_SET_ELEM_KEY_END = 10, NFTA_SET_ELEM_EXPRESSIONS = 11,
    compiler_NFTA_SET_ELEM_MAX = 12
type
  enum_nft_set_elem_list_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SET_ELEM_LIST_UNSPEC = 0, NFTA_SET_ELEM_LIST_TABLE = 1,
    NFTA_SET_ELEM_LIST_SET = 2, NFTA_SET_ELEM_LIST_ELEMENTS = 3,
    NFTA_SET_ELEM_LIST_SET_ID = 4, compiler_NFTA_SET_ELEM_LIST_MAX = 5
type
  enum_nft_data_types* {.size: sizeof(cuint).} = enum
    NFT_DATA_VERDICT = -256, NFT_DATA_VALUE = 0
type
  enum_nft_data_attributes* {.size: sizeof(cuint).} = enum
    NFTA_DATA_UNSPEC = 0, NFTA_DATA_VALUE = 1, NFTA_DATA_VERDICT = 2,
    compiler_NFTA_DATA_MAX = 3
type
  enum_nft_verdict_attributes* {.size: sizeof(cuint).} = enum
    NFTA_VERDICT_UNSPEC = 0, NFTA_VERDICT_CODE = 1, NFTA_VERDICT_CHAIN = 2,
    NFTA_VERDICT_CHAIN_ID = 3, compiler_NFTA_VERDICT_MAX = 4
type
  enum_nft_expr_attributes* {.size: sizeof(cuint).} = enum
    NFTA_EXPR_UNSPEC = 0, NFTA_EXPR_NAME = 1, NFTA_EXPR_DATA = 2,
    compiler_NFTA_EXPR_MAX = 3
type
  enum_nft_immediate_attributes* {.size: sizeof(cuint).} = enum
    NFTA_IMMEDIATE_UNSPEC = 0, NFTA_IMMEDIATE_DREG = 1, NFTA_IMMEDIATE_DATA = 2,
    compiler_NFTA_IMMEDIATE_MAX = 3
type
  enum_nft_bitwise_ops* {.size: sizeof(cuint).} = enum
    NFT_BITWISE_BOOL = 0, NFT_BITWISE_LSHIFT = 1, NFT_BITWISE_RSHIFT = 2
type
  enum_nft_bitwise_attributes* {.size: sizeof(cuint).} = enum
    NFTA_BITWISE_UNSPEC = 0, NFTA_BITWISE_SREG = 1, NFTA_BITWISE_DREG = 2,
    NFTA_BITWISE_LEN = 3, NFTA_BITWISE_MASK = 4, NFTA_BITWISE_XOR = 5,
    NFTA_BITWISE_OP = 6, NFTA_BITWISE_DATA = 7, compiler_NFTA_BITWISE_MAX = 8
type
  enum_nft_byteorder_ops* {.size: sizeof(cuint).} = enum
    NFT_BYTEORDER_NTOH = 0, NFT_BYTEORDER_HTON = 1
type
  enum_nft_byteorder_attributes* {.size: sizeof(cuint).} = enum
    NFTA_BYTEORDER_UNSPEC = 0, NFTA_BYTEORDER_SREG = 1, NFTA_BYTEORDER_DREG = 2,
    NFTA_BYTEORDER_OP = 3, NFTA_BYTEORDER_LEN = 4, NFTA_BYTEORDER_SIZE = 5,
    compiler_NFTA_BYTEORDER_MAX = 6
type
  enum_nft_cmp_ops* {.size: sizeof(cuint).} = enum
    NFT_CMP_EQ = 0, NFT_CMP_NEQ = 1, NFT_CMP_LT = 2, NFT_CMP_LTE = 3,
    NFT_CMP_GT = 4, NFT_CMP_GTE = 5
type
  enum_nft_cmp_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CMP_UNSPEC = 0, NFTA_CMP_SREG = 1, NFTA_CMP_OP = 2, NFTA_CMP_DATA = 3,
    compiler_NFTA_CMP_MAX = 4
type
  enum_nft_range_ops* {.size: sizeof(cuint).} = enum
    NFT_RANGE_EQ = 0, NFT_RANGE_NEQ = 1
type
  enum_nft_range_attributes* {.size: sizeof(cuint).} = enum
    NFTA_RANGE_UNSPEC = 0, NFTA_RANGE_SREG = 1, NFTA_RANGE_OP = 2,
    NFTA_RANGE_FROM_DATA = 3, NFTA_RANGE_TO_DATA = 4,
    compiler_NFTA_RANGE_MAX = 5
type
  enum_nft_lookup_flags* {.size: sizeof(cuint).} = enum
    NFT_LOOKUP_F_INV = 1
type
  enum_nft_lookup_attributes* {.size: sizeof(cuint).} = enum
    NFTA_LOOKUP_UNSPEC = 0, NFTA_LOOKUP_SET = 1, NFTA_LOOKUP_SREG = 2,
    NFTA_LOOKUP_DREG = 3, NFTA_LOOKUP_SET_ID = 4, NFTA_LOOKUP_FLAGS = 5,
    compiler_NFTA_LOOKUP_MAX = 6
type
  enum_nft_dynset_ops* {.size: sizeof(cuint).} = enum
    NFT_DYNSET_OP_ADD = 0, NFT_DYNSET_OP_UPDATE = 1, NFT_DYNSET_OP_DELETE = 2
type
  enum_nft_dynset_flags* {.size: sizeof(cuint).} = enum
    NFT_DYNSET_F_INV = 1, NFT_DYNSET_F_EXPR = 2
type
  enum_nft_dynset_attributes* {.size: sizeof(cuint).} = enum
    NFTA_DYNSET_UNSPEC = 0, NFTA_DYNSET_SET_NAME = 1, NFTA_DYNSET_SET_ID = 2,
    NFTA_DYNSET_OP = 3, NFTA_DYNSET_SREG_KEY = 4, NFTA_DYNSET_SREG_DATA = 5,
    NFTA_DYNSET_TIMEOUT = 6, NFTA_DYNSET_EXPR = 7, NFTA_DYNSET_PAD = 8,
    NFTA_DYNSET_FLAGS = 9, NFTA_DYNSET_EXPRESSIONS = 10,
    compiler_NFTA_DYNSET_MAX = 11
type
  enum_nft_payload_bases* {.size: sizeof(cuint).} = enum
    NFT_PAYLOAD_LL_HEADER = 0, NFT_PAYLOAD_NETWORK_HEADER = 1,
    NFT_PAYLOAD_TRANSPORT_HEADER = 2, NFT_PAYLOAD_INNER_HEADER = 3,
    NFT_PAYLOAD_TUN_HEADER = 4
type
  enum_nft_payload_csum_types* {.size: sizeof(cuint).} = enum
    NFT_PAYLOAD_CSUM_NONE = 0, NFT_PAYLOAD_CSUM_INET = 1,
    NFT_PAYLOAD_CSUM_SCTP = 2
type
  enum_nft_payload_csum_flags* {.size: sizeof(cuint).} = enum
    NFT_PAYLOAD_L4CSUM_PSEUDOHDR = 1
type
  enum_nft_inner_type* {.size: sizeof(cuint).} = enum
    NFT_INNER_UNSPEC = 0, NFT_INNER_VXLAN = 1, NFT_INNER_GENEVE = 2
type
  enum_nft_inner_flags* {.size: sizeof(cuint).} = enum
    NFT_INNER_HDRSIZE = 1, NFT_INNER_LL = 2, NFT_INNER_NH = 4, NFT_INNER_TH = 8
type
  enum_nft_inner_attributes* {.size: sizeof(cuint).} = enum
    NFTA_INNER_UNSPEC = 0, NFTA_INNER_NUM = 1, NFTA_INNER_TYPE = 2,
    NFTA_INNER_FLAGS = 3, NFTA_INNER_HDRSIZE = 4, NFTA_INNER_EXPR = 5,
    compiler_NFTA_INNER_MAX = 6
type
  enum_nft_payload_attributes* {.size: sizeof(cuint).} = enum
    NFTA_PAYLOAD_UNSPEC = 0, NFTA_PAYLOAD_DREG = 1, NFTA_PAYLOAD_BASE = 2,
    NFTA_PAYLOAD_OFFSET = 3, NFTA_PAYLOAD_LEN = 4, NFTA_PAYLOAD_SREG = 5,
    NFTA_PAYLOAD_CSUM_TYPE = 6, NFTA_PAYLOAD_CSUM_OFFSET = 7,
    NFTA_PAYLOAD_CSUM_FLAGS = 8, compiler_NFTA_PAYLOAD_MAX = 9
type
  enum_nft_exthdr_flags* {.size: sizeof(cuint).} = enum
    NFT_EXTHDR_F_PRESENT = 1
type
  enum_nft_exthdr_op* {.size: sizeof(cuint).} = enum
    NFT_EXTHDR_OP_IPV6 = 0, NFT_EXTHDR_OP_TCPOPT = 1, NFT_EXTHDR_OP_IPV4 = 2,
    NFT_EXTHDR_OP_SCTP = 3, NFT_EXTHDR_OP_DCCP = 4,
    compiler_NFT_EXTHDR_OP_MAX = 5
type
  enum_nft_exthdr_attributes* {.size: sizeof(cuint).} = enum
    NFTA_EXTHDR_UNSPEC = 0, NFTA_EXTHDR_DREG = 1, NFTA_EXTHDR_TYPE = 2,
    NFTA_EXTHDR_OFFSET = 3, NFTA_EXTHDR_LEN = 4, NFTA_EXTHDR_FLAGS = 5,
    NFTA_EXTHDR_OP = 6, NFTA_EXTHDR_SREG = 7, compiler_NFTA_EXTHDR_MAX = 8
type
  enum_nft_meta_keys* {.size: sizeof(cuint).} = enum
    NFT_META_LEN = 0, NFT_META_PROTOCOL = 1, NFT_META_PRIORITY = 2,
    NFT_META_MARK = 3, NFT_META_IIF = 4, NFT_META_OIF = 5, NFT_META_IIFNAME = 6,
    NFT_META_OIFNAME = 7, NFT_META_IFTYPE = 8, NFT_META_OIFTYPE = 9,
    NFT_META_SKUID = 10, NFT_META_SKGID = 11, NFT_META_NFTRACE = 12,
    NFT_META_RTCLASSID = 13, NFT_META_SECMARK = 14, NFT_META_NFPROTO = 15,
    NFT_META_L4PROTO = 16, NFT_META_BRI_IIFNAME = 17, NFT_META_BRI_OIFNAME = 18,
    NFT_META_PKTTYPE = 19, NFT_META_CPU = 20, NFT_META_IIFGROUP = 21,
    NFT_META_OIFGROUP = 22, NFT_META_CGROUP = 23, NFT_META_PRANDOM = 24,
    NFT_META_SECPATH = 25, NFT_META_IIFKIND = 26, NFT_META_OIFKIND = 27,
    NFT_META_BRI_IIFPVID = 28, NFT_META_BRI_IIFVPROTO = 29,
    NFT_META_TIME_NS = 30, NFT_META_TIME_DAY = 31, NFT_META_TIME_HOUR = 32,
    NFT_META_SDIF = 33, NFT_META_SDIFNAME = 34, NFT_META_BRI_BROUTE = 35,
    compiler_NFT_META_IIFTYPE = 36
type
  enum_nft_rt_keys* {.size: sizeof(cuint).} = enum
    NFT_RT_CLASSID = 0, NFT_RT_NEXTHOP4 = 1, NFT_RT_NEXTHOP6 = 2,
    NFT_RT_TCPMSS = 3, NFT_RT_XFRM = 4, compiler_NFT_RT_MAX = 5
type
  enum_nft_hash_types* {.size: sizeof(cuint).} = enum
    NFT_HASH_JENKINS = 0, NFT_HASH_SYM = 1
type
  enum_nft_hash_attributes* {.size: sizeof(cuint).} = enum
    NFTA_HASH_UNSPEC = 0, NFTA_HASH_SREG = 1, NFTA_HASH_DREG = 2,
    NFTA_HASH_LEN = 3, NFTA_HASH_MODULUS = 4, NFTA_HASH_SEED = 5,
    NFTA_HASH_OFFSET = 6, NFTA_HASH_TYPE = 7, NFTA_HASH_SET_NAME = 8,
    NFTA_HASH_SET_ID = 9, compiler_NFTA_HASH_MAX = 10
type
  enum_nft_meta_attributes* {.size: sizeof(cuint).} = enum
    NFTA_META_UNSPEC = 0, NFTA_META_DREG = 1, NFTA_META_KEY = 2,
    NFTA_META_SREG = 3, compiler_NFTA_META_MAX = 4
type
  enum_nft_rt_attributes* {.size: sizeof(cuint).} = enum
    NFTA_RT_UNSPEC = 0, NFTA_RT_DREG = 1, NFTA_RT_KEY = 2,
    compiler_NFTA_RT_MAX = 3
type
  enum_nft_socket_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SOCKET_UNSPEC = 0, NFTA_SOCKET_KEY = 1, NFTA_SOCKET_DREG = 2,
    NFTA_SOCKET_LEVEL = 3, compiler_NFTA_SOCKET_MAX = 4
type
  enum_nft_socket_keys* {.size: sizeof(cuint).} = enum
    NFT_SOCKET_TRANSPARENT = 0, NFT_SOCKET_MARK = 1, NFT_SOCKET_WILDCARD = 2,
    NFT_SOCKET_CGROUPV2 = 3, compiler_NFT_SOCKET_MAX = 4
type
  enum_nft_ct_keys* {.size: sizeof(cuint).} = enum
    NFT_CT_STATE = 0, NFT_CT_DIRECTION = 1, NFT_CT_STATUS = 2, NFT_CT_MARK = 3,
    NFT_CT_SECMARK = 4, NFT_CT_EXPIRATION = 5, NFT_CT_HELPER = 6,
    NFT_CT_L3PROTOCOL = 7, NFT_CT_SRC = 8, NFT_CT_DST = 9, NFT_CT_PROTOCOL = 10,
    NFT_CT_PROTO_SRC = 11, NFT_CT_PROTO_DST = 12, NFT_CT_LABELS = 13,
    NFT_CT_PKTS = 14, NFT_CT_BYTES = 15, NFT_CT_AVGPKT = 16, NFT_CT_ZONE = 17,
    NFT_CT_EVENTMASK = 18, NFT_CT_SRC_IP = 19, NFT_CT_DST_IP = 20,
    NFT_CT_SRC_IP6 = 21, NFT_CT_DST_IP6 = 22, NFT_CT_ID = 23,
    compiler_NFT_CT_MAX = 24
type
  enum_nft_ct_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CT_UNSPEC = 0, NFTA_CT_DREG = 1, NFTA_CT_KEY = 2,
    NFTA_CT_DIRECTION = 3, NFTA_CT_SREG = 4, compiler_NFTA_CT_MAX = 5
type
  enum_nft_offload_attributes* {.size: sizeof(cuint).} = enum
    NFTA_FLOW_UNSPEC = 0, NFTA_FLOW_TABLE_NAME = 1, compiler_NFTA_FLOW_MAX = 2
type
  enum_nft_limit_type* {.size: sizeof(cuint).} = enum
    NFT_LIMIT_PKTS = 0, NFT_LIMIT_PKT_BYTES = 1
type
  enum_nft_limit_flags* {.size: sizeof(cuint).} = enum
    NFT_LIMIT_F_INV = 1
type
  enum_nft_limit_attributes* {.size: sizeof(cuint).} = enum
    NFTA_LIMIT_UNSPEC = 0, NFTA_LIMIT_RATE = 1, NFTA_LIMIT_UNIT = 2,
    NFTA_LIMIT_BURST = 3, NFTA_LIMIT_TYPE = 4, NFTA_LIMIT_FLAGS = 5,
    NFTA_LIMIT_PAD = 6, compiler_NFTA_LIMIT_MAX = 7
type
  enum_nft_connlimit_flags* {.size: sizeof(cuint).} = enum
    NFT_CONNLIMIT_F_INV = 1
type
  enum_nft_connlimit_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CONNLIMIT_UNSPEC = 0, NFTA_CONNLIMIT_COUNT = 1,
    NFTA_CONNLIMIT_FLAGS = 2, compiler_NFTA_CONNLIMIT_MAX = 3
type
  enum_nft_counter_attributes* {.size: sizeof(cuint).} = enum
    NFTA_COUNTER_UNSPEC = 0, NFTA_COUNTER_BYTES = 1, NFTA_COUNTER_PACKETS = 2,
    NFTA_COUNTER_PAD = 3, compiler_NFTA_COUNTER_MAX = 4
type
  enum_nft_last_attributes* {.size: sizeof(cuint).} = enum
    NFTA_LAST_UNSPEC = 0, NFTA_LAST_SET = 1, NFTA_LAST_MSECS = 2,
    NFTA_LAST_PAD = 3, compiler_NFTA_LAST_MAX = 4
type
  enum_nft_log_attributes* {.size: sizeof(cuint).} = enum
    NFTA_LOG_UNSPEC = 0, NFTA_LOG_GROUP = 1, NFTA_LOG_PREFIX = 2,
    NFTA_LOG_SNAPLEN = 3, NFTA_LOG_QTHRESHOLD = 4, NFTA_LOG_LEVEL = 5,
    NFTA_LOG_FLAGS = 6, compiler_NFTA_LOG_MAX = 7
type
  enum_nft_log_level* {.size: sizeof(cuint).} = enum
    NFT_LOGLEVEL_EMERG = 0, NFT_LOGLEVEL_ALERT = 1, NFT_LOGLEVEL_CRIT = 2,
    NFT_LOGLEVEL_ERR = 3, NFT_LOGLEVEL_WARNING = 4, NFT_LOGLEVEL_NOTICE = 5,
    NFT_LOGLEVEL_INFO = 6, NFT_LOGLEVEL_DEBUG = 7, NFT_LOGLEVEL_AUDIT = 8,
    compiler_NFT_LOGLEVEL_MAX = 9
type
  enum_nft_queue_attributes* {.size: sizeof(cuint).} = enum
    NFTA_QUEUE_UNSPEC = 0, NFTA_QUEUE_NUM = 1, NFTA_QUEUE_TOTAL = 2,
    NFTA_QUEUE_FLAGS = 3, NFTA_QUEUE_SREG_QNUM = 4, compiler_NFTA_QUEUE_MAX = 5
type
  enum_nft_quota_flags* {.size: sizeof(cuint).} = enum
    NFT_QUOTA_F_INV = 1, NFT_QUOTA_F_DEPLETED = 2
type
  enum_nft_quota_attributes* {.size: sizeof(cuint).} = enum
    NFTA_QUOTA_UNSPEC = 0, NFTA_QUOTA_BYTES = 1, NFTA_QUOTA_FLAGS = 2,
    NFTA_QUOTA_PAD = 3, NFTA_QUOTA_CONSUMED = 4, compiler_NFTA_QUOTA_MAX = 5
type
  enum_nft_secmark_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SECMARK_UNSPEC = 0, NFTA_SECMARK_CTX = 1, compiler_NFTA_SECMARK_MAX = 2
type
  enum_nft_reject_types* {.size: sizeof(cuint).} = enum
    NFT_REJECT_ICMP_UNREACH = 0, NFT_REJECT_TCP_RST = 1,
    NFT_REJECT_ICMPX_UNREACH = 2
type
  enum_nft_reject_inet_code* {.size: sizeof(cuint).} = enum
    NFT_REJECT_ICMPX_NO_ROUTE = 0, NFT_REJECT_ICMPX_PORT_UNREACH = 1,
    NFT_REJECT_ICMPX_HOST_UNREACH = 2, NFT_REJECT_ICMPX_ADMIN_PROHIBITED = 3,
    compiler_NFT_REJECT_ICMPX_MAX = 4
type
  enum_nft_reject_attributes* {.size: sizeof(cuint).} = enum
    NFTA_REJECT_UNSPEC = 0, NFTA_REJECT_TYPE = 1, NFTA_REJECT_ICMP_CODE = 2,
    compiler_NFTA_REJECT_MAX = 3
type
  enum_nft_nat_types* {.size: sizeof(cuint).} = enum
    NFT_NAT_SNAT = 0, NFT_NAT_DNAT = 1
type
  enum_nft_nat_attributes* {.size: sizeof(cuint).} = enum
    NFTA_NAT_UNSPEC = 0, NFTA_NAT_TYPE = 1, NFTA_NAT_FAMILY = 2,
    NFTA_NAT_REG_ADDR_MIN = 3, NFTA_NAT_REG_ADDR_MAX = 4,
    NFTA_NAT_REG_PROTO_MIN = 5, NFTA_NAT_REG_PROTO_MAX = 6, NFTA_NAT_FLAGS = 7,
    compiler_NFTA_NAT_MAX = 8
type
  enum_nft_tproxy_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TPROXY_UNSPEC = 0, NFTA_TPROXY_FAMILY = 1, NFTA_TPROXY_REG_ADDR = 2,
    NFTA_TPROXY_REG_PORT = 3, compiler_NFTA_TPROXY_MAX = 4
type
  enum_nft_masq_attributes* {.size: sizeof(cuint).} = enum
    NFTA_MASQ_UNSPEC = 0, NFTA_MASQ_FLAGS = 1, NFTA_MASQ_REG_PROTO_MIN = 2,
    NFTA_MASQ_REG_PROTO_MAX = 3, compiler_NFTA_MASQ_MAX = 4
type
  enum_nft_redir_attributes* {.size: sizeof(cuint).} = enum
    NFTA_REDIR_UNSPEC = 0, NFTA_REDIR_REG_PROTO_MIN = 1,
    NFTA_REDIR_REG_PROTO_MAX = 2, NFTA_REDIR_FLAGS = 3,
    compiler_NFTA_REDIR_MAX = 4
type
  enum_nft_dup_attributes* {.size: sizeof(cuint).} = enum
    NFTA_DUP_UNSPEC = 0, NFTA_DUP_SREG_ADDR = 1, NFTA_DUP_SREG_DEV = 2,
    compiler_NFTA_DUP_MAX = 3
type
  enum_nft_fwd_attributes* {.size: sizeof(cuint).} = enum
    NFTA_FWD_UNSPEC = 0, NFTA_FWD_SREG_DEV = 1, NFTA_FWD_SREG_ADDR = 2,
    NFTA_FWD_NFPROTO = 3, compiler_NFTA_FWD_MAX = 4
type
  enum_nft_objref_attributes* {.size: sizeof(cuint).} = enum
    NFTA_OBJREF_UNSPEC = 0, NFTA_OBJREF_IMM_TYPE = 1, NFTA_OBJREF_IMM_NAME = 2,
    NFTA_OBJREF_SET_SREG = 3, NFTA_OBJREF_SET_NAME = 4, NFTA_OBJREF_SET_ID = 5,
    compiler_NFTA_OBJREF_MAX = 6
type
  enum_nft_gen_attributes* {.size: sizeof(cuint).} = enum
    NFTA_GEN_UNSPEC = 0, NFTA_GEN_ID = 1, NFTA_GEN_PROC_PID = 2,
    NFTA_GEN_PROC_NAME = 3, compiler_NFTA_GEN_MAX = 4
type
  enum_nft_fib_attributes* {.size: sizeof(cuint).} = enum
    NFTA_FIB_UNSPEC = 0, NFTA_FIB_DREG = 1, NFTA_FIB_RESULT = 2,
    NFTA_FIB_FLAGS = 3, compiler_NFTA_FIB_MAX = 4
type
  enum_nft_fib_result* {.size: sizeof(cuint).} = enum
    NFT_FIB_RESULT_UNSPEC = 0, NFT_FIB_RESULT_OIF = 1,
    NFT_FIB_RESULT_OIFNAME = 2, NFT_FIB_RESULT_ADDRTYPE = 3,
    compiler_NFT_FIB_RESULT_MAX = 4
type
  enum_nft_fib_flags* {.size: sizeof(cuint).} = enum
    NFTA_FIB_F_SADDR = 1, NFTA_FIB_F_DADDR = 2, NFTA_FIB_F_MARK = 4,
    NFTA_FIB_F_IIF = 8, NFTA_FIB_F_OIF = 16, NFTA_FIB_F_PRESENT = 32
type
  enum_nft_ct_helper_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CT_HELPER_UNSPEC = 0, NFTA_CT_HELPER_NAME = 1,
    NFTA_CT_HELPER_L3PROTO = 2, NFTA_CT_HELPER_L4PROTO = 3,
    compiler_NFTA_CT_HELPER_MAX = 4
type
  enum_nft_ct_timeout_timeout_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CT_TIMEOUT_UNSPEC = 0, NFTA_CT_TIMEOUT_L3PROTO = 1,
    NFTA_CT_TIMEOUT_L4PROTO = 2, NFTA_CT_TIMEOUT_DATA = 3,
    compiler_NFTA_CT_TIMEOUT_MAX = 4
type
  enum_nft_ct_expectation_attributes* {.size: sizeof(cuint).} = enum
    NFTA_CT_EXPECT_UNSPEC = 0, NFTA_CT_EXPECT_L3PROTO = 1,
    NFTA_CT_EXPECT_L4PROTO = 2, NFTA_CT_EXPECT_DPORT = 3,
    NFTA_CT_EXPECT_TIMEOUT = 4, NFTA_CT_EXPECT_SIZE = 5,
    compiler_NFTA_CT_EXPECT_MAX = 6
type
  enum_nft_object_attributes* {.size: sizeof(cuint).} = enum
    NFTA_OBJ_UNSPEC = 0, NFTA_OBJ_TABLE = 1, NFTA_OBJ_NAME = 2,
    NFTA_OBJ_TYPE = 3, NFTA_OBJ_DATA = 4, NFTA_OBJ_USE = 5, NFTA_OBJ_HANDLE = 6,
    NFTA_OBJ_PAD = 7, NFTA_OBJ_USERDATA = 8, compiler_NFTA_OBJ_MAX = 9
type
  enum_nft_flowtable_flags* {.size: sizeof(cuint).} = enum
    NFT_FLOWTABLE_HW_OFFLOAD = 1, NFT_FLOWTABLE_COUNTER = 2,
    NFT_FLOWTABLE_MASK = 3
type
  enum_nft_flowtable_attributes* {.size: sizeof(cuint).} = enum
    NFTA_FLOWTABLE_UNSPEC = 0, NFTA_FLOWTABLE_TABLE = 1,
    NFTA_FLOWTABLE_NAME_enumval = 2, NFTA_FLOWTABLE_HOOK = 3,
    NFTA_FLOWTABLE_USE = 4, NFTA_FLOWTABLE_HANDLE = 5, NFTA_FLOWTABLE_PAD = 6,
    NFTA_FLOWTABLE_FLAGS = 7, compiler_NFTA_FLOWTABLE_MAX = 8
type
  enum_nft_flowtable_hook_attributes* {.size: sizeof(cuint).} = enum
    NFTA_FLOWTABLE_HOOK_UNSPEC = 0, NFTA_FLOWTABLE_HOOK_NUM = 1,
    NFTA_FLOWTABLE_HOOK_PRIORITY = 2, NFTA_FLOWTABLE_HOOK_DEVS = 3,
    compiler_NFTA_FLOWTABLE_HOOK_MAX = 4
type
  enum_nft_osf_attributes* {.size: sizeof(cuint).} = enum
    NFTA_OSF_UNSPEC = 0, NFTA_OSF_DREG = 1, NFTA_OSF_TTL = 2,
    NFTA_OSF_FLAGS = 3, compiler_NFTA_OSF_MAX = 4
type
  enum_nft_osf_flags* {.size: sizeof(cuint).} = enum
    NFT_OSF_F_VERSION = 1
type
  enum_nft_synproxy_attributes* {.size: sizeof(cuint).} = enum
    NFTA_SYNPROXY_UNSPEC = 0, NFTA_SYNPROXY_MSS = 1, NFTA_SYNPROXY_WSCALE = 2,
    NFTA_SYNPROXY_FLAGS = 3, compiler_NFTA_SYNPROXY_MAX = 4
type
  enum_nft_devices_attributes* {.size: sizeof(cuint).} = enum
    NFTA_DEVICE_UNSPEC = 0, NFTA_DEVICE_NAME = 1, compiler_NFTA_DEVICE_MAX = 2
type
  enum_nft_xfrm_attributes* {.size: sizeof(cuint).} = enum
    NFTA_XFRM_UNSPEC = 0, NFTA_XFRM_DREG = 1, NFTA_XFRM_KEY = 2,
    NFTA_XFRM_DIR = 3, NFTA_XFRM_SPNUM = 4, compiler_NFTA_XFRM_MAX = 5
type
  enum_nft_xfrm_keys* {.size: sizeof(cuint).} = enum
    NFT_XFRM_KEY_UNSPEC = 0, NFT_XFRM_KEY_DADDR_IP4 = 1,
    NFT_XFRM_KEY_DADDR_IP6 = 2, NFT_XFRM_KEY_SADDR_IP4 = 3,
    NFT_XFRM_KEY_SADDR_IP6 = 4, NFT_XFRM_KEY_REQID = 5, NFT_XFRM_KEY_SPI = 6,
    compiler_NFT_XFRM_KEY_MAX = 7
type
  enum_nft_trace_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TRACE_UNSPEC = 0, NFTA_TRACE_TABLE = 1, NFTA_TRACE_CHAIN = 2,
    NFTA_TRACE_RULE_HANDLE = 3, NFTA_TRACE_TYPE = 4, NFTA_TRACE_VERDICT = 5,
    NFTA_TRACE_ID = 6, NFTA_TRACE_LL_HEADER = 7, NFTA_TRACE_NETWORK_HEADER = 8,
    NFTA_TRACE_TRANSPORT_HEADER = 9, NFTA_TRACE_IIF = 10,
    NFTA_TRACE_IIFTYPE = 11, NFTA_TRACE_OIF = 12, NFTA_TRACE_OIFTYPE = 13,
    NFTA_TRACE_MARK = 14, NFTA_TRACE_NFPROTO = 15, NFTA_TRACE_POLICY = 16,
    NFTA_TRACE_PAD = 17, compiler_NFTA_TRACE_MAX = 18
type
  enum_nft_trace_types* {.size: sizeof(cuint).} = enum
    NFT_TRACETYPE_UNSPEC = 0, NFT_TRACETYPE_POLICY = 1,
    NFT_TRACETYPE_RETURN = 2, NFT_TRACETYPE_RULE = 3,
    compiler_NFT_TRACETYPE_MAX = 4
type
  enum_nft_ng_attributes* {.size: sizeof(cuint).} = enum
    NFTA_NG_UNSPEC = 0, NFTA_NG_DREG = 1, NFTA_NG_MODULUS = 2, NFTA_NG_TYPE = 3,
    NFTA_NG_OFFSET = 4, NFTA_NG_SET_NAME = 5, NFTA_NG_SET_ID = 6,
    compiler_NFTA_NG_MAX = 7
type
  enum_nft_ng_types* {.size: sizeof(cuint).} = enum
    NFT_NG_INCREMENTAL = 0, NFT_NG_RANDOM = 1, compiler_NFT_NG_MAX = 2
type
  enum_nft_tunnel_key_ip_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_IP_UNSPEC = 0, NFTA_TUNNEL_KEY_IP_SRC = 1,
    NFTA_TUNNEL_KEY_IP_DST = 2, compiler_NFTA_TUNNEL_KEY_IP_MAX = 3
type
  enum_nft_tunnel_ip6_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_IP6_UNSPEC = 0, NFTA_TUNNEL_KEY_IP6_SRC = 1,
    NFTA_TUNNEL_KEY_IP6_DST = 2, NFTA_TUNNEL_KEY_IP6_FLOWLABEL = 3,
    compiler_NFTA_TUNNEL_KEY_IP6_MAX = 4
type
  enum_nft_tunnel_opts_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_OPTS_UNSPEC = 0, NFTA_TUNNEL_KEY_OPTS_VXLAN = 1,
    NFTA_TUNNEL_KEY_OPTS_ERSPAN = 2, NFTA_TUNNEL_KEY_OPTS_GENEVE = 3,
    compiler_NFTA_TUNNEL_KEY_OPTS_MAX = 4
type
  enum_nft_tunnel_opts_vxlan_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_VXLAN_UNSPEC = 0, NFTA_TUNNEL_KEY_VXLAN_GBP = 1,
    compiler_NFTA_TUNNEL_KEY_VXLAN_MAX = 2
type
  enum_nft_tunnel_opts_erspan_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_ERSPAN_UNSPEC = 0, NFTA_TUNNEL_KEY_ERSPAN_VERSION = 1,
    NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX = 2, NFTA_TUNNEL_KEY_ERSPAN_V2_HWID = 3,
    NFTA_TUNNEL_KEY_ERSPAN_V2_DIR = 4, compiler_NFTA_TUNNEL_KEY_ERSPAN_MAX = 5
type
  enum_nft_tunnel_opts_geneve_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_GENEVE_UNSPEC = 0, NFTA_TUNNEL_KEY_GENEVE_CLASS = 1,
    NFTA_TUNNEL_KEY_GENEVE_TYPE = 2, NFTA_TUNNEL_KEY_GENEVE_DATA = 3,
    compiler_NFTA_TUNNEL_KEY_GENEVE_MAX = 4
type
  enum_nft_tunnel_flags* {.size: sizeof(cuint).} = enum
    NFT_TUNNEL_F_ZERO_CSUM_TX = 1, NFT_TUNNEL_F_DONT_FRAGMENT = 2,
    NFT_TUNNEL_F_SEQ_NUMBER = 4
type
  enum_nft_tunnel_key_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_KEY_UNSPEC = 0, NFTA_TUNNEL_KEY_ID = 1, NFTA_TUNNEL_KEY_IP = 2,
    NFTA_TUNNEL_KEY_IP6 = 3, NFTA_TUNNEL_KEY_FLAGS = 4, NFTA_TUNNEL_KEY_TOS = 5,
    NFTA_TUNNEL_KEY_TTL = 6, NFTA_TUNNEL_KEY_SPORT = 7,
    NFTA_TUNNEL_KEY_DPORT = 8, NFTA_TUNNEL_KEY_OPTS = 9,
    compiler_NFTA_TUNNEL_KEY_MAX = 10
type
  enum_nft_tunnel_keys* {.size: sizeof(cuint).} = enum
    NFT_TUNNEL_PATH = 0, NFT_TUNNEL_ID = 1, compiler_NFT_TUNNEL_MAX = 2
type
  enum_nft_tunnel_mode* {.size: sizeof(cuint).} = enum
    NFT_TUNNEL_MODE_NONE = 0, NFT_TUNNEL_MODE_RX = 1, NFT_TUNNEL_MODE_TX = 2,
    compiler_NFT_TUNNEL_MODE_MAX = 3
type
  enum_nft_tunnel_attributes* {.size: sizeof(cuint).} = enum
    NFTA_TUNNEL_UNSPEC = 0, NFTA_TUNNEL_KEY = 1, NFTA_TUNNEL_DREG = 2,
    NFTA_TUNNEL_MODE = 3, compiler_NFTA_TUNNEL_MAX = 4
type
  enum_nfnetlink_groups* {.size: sizeof(cuint).} = enum
    NFNLGRP_NONE = 0, NFNLGRP_CONNTRACK_NEW = 1, NFNLGRP_CONNTRACK_UPDATE = 2,
    NFNLGRP_CONNTRACK_DESTROY = 3, NFNLGRP_CONNTRACK_EXP_NEW = 4,
    NFNLGRP_CONNTRACK_EXP_UPDATE = 5, NFNLGRP_CONNTRACK_EXP_DESTROY = 6,
    NFNLGRP_NFTABLES = 7, NFNLGRP_ACCT_QUOTA = 8, NFNLGRP_NFTRACE = 9,
    compiler_NFNLGRP_MAX = 10
type
  enum_nfnl_batch_attributes* {.size: sizeof(cuint).} = enum
    NFNL_BATCH_UNSPEC = 0, NFNL_BATCH_GENID = 1, compiler_NFNL_BATCH_MAX = 2
type
  compiler_U32_TYPE* = object
type
  compiler_REDIRECT* = object
type
  compiler_SWORD_TYPE* = object
type
  compiler_SLONGWORD_TYPE* = object
type
  compiler_restrict* = object
type
  typedef* = object
type
  struct_iovec* = object
type
  compiler_NFDBITS* = object
type
  compiler_ULONGWORD_TYPE* = object
type
  compiler_SQUAD_TYPE* = object
type
  compiler_REDIRECT_NTH* = object
type
  compiler_UQUAD_TYPE* = object
type
  compiler_kernel_sa_family_t* = cushort ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:10:24
  struct_kernel_sockaddr_storage_anon0_t_anon0_t* {.pure, inheritable, bycopy.} = object
    ss_family*: compiler_kernel_sa_family_t
    compiler_data*: array[126'i64, uint8]
  struct_kernel_sockaddr_storage_anon0_t* {.union, bycopy.} = object
    anon0*: struct_kernel_sockaddr_storage_anon0_t_anon0_t
    compiler_align*: pointer
  struct_kernel_sockaddr_storage* {.pure, inheritable, bycopy.} = object
    anon0*: struct_kernel_sockaddr_storage_anon0_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:16:8
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
  u_int8_t* = compiler_uint8_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:158:19
  u_int16_t* = compiler_uint16_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:159:20
  u_int32_t* = compiler_uint32_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:160:20
  u_int64_t* = compiler_uint64_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:161:20
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
  struct_sockaddr_nl* {.pure, inheritable, bycopy.} = object
    nl_family*: compiler_kernel_sa_family_t ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:37:8
    nl_pad*: cushort
    nl_pid*: compiler_u32
    nl_groups*: compiler_u32
  compiler_u32* = cuint      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:27:22
  struct_nlmsghdr* {.pure, inheritable, bycopy.} = object
    nlmsg_len*: compiler_u32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:52:8
    nlmsg_type*: compiler_u16
    nlmsg_flags*: compiler_u16
    nlmsg_seq*: compiler_u32
    nlmsg_pid*: compiler_u32
  compiler_u16* = cushort    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:24:24
  struct_nlmsgerr* {.pure, inheritable, bycopy.} = object
    error*: cint             ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:119:8
    msg*: struct_nlmsghdr
  struct_nl_pktinfo* {.pure, inheritable, bycopy.} = object
    group*: compiler_u32     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:176:8
  struct_nl_mmap_req* {.pure, inheritable, bycopy.} = object
    nm_block_size*: cuint    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:180:8
    nm_block_nr*: cuint
    nm_frame_size*: cuint
    nm_frame_nr*: cuint
  struct_nl_mmap_hdr* {.pure, inheritable, bycopy.} = object
    nm_status*: cuint        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:187:8
    nm_len*: cuint
    nm_group*: compiler_u32
    nm_pid*: compiler_u32
    nm_uid*: compiler_u32
    nm_gid*: compiler_u32
  struct_nlattr* {.pure, inheritable, bycopy.} = object
    nla_len*: compiler_u16   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:225:8
    nla_type*: compiler_u16
  struct_nla_bitfield32* {.pure, inheritable, bycopy.} = object
    value*: compiler_u32     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:261:8
    selector*: compiler_u32
  struct_nfgenmsg* {.pure, inheritable, bycopy.} = object
    nfgen_family*: compiler_u8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:34:8
    version*: compiler_u8
    res_id*: compiler_be16
  compiler_u8* = uint8       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/asm-generic/int-ll64.h:21:23
  compiler_be16* = compiler_u16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/types.h:32:25
when 128 is static:
  const
    internal_K_SS_MAXSIZE* = 128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:8:9
else:
  let internal_K_SS_MAXSIZE* = 128 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:8:9
when 1 is static:
  const
    SOCK_SNDBUF_LOCK* = 1    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:29:9
else:
  let SOCK_SNDBUF_LOCK* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:29:9
when 2 is static:
  const
    SOCK_RCVBUF_LOCK* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:30:9
else:
  let SOCK_RCVBUF_LOCK* = 2  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:30:9
when 255 is static:
  const
    SOCK_TXREHASH_DEFAULT* = 255 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:34:9
else:
  let SOCK_TXREHASH_DEFAULT* = 255 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:34:9
when 0 is static:
  const
    SOCK_TXREHASH_DISABLED* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:35:9
else:
  let SOCK_TXREHASH_DISABLED* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:35:9
when 1 is static:
  const
    SOCK_TXREHASH_ENABLED* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:36:9
else:
  let SOCK_TXREHASH_ENABLED* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/socket.h:36:9
when 1 is static:
  const
    internal_SYS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:23:9
else:
  let internal_SYS_TYPES_H* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:23:9
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
when 0 is static:
  const
    NETLINK_ROUTE* = 0       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:9:9
else:
  let NETLINK_ROUTE* = 0     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:9:9
when 1 is static:
  const
    NETLINK_UNUSED* = 1      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:10:9
else:
  let NETLINK_UNUSED* = 1    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:10:9
when 2 is static:
  const
    NETLINK_USERSOCK* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:11:9
else:
  let NETLINK_USERSOCK* = 2  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:11:9
when 3 is static:
  const
    NETLINK_FIREWALL* = 3    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:12:9
else:
  let NETLINK_FIREWALL* = 3  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:12:9
when 4 is static:
  const
    NETLINK_SOCK_DIAG* = 4   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:13:9
else:
  let NETLINK_SOCK_DIAG* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:13:9
when 5 is static:
  const
    NETLINK_NFLOG* = 5       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:14:9
else:
  let NETLINK_NFLOG* = 5     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:14:9
when 6 is static:
  const
    NETLINK_XFRM* = 6        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:15:9
else:
  let NETLINK_XFRM* = 6      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:15:9
when 7 is static:
  const
    NETLINK_SELINUX* = 7     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:16:9
else:
  let NETLINK_SELINUX* = 7   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:16:9
when 8 is static:
  const
    NETLINK_ISCSI* = 8       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:17:9
else:
  let NETLINK_ISCSI* = 8     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:17:9
when 9 is static:
  const
    NETLINK_AUDIT* = 9       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:18:9
else:
  let NETLINK_AUDIT* = 9     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:18:9
when 10 is static:
  const
    NETLINK_FIB_LOOKUP* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:19:9
else:
  let NETLINK_FIB_LOOKUP* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:19:9
when 11 is static:
  const
    NETLINK_CONNECTOR* = 11  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:20:9
else:
  let NETLINK_CONNECTOR* = 11 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:20:9
when 12 is static:
  const
    NETLINK_NETFILTER* = 12  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:21:9
else:
  let NETLINK_NETFILTER* = 12 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:21:9
when 13 is static:
  const
    NETLINK_IP6_FW* = 13     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:22:9
else:
  let NETLINK_IP6_FW* = 13   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:22:9
when 14 is static:
  const
    NETLINK_DNRTMSG* = 14    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:23:9
else:
  let NETLINK_DNRTMSG* = 14  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:23:9
when 15 is static:
  const
    NETLINK_KOBJECT_UEVENT* = 15 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:24:9
else:
  let NETLINK_KOBJECT_UEVENT* = 15 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:24:9
when 16 is static:
  const
    NETLINK_GENERIC* = 16    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:25:9
else:
  let NETLINK_GENERIC* = 16  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:25:9
when 18 is static:
  const
    NETLINK_SCSITRANSPORT* = 18 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:27:9
else:
  let NETLINK_SCSITRANSPORT* = 18 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:27:9
when 19 is static:
  const
    NETLINK_ECRYPTFS* = 19   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:28:9
else:
  let NETLINK_ECRYPTFS* = 19 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:28:9
when 20 is static:
  const
    NETLINK_RDMA* = 20       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:29:9
else:
  let NETLINK_RDMA* = 20     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:29:9
when 21 is static:
  const
    NETLINK_CRYPTO* = 21     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:30:9
else:
  let NETLINK_CRYPTO* = 21   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:30:9
when 22 is static:
  const
    NETLINK_SMC* = 22        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:31:9
else:
  let NETLINK_SMC* = 22      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:31:9
when NETLINK_SOCK_DIAG is typedesc:
  type
    NETLINK_INET_DIAG* = NETLINK_SOCK_DIAG ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:33:9
else:
  when NETLINK_SOCK_DIAG is static:
    const
      NETLINK_INET_DIAG* = NETLINK_SOCK_DIAG ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:33:9
  else:
    let NETLINK_INET_DIAG* = NETLINK_SOCK_DIAG ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:33:9
when 32 is static:
  const
    MAX_LINKS* = 32          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:35:9
else:
  let MAX_LINKS* = 32        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:35:9
when 1 is static:
  const
    NLM_F_REQUEST* = 1       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:62:9
else:
  let NLM_F_REQUEST* = 1     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:62:9
when 2 is static:
  const
    NLM_F_MULTI* = 2         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:63:9
else:
  let NLM_F_MULTI* = 2       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:63:9
when 4 is static:
  const
    NLM_F_ACK* = 4           ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:64:9
else:
  let NLM_F_ACK* = 4         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:64:9
when 8 is static:
  const
    NLM_F_ECHO* = 8          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:65:9
else:
  let NLM_F_ECHO* = 8        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:65:9
when 16 is static:
  const
    NLM_F_DUMP_INTR* = 16    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:66:9
else:
  let NLM_F_DUMP_INTR* = 16  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:66:9
when 32 is static:
  const
    NLM_F_DUMP_FILTERED* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:67:9
else:
  let NLM_F_DUMP_FILTERED* = 32 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:67:9
when 256 is static:
  const
    NLM_F_ROOT* = 256        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:70:9
else:
  let NLM_F_ROOT* = 256      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:70:9
when 512 is static:
  const
    NLM_F_MATCH* = 512       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:71:9
else:
  let NLM_F_MATCH* = 512     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:71:9
when 1024 is static:
  const
    NLM_F_ATOMIC* = 1024     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:72:9
else:
  let NLM_F_ATOMIC* = 1024   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:72:9
when 256 is static:
  const
    NLM_F_REPLACE* = 256     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:76:9
else:
  let NLM_F_REPLACE* = 256   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:76:9
when 512 is static:
  const
    NLM_F_EXCL* = 512        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:77:9
else:
  let NLM_F_EXCL* = 512      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:77:9
when 1024 is static:
  const
    NLM_F_CREATE* = 1024     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:78:9
else:
  let NLM_F_CREATE* = 1024   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:78:9
when 2048 is static:
  const
    NLM_F_APPEND* = 2048     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:79:9
else:
  let NLM_F_APPEND* = 2048   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:79:9
when 256 is static:
  const
    NLM_F_NONREC* = 256      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:82:9
else:
  let NLM_F_NONREC* = 256    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:82:9
when 512 is static:
  const
    NLM_F_BULK* = 512        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:83:9
else:
  let NLM_F_BULK* = 512      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:83:9
when 256 is static:
  const
    NLM_F_CAPPED* = 256      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:86:9
else:
  let NLM_F_CAPPED* = 256    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:86:9
when 512 is static:
  const
    NLM_F_ACK_TLVS* = 512    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:87:9
else:
  let NLM_F_ACK_TLVS* = 512  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:87:9
when cast[cuint](4'i64) is static:
  const
    NLMSG_ALIGNTO* = cast[cuint](4'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:98:9
else:
  let NLMSG_ALIGNTO* = cast[cuint](4'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:98:9
when 1 is static:
  const
    NLMSG_NOOP* = 1          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:112:9
else:
  let NLMSG_NOOP* = 1        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:112:9
when 2 is static:
  const
    NLMSG_ERROR* = 2         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:113:9
else:
  let NLMSG_ERROR* = 2       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:113:9
when 3 is static:
  const
    NLMSG_DONE* = 3          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:114:9
else:
  let NLMSG_DONE* = 3        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:114:9
when 4 is static:
  const
    NLMSG_OVERRUN* = 4       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:115:9
else:
  let NLMSG_OVERRUN* = 4     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:115:9
when 16 is static:
  const
    NLMSG_MIN_TYPE* = 16     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:117:9
else:
  let NLMSG_MIN_TYPE* = 16   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:117:9
when 1 is static:
  const
    NETLINK_ADD_MEMBERSHIP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:163:9
else:
  let NETLINK_ADD_MEMBERSHIP* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:163:9
when 2 is static:
  const
    NETLINK_DROP_MEMBERSHIP* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:164:9
else:
  let NETLINK_DROP_MEMBERSHIP* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:164:9
when 3 is static:
  const
    NETLINK_PKTINFO* = 3     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:165:9
else:
  let NETLINK_PKTINFO* = 3   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:165:9
when 4 is static:
  const
    NETLINK_BROADCAST_ERROR* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:166:9
else:
  let NETLINK_BROADCAST_ERROR* = 4 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:166:9
when 5 is static:
  const
    NETLINK_NO_ENOBUFS* = 5  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:167:9
else:
  let NETLINK_NO_ENOBUFS* = 5 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:167:9
when 6 is static:
  const
    NETLINK_RX_RING* = 6     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:168:9
else:
  let NETLINK_RX_RING* = 6   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:168:9
when 7 is static:
  const
    NETLINK_TX_RING* = 7     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:169:9
else:
  let NETLINK_TX_RING* = 7   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:169:9
when 8 is static:
  const
    NETLINK_LISTEN_ALL_NSID* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:170:9
else:
  let NETLINK_LISTEN_ALL_NSID* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:170:9
when 9 is static:
  const
    NETLINK_LIST_MEMBERSHIPS* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:171:9
else:
  let NETLINK_LIST_MEMBERSHIPS* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:171:9
when 10 is static:
  const
    NETLINK_CAP_ACK* = 10    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:172:9
else:
  let NETLINK_CAP_ACK* = 10  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:172:9
when 11 is static:
  const
    NETLINK_EXT_ACK* = 11    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:173:9
else:
  let NETLINK_EXT_ACK* = 11  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:173:9
when 12 is static:
  const
    NETLINK_GET_STRICT_CHK* = 12 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:174:9
else:
  let NETLINK_GET_STRICT_CHK* = 12 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:174:9
when NLMSG_ALIGNTO is typedesc:
  type
    NL_MMAP_MSG_ALIGNMENT* = NLMSG_ALIGNTO ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:205:9
else:
  when NLMSG_ALIGNTO is static:
    const
      NL_MMAP_MSG_ALIGNMENT* = NLMSG_ALIGNTO ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:205:9
  else:
    let NL_MMAP_MSG_ALIGNMENT* = NLMSG_ALIGNTO ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:205:9
when 36 is static:
  const
    NET_MAJOR* = 36          ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:209:9
else:
  let NET_MAJOR* = 36        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:209:9
when 4 is static:
  const
    NLA_ALIGNTO* = 4         ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:244:9
else:
  let NLA_ALIGNTO* = 4       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netlink.h:244:9
when 256 is static:
  const
    NFT_NAME_MAXLEN* = 256   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:5:9
else:
  let NFT_NAME_MAXLEN* = 256 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:5:9
when NFT_NAME_MAXLEN is typedesc:
  type
    NFT_TABLE_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:6:9
else:
  when NFT_NAME_MAXLEN is static:
    const
      NFT_TABLE_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:6:9
  else:
    let NFT_TABLE_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:6:9
when NFT_NAME_MAXLEN is typedesc:
  type
    NFT_CHAIN_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:7:9
else:
  when NFT_NAME_MAXLEN is static:
    const
      NFT_CHAIN_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:7:9
  else:
    let NFT_CHAIN_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:7:9
when NFT_NAME_MAXLEN is typedesc:
  type
    NFT_SET_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:8:9
else:
  when NFT_NAME_MAXLEN is static:
    const
      NFT_SET_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:8:9
  else:
    let NFT_SET_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:8:9
when NFT_NAME_MAXLEN is typedesc:
  type
    NFT_OBJ_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:9:9
else:
  when NFT_NAME_MAXLEN is static:
    const
      NFT_OBJ_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:9:9
  else:
    let NFT_OBJ_MAXNAMELEN* = NFT_NAME_MAXLEN ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:9:9
when 256 is static:
  const
    NFT_USERDATA_MAXLEN* = 256 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:10:9
else:
  let NFT_USERDATA_MAXLEN* = 256 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:10:9
when 16 is static:
  const
    NFT_OSF_MAXGENRELEN* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:11:9
else:
  let NFT_OSF_MAXGENRELEN* = 16 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:11:9
when 16 is static:
  const
    NFT_REG_SIZE* = 16       ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:49:9
else:
  let NFT_REG_SIZE* = 16     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:49:9
when 4 is static:
  const
    NFT_REG32_SIZE* = 4      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:50:9
else:
  let NFT_REG32_SIZE* = 4    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:50:9
when cast[cuint](4294967040'i64) is static:
  const
    NFT_DATA_RESERVED_MASK* = cast[cuint](4294967040'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:501:9
else:
  let NFT_DATA_RESERVED_MASK* = cast[cuint](4294967040'i64) ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:501:9
when 64 is static:
  const
    NFT_DATA_VALUE_MAXLEN* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:518:9
else:
  let NFT_DATA_VALUE_MAXLEN* = 64 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:518:9
when NFT_META_IFTYPE is typedesc:
  type
    NFT_META_IIFTYPE* = NFT_META_IFTYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:957:9
else:
  when NFT_META_IFTYPE is static:
    const
      NFT_META_IIFTYPE* = NFT_META_IFTYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:957:9
  else:
    let NFT_META_IIFTYPE* = NFT_META_IFTYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:957:9
when 1 is static:
  const
    NFT_QUEUE_FLAG_BYPASS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1340:9
else:
  let NFT_QUEUE_FLAG_BYPASS* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1340:9
when 2 is static:
  const
    NFT_QUEUE_FLAG_CPU_FANOUT* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1341:9
else:
  let NFT_QUEUE_FLAG_CPU_FANOUT* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1341:9
when 3 is static:
  const
    NFT_QUEUE_FLAG_MASK* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1342:9
else:
  let NFT_QUEUE_FLAG_MASK* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1342:9
when 4096 is static:
  const
    NFT_SECMARK_CTX_MAXLEN* = 4096 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1379:9
else:
  let NFT_SECMARK_CTX_MAXLEN* = 4096 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1379:9
when 0 is static:
  const
    NFT_OBJECT_UNSPEC* = 0   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1640:9
else:
  let NFT_OBJECT_UNSPEC* = 0 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1640:9
when 1 is static:
  const
    NFT_OBJECT_COUNTER* = 1  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1641:9
else:
  let NFT_OBJECT_COUNTER* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1641:9
when 2 is static:
  const
    NFT_OBJECT_QUOTA* = 2    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1642:9
else:
  let NFT_OBJECT_QUOTA* = 2  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1642:9
when 3 is static:
  const
    NFT_OBJECT_CT_HELPER* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1643:9
else:
  let NFT_OBJECT_CT_HELPER* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1643:9
when 4 is static:
  const
    NFT_OBJECT_LIMIT* = 4    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1644:9
else:
  let NFT_OBJECT_LIMIT* = 4  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1644:9
when 5 is static:
  const
    NFT_OBJECT_CONNLIMIT* = 5 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1645:9
else:
  let NFT_OBJECT_CONNLIMIT* = 5 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1645:9
when 6 is static:
  const
    NFT_OBJECT_TUNNEL* = 6   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1646:9
else:
  let NFT_OBJECT_TUNNEL* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1646:9
when 7 is static:
  const
    NFT_OBJECT_CT_TIMEOUT* = 7 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1647:9
else:
  let NFT_OBJECT_CT_TIMEOUT* = 7 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1647:9
when 8 is static:
  const
    NFT_OBJECT_SECMARK* = 8  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1648:9
else:
  let NFT_OBJECT_SECMARK* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1648:9
when 9 is static:
  const
    NFT_OBJECT_CT_EXPECT* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1649:9
else:
  let NFT_OBJECT_CT_EXPECT* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1649:9
when 10 is static:
  const
    NFT_OBJECT_SYNPROXY* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1650:9
else:
  let NFT_OBJECT_SYNPROXY* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1650:9
when 11 is static:
  const
    compiler_NFT_OBJECT_MAX* = 11 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1651:9
else:
  let compiler_NFT_OBJECT_MAX* = 11 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nf_tables.h:1651:9
when 0 is static:
  const
    NFNETLINK_V0* = 0        ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:40:9
else:
  let NFNETLINK_V0* = 0      ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:40:9
when 0 is static:
  const
    NFNL_SUBSYS_NONE* = 0    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:51:9
else:
  let NFNL_SUBSYS_NONE* = 0  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:51:9
when 1 is static:
  const
    NFNL_SUBSYS_CTNETLINK* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:52:9
else:
  let NFNL_SUBSYS_CTNETLINK* = 1 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:52:9
when 2 is static:
  const
    NFNL_SUBSYS_CTNETLINK_EXP* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:53:9
else:
  let NFNL_SUBSYS_CTNETLINK_EXP* = 2 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:53:9
when 3 is static:
  const
    NFNL_SUBSYS_QUEUE* = 3   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:54:9
else:
  let NFNL_SUBSYS_QUEUE* = 3 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:54:9
when 4 is static:
  const
    NFNL_SUBSYS_ULOG* = 4    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:55:9
else:
  let NFNL_SUBSYS_ULOG* = 4  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:55:9
when 5 is static:
  const
    NFNL_SUBSYS_OSF* = 5     ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:56:9
else:
  let NFNL_SUBSYS_OSF* = 5   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:56:9
when 6 is static:
  const
    NFNL_SUBSYS_IPSET* = 6   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:57:9
else:
  let NFNL_SUBSYS_IPSET* = 6 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:57:9
when 7 is static:
  const
    NFNL_SUBSYS_ACCT* = 7    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:58:9
else:
  let NFNL_SUBSYS_ACCT* = 7  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:58:9
when 8 is static:
  const
    NFNL_SUBSYS_CTNETLINK_TIMEOUT* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:59:9
else:
  let NFNL_SUBSYS_CTNETLINK_TIMEOUT* = 8 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:59:9
when 9 is static:
  const
    NFNL_SUBSYS_CTHELPER* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:60:9
else:
  let NFNL_SUBSYS_CTHELPER* = 9 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:60:9
when 10 is static:
  const
    NFNL_SUBSYS_NFTABLES* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:61:9
else:
  let NFNL_SUBSYS_NFTABLES* = 10 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:61:9
when 11 is static:
  const
    NFNL_SUBSYS_NFT_COMPAT* = 11 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:62:9
else:
  let NFNL_SUBSYS_NFT_COMPAT* = 11 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:62:9
when 12 is static:
  const
    NFNL_SUBSYS_HOOK* = 12   ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:63:9
else:
  let NFNL_SUBSYS_HOOK* = 12 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:63:9
when 13 is static:
  const
    NFNL_SUBSYS_COUNT* = 13  ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:64:9
else:
  let NFNL_SUBSYS_COUNT* = 13 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:64:9
when NLMSG_MIN_TYPE is typedesc:
  type
    NFNL_MSG_BATCH_BEGIN* = NLMSG_MIN_TYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:67:9
else:
  when NLMSG_MIN_TYPE is static:
    const
      NFNL_MSG_BATCH_BEGIN* = NLMSG_MIN_TYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:67:9
  else:
    let NFNL_MSG_BATCH_BEGIN* = NLMSG_MIN_TYPE ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/linux/netfilter/nfnetlink.h:67:9
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