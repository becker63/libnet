
const
  NFTNL_PARSE_EBADINPUT* = cuint(0)
const
  NFTNL_PARSE_EMISSINGNODE* = cuint(1)
const
  NFTNL_PARSE_EBADTYPE* = cuint(2)
const
  NFTNL_PARSE_EOPNOTSUPP* = cuint(3)
const
  NFTNL_SET_ELEM_FLAGS* = cuint(0)
const
  NFTNL_SET_ELEM_KEY* = cuint(1)
const
  NFTNL_SET_ELEM_VERDICT* = cuint(2)
const
  NFTNL_SET_ELEM_CHAIN* = cuint(3)
const
  NFTNL_SET_ELEM_DATA* = cuint(4)
const
  NFTNL_SET_ELEM_TIMEOUT* = cuint(5)
const
  NFTNL_SET_ELEM_EXPIRATION* = cuint(6)
const
  NFTNL_SET_ELEM_USERDATA* = cuint(7)
const
  NFTNL_SET_ELEM_EXPR* = cuint(8)
const
  NFTNL_SET_ELEM_OBJREF* = cuint(9)
const
  NFTNL_SET_ELEM_KEY_END* = cuint(10)
const
  NFTNL_SET_ELEM_EXPRESSIONS* = cuint(11)
const
  compiler_NFTNL_SET_ELEM_MAX* = cuint(12)
const
  NFTNL_EXPR_NAME* = cuint(0)
const
  NFTNL_EXPR_BASE* = cuint(1)
const
  NFTNL_EXPR_PAYLOAD_DREG* = cuint(1)
const
  NFTNL_EXPR_PAYLOAD_BASE* = cuint(2)
const
  NFTNL_EXPR_PAYLOAD_OFFSET* = cuint(3)
const
  NFTNL_EXPR_PAYLOAD_LEN* = cuint(4)
const
  NFTNL_EXPR_PAYLOAD_SREG* = cuint(5)
const
  NFTNL_EXPR_PAYLOAD_CSUM_TYPE* = cuint(6)
const
  NFTNL_EXPR_PAYLOAD_CSUM_OFFSET* = cuint(7)
const
  NFTNL_EXPR_PAYLOAD_FLAGS* = cuint(8)
const
  compiler_NFTNL_EXPR_PAYLOAD_MAX* = cuint(9)
const
  NFTNL_EXPR_NG_DREG* = cuint(1)
const
  NFTNL_EXPR_NG_MODULUS* = cuint(2)
const
  NFTNL_EXPR_NG_TYPE* = cuint(3)
const
  NFTNL_EXPR_NG_OFFSET* = cuint(4)
const
  NFTNL_EXPR_NG_SET_NAME* = cuint(5)
const
  NFTNL_EXPR_NG_SET_ID* = cuint(6)
const
  compiler_NFTNL_EXPR_NG_MAX* = cuint(7)
const
  NFTNL_EXPR_META_KEY* = cuint(1)
const
  NFTNL_EXPR_META_DREG* = cuint(2)
const
  NFTNL_EXPR_META_SREG* = cuint(3)
const
  compiler_NFTNL_EXPR_META_MAX* = cuint(4)
const
  NFTNL_EXPR_RT_KEY* = cuint(1)
const
  NFTNL_EXPR_RT_DREG* = cuint(2)
const
  compiler_NFTNL_EXPR_RT_MAX* = cuint(3)
const
  NFTNL_EXPR_SOCKET_KEY* = cuint(1)
const
  NFTNL_EXPR_SOCKET_DREG* = cuint(2)
const
  NFTNL_EXPR_SOCKET_LEVEL* = cuint(3)
const
  compiler_NFTNL_EXPR_SOCKET_MAX* = cuint(4)
const
  NFTNL_EXPR_TUNNEL_KEY* = cuint(1)
const
  NFTNL_EXPR_TUNNEL_DREG* = cuint(2)
const
  compiler_NFTNL_EXPR_TUNNEL_MAX* = cuint(3)
const
  NFTNL_EXPR_CMP_SREG* = cuint(1)
const
  NFTNL_EXPR_CMP_OP* = cuint(2)
const
  NFTNL_EXPR_CMP_DATA* = cuint(3)
const
  compiler_NFTNL_EXPR_CMP_MAX* = cuint(4)
const
  NFTNL_EXPR_RANGE_SREG* = cuint(1)
const
  NFTNL_EXPR_RANGE_OP* = cuint(2)
const
  NFTNL_EXPR_RANGE_FROM_DATA* = cuint(3)
const
  NFTNL_EXPR_RANGE_TO_DATA* = cuint(4)
const
  compiler_NFTNL_EXPR_RANGE_MAX* = cuint(5)
const
  NFTNL_EXPR_IMM_DREG* = cuint(1)
const
  NFTNL_EXPR_IMM_DATA* = cuint(2)
const
  NFTNL_EXPR_IMM_VERDICT* = cuint(3)
const
  NFTNL_EXPR_IMM_CHAIN* = cuint(4)
const
  NFTNL_EXPR_IMM_CHAIN_ID* = cuint(5)
const
  compiler_NFTNL_EXPR_IMM_MAX* = cuint(6)
const
  NFTNL_EXPR_CTR_PACKETS* = cuint(1)
const
  NFTNL_EXPR_CTR_BYTES* = cuint(2)
const
  compiler_NFTNL_EXPR_CTR_MAX* = cuint(3)
const
  NFTNL_EXPR_CONNLIMIT_COUNT* = cuint(1)
const
  NFTNL_EXPR_CONNLIMIT_FLAGS* = cuint(2)
const
  compiler_NFTNL_EXPR_CONNLIMIT_MAX* = cuint(3)
const
  NFTNL_EXPR_BITWISE_SREG* = cuint(1)
const
  NFTNL_EXPR_BITWISE_DREG* = cuint(2)
const
  NFTNL_EXPR_BITWISE_LEN* = cuint(3)
const
  NFTNL_EXPR_BITWISE_MASK* = cuint(4)
const
  NFTNL_EXPR_BITWISE_XOR* = cuint(5)
const
  NFTNL_EXPR_BITWISE_OP* = cuint(6)
const
  NFTNL_EXPR_BITWISE_DATA* = cuint(7)
const
  NFTNL_EXPR_BITWISE_SREG2* = cuint(8)
const
  compiler_NFTNL_EXPR_BITWISE_MAX* = cuint(9)
const
  NFTNL_EXPR_TG_NAME* = cuint(1)
const
  NFTNL_EXPR_TG_REV* = cuint(2)
const
  NFTNL_EXPR_TG_INFO* = cuint(3)
const
  compiler_NFTNL_EXPR_TG_MAX* = cuint(4)
const
  NFTNL_EXPR_MT_NAME* = cuint(1)
const
  NFTNL_EXPR_MT_REV* = cuint(2)
const
  NFTNL_EXPR_MT_INFO* = cuint(3)
const
  compiler_NFTNL_EXPR_MT_MAX* = cuint(4)
const
  NFTNL_EXPR_NAT_TYPE* = cuint(1)
const
  NFTNL_EXPR_NAT_FAMILY* = cuint(2)
const
  NFTNL_EXPR_NAT_REG_ADDR_MIN* = cuint(3)
const
  NFTNL_EXPR_NAT_REG_ADDR_MAX* = cuint(4)
const
  NFTNL_EXPR_NAT_REG_PROTO_MIN* = cuint(5)
const
  NFTNL_EXPR_NAT_REG_PROTO_MAX* = cuint(6)
const
  NFTNL_EXPR_NAT_FLAGS* = cuint(7)
const
  compiler_NFTNL_EXPR_NAT_MAX* = cuint(8)
const
  NFTNL_EXPR_TPROXY_FAMILY* = cuint(1)
const
  NFTNL_EXPR_TPROXY_REG_ADDR* = cuint(2)
const
  NFTNL_EXPR_TPROXY_REG_PORT* = cuint(3)
const
  compiler_NFTNL_EXPR_TPROXY_MAX* = cuint(4)
const
  NFTNL_EXPR_LOOKUP_SREG* = cuint(1)
const
  NFTNL_EXPR_LOOKUP_DREG* = cuint(2)
const
  NFTNL_EXPR_LOOKUP_SET* = cuint(3)
const
  NFTNL_EXPR_LOOKUP_SET_ID* = cuint(4)
const
  NFTNL_EXPR_LOOKUP_FLAGS* = cuint(5)
const
  compiler_NFTNL_EXPR_LOOKUP_MAX* = cuint(6)
const
  NFTNL_EXPR_DYNSET_SREG_KEY* = cuint(1)
const
  NFTNL_EXPR_DYNSET_SREG_DATA* = cuint(2)
const
  NFTNL_EXPR_DYNSET_OP* = cuint(3)
const
  NFTNL_EXPR_DYNSET_TIMEOUT* = cuint(4)
const
  NFTNL_EXPR_DYNSET_SET_NAME* = cuint(5)
const
  NFTNL_EXPR_DYNSET_SET_ID* = cuint(6)
const
  NFTNL_EXPR_DYNSET_EXPR* = cuint(7)
const
  NFTNL_EXPR_DYNSET_EXPRESSIONS* = cuint(8)
const
  NFTNL_EXPR_DYNSET_FLAGS* = cuint(9)
const
  compiler_NFTNL_EXPR_DYNSET_MAX* = cuint(10)
const
  NFTNL_EXPR_LOG_PREFIX* = cuint(1)
const
  NFTNL_EXPR_LOG_GROUP* = cuint(2)
const
  NFTNL_EXPR_LOG_SNAPLEN* = cuint(3)
const
  NFTNL_EXPR_LOG_QTHRESHOLD* = cuint(4)
const
  NFTNL_EXPR_LOG_LEVEL* = cuint(5)
const
  NFTNL_EXPR_LOG_FLAGS* = cuint(6)
const
  compiler_NFTNL_EXPR_LOG_MAX* = cuint(7)
const
  NFTNL_EXPR_EXTHDR_DREG* = cuint(1)
const
  NFTNL_EXPR_EXTHDR_TYPE* = cuint(2)
const
  NFTNL_EXPR_EXTHDR_OFFSET* = cuint(3)
const
  NFTNL_EXPR_EXTHDR_LEN* = cuint(4)
const
  NFTNL_EXPR_EXTHDR_FLAGS* = cuint(5)
const
  NFTNL_EXPR_EXTHDR_OP* = cuint(6)
const
  NFTNL_EXPR_EXTHDR_SREG* = cuint(7)
const
  compiler_NFTNL_EXPR_EXTHDR_MAX* = cuint(8)
const
  NFTNL_EXPR_CT_DREG* = cuint(1)
const
  NFTNL_EXPR_CT_KEY* = cuint(2)
const
  NFTNL_EXPR_CT_DIR* = cuint(3)
const
  NFTNL_EXPR_CT_SREG* = cuint(4)
const
  compiler_NFTNL_EXPR_CT_MAX* = cuint(5)
const
  NFTNL_EXPR_BYTEORDER_DREG* = cuint(1)
const
  NFTNL_EXPR_BYTEORDER_SREG* = cuint(2)
const
  NFTNL_EXPR_BYTEORDER_OP* = cuint(3)
const
  NFTNL_EXPR_BYTEORDER_LEN* = cuint(4)
const
  NFTNL_EXPR_BYTEORDER_SIZE* = cuint(5)
const
  compiler_NFTNL_EXPR_BYTEORDER_MAX* = cuint(6)
const
  NFTNL_EXPR_LIMIT_RATE* = cuint(1)
const
  NFTNL_EXPR_LIMIT_UNIT* = cuint(2)
const
  NFTNL_EXPR_LIMIT_BURST* = cuint(3)
const
  NFTNL_EXPR_LIMIT_TYPE* = cuint(4)
const
  NFTNL_EXPR_LIMIT_FLAGS* = cuint(5)
const
  compiler_NFTNL_EXPR_LIMIT_MAX* = cuint(6)
const
  NFTNL_EXPR_REJECT_TYPE* = cuint(1)
const
  NFTNL_EXPR_REJECT_CODE* = cuint(2)
const
  compiler_NFTNL_EXPR_REJECT_MAX* = cuint(3)
const
  NFTNL_EXPR_QUEUE_NUM* = cuint(1)
const
  NFTNL_EXPR_QUEUE_TOTAL* = cuint(2)
const
  NFTNL_EXPR_QUEUE_FLAGS* = cuint(3)
const
  NFTNL_EXPR_QUEUE_SREG_QNUM* = cuint(4)
const
  compiler_NFTNL_EXPR_QUEUE_MAX* = cuint(5)
const
  NFTNL_EXPR_QUOTA_BYTES* = cuint(1)
const
  NFTNL_EXPR_QUOTA_FLAGS* = cuint(2)
const
  NFTNL_EXPR_QUOTA_CONSUMED* = cuint(3)
const
  compiler_NFTNL_EXPR_QUOTA_MAX* = cuint(4)
const
  NFTNL_EXPR_MASQ_FLAGS* = cuint(1)
const
  NFTNL_EXPR_MASQ_REG_PROTO_MIN* = cuint(2)
const
  NFTNL_EXPR_MASQ_REG_PROTO_MAX* = cuint(3)
const
  compiler_NFTNL_EXPR_MASQ_MAX* = cuint(4)
const
  NFTNL_EXPR_REDIR_REG_PROTO_MIN* = cuint(1)
const
  NFTNL_EXPR_REDIR_REG_PROTO_MAX* = cuint(2)
const
  NFTNL_EXPR_REDIR_FLAGS* = cuint(3)
const
  compiler_NFTNL_EXPR_REDIR_MAX* = cuint(4)
const
  NFTNL_EXPR_DUP_SREG_ADDR* = cuint(1)
const
  NFTNL_EXPR_DUP_SREG_DEV* = cuint(2)
const
  compiler_NFTNL_EXPR_DUP_MAX* = cuint(3)
const
  NFTNL_EXPR_FLOW_TABLE_NAME* = cuint(1)
const
  compiler_NFTNL_EXPR_FLOW_MAX* = cuint(2)
const
  NFTNL_EXPR_FWD_SREG_DEV* = cuint(1)
const
  NFTNL_EXPR_FWD_SREG_ADDR* = cuint(2)
const
  NFTNL_EXPR_FWD_NFPROTO* = cuint(3)
const
  compiler_NFTNL_EXPR_FWD_MAX* = cuint(4)
const
  NFTNL_EXPR_HASH_SREG* = cuint(1)
const
  NFTNL_EXPR_HASH_DREG* = cuint(2)
const
  NFTNL_EXPR_HASH_LEN* = cuint(3)
const
  NFTNL_EXPR_HASH_MODULUS* = cuint(4)
const
  NFTNL_EXPR_HASH_SEED* = cuint(5)
const
  NFTNL_EXPR_HASH_OFFSET* = cuint(6)
const
  NFTNL_EXPR_HASH_TYPE* = cuint(7)
const
  NFTNL_EXPR_HASH_SET_NAME* = cuint(8)
const
  NFTNL_EXPR_HASH_SET_ID* = cuint(9)
const
  compiler_NFTNL_EXPR_HASH_MAX* = cuint(10)
const
  NFTNL_EXPR_FIB_DREG* = cuint(1)
const
  NFTNL_EXPR_FIB_RESULT* = cuint(2)
const
  NFTNL_EXPR_FIB_FLAGS* = cuint(3)
const
  compiler_NFTNL_EXPR_FIB_MAX* = cuint(4)
const
  NFTNL_EXPR_OBJREF_IMM_TYPE* = cuint(1)
const
  NFTNL_EXPR_OBJREF_IMM_NAME* = cuint(2)
const
  NFTNL_EXPR_OBJREF_SET_SREG* = cuint(3)
const
  NFTNL_EXPR_OBJREF_SET_NAME* = cuint(4)
const
  NFTNL_EXPR_OBJREF_SET_ID* = cuint(5)
const
  compiler_NFTNL_EXPR_OBJREF_MAX* = cuint(6)
const
  NFTNL_EXPR_OSF_DREG* = cuint(1)
const
  NFTNL_EXPR_OSF_TTL* = cuint(2)
const
  NFTNL_EXPR_OSF_FLAGS* = cuint(3)
const
  compiler_NFTNL_EXPR_OSF_MAX* = cuint(4)
const
  NFTNL_EXPR_XFRM_DREG* = cuint(1)
const
  NFTNL_EXPR_XFRM_SREG* = cuint(2)
const
  NFTNL_EXPR_XFRM_KEY* = cuint(3)
const
  NFTNL_EXPR_XFRM_DIR* = cuint(4)
const
  NFTNL_EXPR_XFRM_SPNUM* = cuint(5)
const
  compiler_NFTNL_EXPR_XFRM_MAX* = cuint(6)
const
  NFTNL_EXPR_SYNPROXY_MSS* = cuint(1)
const
  NFTNL_EXPR_SYNPROXY_WSCALE* = cuint(2)
const
  NFTNL_EXPR_SYNPROXY_FLAGS* = cuint(3)
const
  compiler_NFTNL_EXPR_SYNPROXY_MAX* = cuint(4)
const
  NFTNL_EXPR_LAST_MSECS* = cuint(1)
const
  NFTNL_EXPR_LAST_SET* = cuint(2)
const
  compiler_NFTNL_EXPR_LAST_MAX* = cuint(3)
const
  NFTNL_EXPR_INNER_TYPE* = cuint(1)
const
  NFTNL_EXPR_INNER_FLAGS* = cuint(2)
const
  NFTNL_EXPR_INNER_HDRSIZE* = cuint(3)
const
  NFTNL_EXPR_INNER_EXPR* = cuint(4)
const
  compiler_NFTNL_EXPR_INNER_MAX* = cuint(5)
const
  NFTNL_OBJ_TABLE* = cuint(0)
const
  NFTNL_OBJ_NAME* = cuint(1)
const
  NFTNL_OBJ_TYPE* = cuint(2)
const
  NFTNL_OBJ_FAMILY* = cuint(3)
const
  NFTNL_OBJ_USE* = cuint(4)
const
  NFTNL_OBJ_HANDLE* = cuint(5)
const
  NFTNL_OBJ_USERDATA* = cuint(6)
const
  NFTNL_OBJ_BASE* = cuint(16)
const
  compiler_NFTNL_OBJ_MAX* = cuint(17)
const
  NFTNL_OBJ_CTR_PKTS* = cuint(16)
const
  NFTNL_OBJ_CTR_BYTES* = cuint(17)
const
  compiler_NFTNL_OBJ_CTR_MAX* = cuint(18)
const
  NFTNL_OBJ_QUOTA_BYTES* = cuint(16)
const
  NFTNL_OBJ_QUOTA_CONSUMED* = cuint(17)
const
  NFTNL_OBJ_QUOTA_FLAGS* = cuint(18)
const
  compiler_NFTNL_OBJ_QUOTA_MAX* = cuint(19)
const
  NFTNL_OBJ_CT_HELPER_NAME* = cuint(16)
const
  NFTNL_OBJ_CT_HELPER_L3PROTO* = cuint(17)
const
  NFTNL_OBJ_CT_HELPER_L4PROTO* = cuint(18)
const
  compiler_NFTNL_OBJ_CT_HELPER_MAX* = cuint(19)
const
  NFTNL_OBJ_CT_TIMEOUT_L3PROTO* = cuint(16)
const
  NFTNL_OBJ_CT_TIMEOUT_L4PROTO* = cuint(17)
const
  NFTNL_OBJ_CT_TIMEOUT_ARRAY* = cuint(18)
const
  compiler_NFTNL_OBJ_CT_TIMEOUT_MAX* = cuint(19)
const
  NFTNL_OBJ_CT_EXPECT_L3PROTO* = cuint(16)
const
  NFTNL_OBJ_CT_EXPECT_L4PROTO* = cuint(17)
const
  NFTNL_OBJ_CT_EXPECT_DPORT* = cuint(18)
const
  NFTNL_OBJ_CT_EXPECT_TIMEOUT* = cuint(19)
const
  NFTNL_OBJ_CT_EXPECT_SIZE* = cuint(20)
const
  compiler_NFTNL_OBJ_CT_EXPECT_MAX* = cuint(21)
const
  NFTNL_OBJ_LIMIT_RATE* = cuint(16)
const
  NFTNL_OBJ_LIMIT_UNIT* = cuint(17)
const
  NFTNL_OBJ_LIMIT_BURST* = cuint(18)
const
  NFTNL_OBJ_LIMIT_TYPE* = cuint(19)
const
  NFTNL_OBJ_LIMIT_FLAGS* = cuint(20)
const
  compiler_NFTNL_OBJ_LIMIT_MAX* = cuint(21)
const
  NFTNL_OBJ_SYNPROXY_MSS* = cuint(16)
const
  NFTNL_OBJ_SYNPROXY_WSCALE* = cuint(17)
const
  NFTNL_OBJ_SYNPROXY_FLAGS* = cuint(18)
const
  compiler_NFTNL_OBJ_SYNPROXY_MAX* = cuint(19)
const
  NFTNL_OBJ_TUNNEL_ID* = cuint(16)
const
  NFTNL_OBJ_TUNNEL_IPV4_SRC* = cuint(17)
const
  NFTNL_OBJ_TUNNEL_IPV4_DST* = cuint(18)
const
  NFTNL_OBJ_TUNNEL_IPV6_SRC* = cuint(19)
const
  NFTNL_OBJ_TUNNEL_IPV6_DST* = cuint(20)
const
  NFTNL_OBJ_TUNNEL_IPV6_FLOWLABEL* = cuint(21)
const
  NFTNL_OBJ_TUNNEL_SPORT* = cuint(22)
const
  NFTNL_OBJ_TUNNEL_DPORT* = cuint(23)
const
  NFTNL_OBJ_TUNNEL_FLAGS* = cuint(24)
const
  NFTNL_OBJ_TUNNEL_TOS* = cuint(25)
const
  NFTNL_OBJ_TUNNEL_TTL* = cuint(26)
const
  NFTNL_OBJ_TUNNEL_VXLAN_GBP* = cuint(27)
const
  NFTNL_OBJ_TUNNEL_ERSPAN_VERSION* = cuint(28)
const
  NFTNL_OBJ_TUNNEL_ERSPAN_V1_INDEX* = cuint(29)
const
  NFTNL_OBJ_TUNNEL_ERSPAN_V2_HWID* = cuint(30)
const
  NFTNL_OBJ_TUNNEL_ERSPAN_V2_DIR* = cuint(31)
const
  compiler_NFTNL_OBJ_TUNNEL_MAX* = cuint(32)
const
  NFTNL_OBJ_SECMARK_CTX* = cuint(16)
const
  compiler_NFTNL_OBJ_SECMARK_MAX* = cuint(17)
type
  enum_nftnl_output_type* {.size: sizeof(cuint).} = enum
    NFTNL_OUTPUT_DEFAULT = 0, NFTNL_OUTPUT_XML = 1, NFTNL_OUTPUT_JSON = 2
type
  enum_nftnl_output_flags* {.size: sizeof(cuint).} = enum
    NFTNL_OF_EVENT_NEW = 1, NFTNL_OF_EVENT_DEL = 2, NFTNL_OF_EVENT_ANY = 3
type
  enum_nftnl_cmd_type* {.size: sizeof(cuint).} = enum
    NFTNL_CMD_UNSPEC = 0, NFTNL_CMD_ADD = 1, NFTNL_CMD_INSERT = 2,
    NFTNL_CMD_DELETE = 3, NFTNL_CMD_REPLACE = 4, NFTNL_CMD_FLUSH = 5,
    NFTNL_CMD_MAX = 6
type
  enum_nftnl_parse_type* {.size: sizeof(cuint).} = enum
    NFTNL_PARSE_NONE = 0, NFTNL_PARSE_XML = 1, NFTNL_PARSE_JSON = 2,
    NFTNL_PARSE_MAX = 3
type
  enum_nftnl_table_attr* {.size: sizeof(cuint).} = enum
    NFTNL_TABLE_NAME = 0, NFTNL_TABLE_FAMILY = 1, NFTNL_TABLE_FLAGS = 2,
    NFTNL_TABLE_USE = 3, NFTNL_TABLE_HANDLE = 4, NFTNL_TABLE_USERDATA = 5,
    NFTNL_TABLE_OWNER = 6, compiler_NFTNL_TABLE_MAX = 7
type
  enum_nftnl_chain_attr* {.size: sizeof(cuint).} = enum
    NFTNL_CHAIN_NAME = 0, NFTNL_CHAIN_FAMILY = 1, NFTNL_CHAIN_TABLE = 2,
    NFTNL_CHAIN_HOOKNUM = 3, NFTNL_CHAIN_PRIO = 4, NFTNL_CHAIN_POLICY = 5,
    NFTNL_CHAIN_USE = 6, NFTNL_CHAIN_BYTES = 7, NFTNL_CHAIN_PACKETS = 8,
    NFTNL_CHAIN_HANDLE = 9, NFTNL_CHAIN_TYPE = 10, NFTNL_CHAIN_DEV = 11,
    NFTNL_CHAIN_DEVICES = 12, NFTNL_CHAIN_FLAGS = 13, NFTNL_CHAIN_ID = 14,
    NFTNL_CHAIN_USERDATA = 15, compiler_NFTNL_CHAIN_MAX = 16
type
  enum_nftnl_rule_attr* {.size: sizeof(cuint).} = enum
    NFTNL_RULE_FAMILY = 0, NFTNL_RULE_TABLE = 1, NFTNL_RULE_CHAIN = 2,
    NFTNL_RULE_HANDLE = 3, NFTNL_RULE_COMPAT_PROTO = 4,
    NFTNL_RULE_COMPAT_FLAGS = 5, NFTNL_RULE_POSITION = 6,
    NFTNL_RULE_USERDATA = 7, NFTNL_RULE_ID = 8, NFTNL_RULE_POSITION_ID = 9,
    compiler_NFTNL_RULE_MAX = 10
type
  enum_nftnl_set_attr* {.size: sizeof(cuint).} = enum
    NFTNL_SET_TABLE = 0, NFTNL_SET_NAME = 1, NFTNL_SET_FLAGS = 2,
    NFTNL_SET_KEY_TYPE = 3, NFTNL_SET_KEY_LEN = 4, NFTNL_SET_DATA_TYPE = 5,
    NFTNL_SET_DATA_LEN = 6, NFTNL_SET_FAMILY = 7, NFTNL_SET_ID = 8,
    NFTNL_SET_POLICY = 9, NFTNL_SET_DESC_SIZE = 10, NFTNL_SET_TIMEOUT = 11,
    NFTNL_SET_GC_INTERVAL = 12, NFTNL_SET_USERDATA = 13,
    NFTNL_SET_OBJ_TYPE = 14, NFTNL_SET_HANDLE = 15, NFTNL_SET_DESC_CONCAT = 16,
    NFTNL_SET_EXPR = 17, NFTNL_SET_EXPRESSIONS = 18, NFTNL_SET_COUNT = 19,
    compiler_NFTNL_SET_MAX = 20
type
  enum_nftnl_cttimeout_array_tcp* {.size: sizeof(cuint).} = enum
    NFTNL_CTTIMEOUT_TCP_SYN_SENT = 0, NFTNL_CTTIMEOUT_TCP_SYN_RECV = 1,
    NFTNL_CTTIMEOUT_TCP_ESTABLISHED = 2, NFTNL_CTTIMEOUT_TCP_FIN_WAIT = 3,
    NFTNL_CTTIMEOUT_TCP_CLOSE_WAIT = 4, NFTNL_CTTIMEOUT_TCP_LAST_ACK = 5,
    NFTNL_CTTIMEOUT_TCP_TIME_WAIT = 6, NFTNL_CTTIMEOUT_TCP_CLOSE = 7,
    NFTNL_CTTIMEOUT_TCP_SYN_SENT2 = 8, NFTNL_CTTIMEOUT_TCP_RETRANS = 9,
    NFTNL_CTTIMEOUT_TCP_UNACK = 10, NFTNL_CTTIMEOUT_TCP_MAX = 11
type
  enum_nftnl_cttimeout_array_udp* {.size: sizeof(cuint).} = enum
    NFTNL_CTTIMEOUT_UDP_UNREPLIED = 0, NFTNL_CTTIMEOUT_UDP_REPLIED = 1,
    NFTNL_CTTIMEOUT_UDP_MAX = 2
type
  struct_nftnl_obj* = object
type
  compiler_WCHAR_MIN* = object
type
  struct_nftnl_chain_list* = object
type
  compiler_U32_TYPE* = object
type
  struct_nftnl_chain* = object
type
  struct_nftnl_set* = object
type
  struct_nftnl_set_elems_iter* = object
type
  compiler_REDIRECT* = object
type
  compiler_SWORD_TYPE* = object
type
  compiler_SLONGWORD_TYPE* = object
type
  struct_nftnl_parse_err* = object
type
  struct_nftnl_set_elem* = object
type
  struct_IO_marker* = object
type
  struct_nftnl_obj_list* = object
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
  struct_nftnl_table_list_iter* = object
type
  struct_nftnl_rule* = object
type
  compiler_WCHAR_MAX_private* = object
type
  struct_nftnl_set_list* = object
type
  struct_nftnl_obj_list_iter* = object
type
  struct_nftnl_expr* = object
type
  struct_nftnl_table_list* = object
type
  compiler_builtin_va_list* = object
type
  struct_nftnl_expr_iter* = object
type
  struct_nftnl_rule_iter* = object
type
  struct_nlmsghdr* = object
type
  struct_nftnl_table* = object
type
  compiler_SQUAD_TYPE* = object
type
  struct_nftnl_chain_list_iter* = object
type
  compiler_REDIRECT_NTH* = object
type
  struct_nftnl_rule_list* = object
type
  compiler_UQUAD_TYPE* = object
type
  struct_nftnl_set_list_iter* = object
type
  struct_nftnl_rule_list_iter* = object
type
  struct_IO_codecvt* = object
type
  struct_nlattr* = object
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
  pid_t* = compiler_pid_t    ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/sys/types.h:97:17
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
    compiler_FD_SETSIZE* = 1024 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:104:9
else:
  let compiler_FD_SETSIZE* = 1024 ## Generated based on /nix/store/sh3sjmgq543lfpjsq3dc0ksb6ckvhpdi-glibc-2.40-66-dev/include/bits/typesizes.h:104:9
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
proc nftnl_nlmsg_build_hdr*(buf: ptr uint8; type_arg: uint16; family: uint16;
                            flags: uint16; seq: uint32): ptr struct_nlmsghdr {.
    cdecl, importc: "nftnl_nlmsg_build_hdr".}
proc nftnl_expr_set*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                     data: pointer; data_len: uint32): cint {.cdecl,
    importc: "nftnl_expr_set".}
proc nftnl_expr_get*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                     data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_expr_get".}
when NFTNL_CTTIMEOUT_TCP_MAX is typedesc:
  type
    NFTNL_CTTIMEOUT_ARRAY_MAX* = NFTNL_CTTIMEOUT_TCP_MAX ## Generated based on /nix/store/sxyzg0vgfqrslaxdlbygi9qd8ccc7rf1-libnftnl-1.3.0/include/libnftnl/object.h:69:9
else:
  when NFTNL_CTTIMEOUT_TCP_MAX is static:
    const
      NFTNL_CTTIMEOUT_ARRAY_MAX* = NFTNL_CTTIMEOUT_TCP_MAX ## Generated based on /nix/store/sxyzg0vgfqrslaxdlbygi9qd8ccc7rf1-libnftnl-1.3.0/include/libnftnl/object.h:69:9
  else:
    let NFTNL_CTTIMEOUT_ARRAY_MAX* = NFTNL_CTTIMEOUT_TCP_MAX ## Generated based on /nix/store/sxyzg0vgfqrslaxdlbygi9qd8ccc7rf1-libnftnl-1.3.0/include/libnftnl/object.h:69:9
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
proc select*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
             compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
             compiler_timeout: ptr struct_timeval): cint {.cdecl,
    importc: "select".}
proc pselect*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
              compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
              compiler_timeout: ptr struct_timespec;
              compiler_sigmask: ptr compiler_sigset_t): cint {.cdecl,
    importc: "pselect".}
proc nftnl_parse_err_alloc*(): ptr struct_nftnl_parse_err {.cdecl,
    importc: "nftnl_parse_err_alloc".}
proc nftnl_parse_err_free*(a0: ptr struct_nftnl_parse_err): void {.cdecl,
    importc: "nftnl_parse_err_free".}
proc nftnl_parse_perror*(str: ptr uint8; err: ptr struct_nftnl_parse_err): cint {.
    cdecl, importc: "nftnl_parse_perror".}
proc nftnl_batch_is_supported*(): cint {.cdecl,
    importc: "nftnl_batch_is_supported".}
proc nftnl_batch_begin*(buf: ptr uint8; seq: uint32): ptr struct_nlmsghdr {.
    cdecl, importc: "nftnl_batch_begin".}
proc nftnl_batch_end*(buf: ptr uint8; seq: uint32): ptr struct_nlmsghdr {.cdecl,
    importc: "nftnl_batch_end".}
proc nftnl_table_alloc*(): ptr struct_nftnl_table {.cdecl,
    importc: "nftnl_table_alloc".}
proc nftnl_table_free*(a0: ptr struct_nftnl_table): void {.cdecl,
    importc: "nftnl_table_free".}
proc nftnl_table_is_set*(t: ptr struct_nftnl_table; attr: uint16): bool {.cdecl,
    importc: "nftnl_table_is_set".}
proc nftnl_table_unset*(t: ptr struct_nftnl_table; attr: uint16): void {.cdecl,
    importc: "nftnl_table_unset".}
proc nftnl_table_set*(t: ptr struct_nftnl_table; attr: uint16; data: pointer): void {.
    cdecl, importc: "nftnl_table_set".}
proc nftnl_table_set_data*(t: ptr struct_nftnl_table; attr: uint16;
                           data: pointer; data_len: uint32): cint {.cdecl,
    importc: "nftnl_table_set_data".}
proc nftnl_table_get*(t: ptr struct_nftnl_table; attr: uint16): pointer {.cdecl,
    importc: "nftnl_table_get".}
proc nftnl_table_get_data*(t: ptr struct_nftnl_table; attr: uint16;
                           data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_table_get_data".}
proc nftnl_table_set_u8*(t: ptr struct_nftnl_table; attr: uint16; data: uint8): void {.
    cdecl, importc: "nftnl_table_set_u8".}
proc nftnl_table_set_u32*(t: ptr struct_nftnl_table; attr: uint16; data: uint32): void {.
    cdecl, importc: "nftnl_table_set_u32".}
proc nftnl_table_set_u64*(t: ptr struct_nftnl_table; attr: uint16; data: uint64): void {.
    cdecl, importc: "nftnl_table_set_u64".}
proc nftnl_table_set_str*(t: ptr struct_nftnl_table; attr: uint16;
                          str: ptr uint8): cint {.cdecl,
    importc: "nftnl_table_set_str".}
proc nftnl_table_get_u8*(t: ptr struct_nftnl_table; attr: uint16): uint8 {.
    cdecl, importc: "nftnl_table_get_u8".}
proc nftnl_table_get_u32*(t: ptr struct_nftnl_table; attr: uint16): uint32 {.
    cdecl, importc: "nftnl_table_get_u32".}
proc nftnl_table_get_u64*(t: ptr struct_nftnl_table; attr: uint16): uint64 {.
    cdecl, importc: "nftnl_table_get_u64".}
proc nftnl_table_get_str*(t: ptr struct_nftnl_table; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_table_get_str".}
proc nftnl_table_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
                                      t: ptr struct_nftnl_table): void {.cdecl,
    importc: "nftnl_table_nlmsg_build_payload".}
proc nftnl_table_parse*(t: ptr struct_nftnl_table;
                        type_arg: enum_nftnl_parse_type; data: ptr uint8;
                        err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_table_parse".}
proc nftnl_table_parse_file*(t: ptr struct_nftnl_table;
                             type_arg: enum_nftnl_parse_type; fp: ptr FILE;
                             err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_table_parse_file".}
proc nftnl_table_snprintf*(buf: ptr uint8; size: csize_t;
                           t: ptr struct_nftnl_table; type_arg: uint32;
                           flags: uint32): cint {.cdecl,
    importc: "nftnl_table_snprintf".}
proc nftnl_table_fprintf*(fp: ptr FILE; t: ptr struct_nftnl_table;
                          type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_table_fprintf".}
proc nftnl_table_nlmsg_parse*(nlh: ptr struct_nlmsghdr;
                              t: ptr struct_nftnl_table): cint {.cdecl,
    importc: "nftnl_table_nlmsg_parse".}
proc nftnl_table_list_alloc*(): ptr struct_nftnl_table_list {.cdecl,
    importc: "nftnl_table_list_alloc".}
proc nftnl_table_list_free*(list: ptr struct_nftnl_table_list): void {.cdecl,
    importc: "nftnl_table_list_free".}
proc nftnl_table_list_is_empty*(list: ptr struct_nftnl_table_list): cint {.
    cdecl, importc: "nftnl_table_list_is_empty".}
proc nftnl_table_list_foreach*(table_list: ptr struct_nftnl_table_list; cb: proc (
    a0: ptr struct_nftnl_table; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_table_list_foreach".}
proc nftnl_table_list_add*(r: ptr struct_nftnl_table;
                           list: ptr struct_nftnl_table_list): void {.cdecl,
    importc: "nftnl_table_list_add".}
proc nftnl_table_list_add_tail*(r: ptr struct_nftnl_table;
                                list: ptr struct_nftnl_table_list): void {.
    cdecl, importc: "nftnl_table_list_add_tail".}
proc nftnl_table_list_del*(r: ptr struct_nftnl_table): void {.cdecl,
    importc: "nftnl_table_list_del".}
proc nftnl_table_list_iter_create*(l: ptr struct_nftnl_table_list): ptr struct_nftnl_table_list_iter {.
    cdecl, importc: "nftnl_table_list_iter_create".}
proc nftnl_table_list_iter_next*(iter: ptr struct_nftnl_table_list_iter): ptr struct_nftnl_table {.
    cdecl, importc: "nftnl_table_list_iter_next".}
proc nftnl_table_list_iter_destroy*(iter: ptr struct_nftnl_table_list_iter): void {.
    cdecl, importc: "nftnl_table_list_iter_destroy".}
proc nftnl_chain_alloc*(): ptr struct_nftnl_chain {.cdecl,
    importc: "nftnl_chain_alloc".}
proc nftnl_chain_free*(a0: ptr struct_nftnl_chain): void {.cdecl,
    importc: "nftnl_chain_free".}
proc nftnl_chain_is_set*(c: ptr struct_nftnl_chain; attr: uint16): bool {.cdecl,
    importc: "nftnl_chain_is_set".}
proc nftnl_chain_unset*(c: ptr struct_nftnl_chain; attr: uint16): void {.cdecl,
    importc: "nftnl_chain_unset".}
proc nftnl_chain_set*(t: ptr struct_nftnl_chain; attr: uint16; data: pointer): void {.
    cdecl, importc: "nftnl_chain_set".}
proc nftnl_chain_set_data*(t: ptr struct_nftnl_chain; attr: uint16;
                           data: pointer; data_len: uint32): cint {.cdecl,
    importc: "nftnl_chain_set_data".}
proc nftnl_chain_set_u8*(t: ptr struct_nftnl_chain; attr: uint16; data: uint8): void {.
    cdecl, importc: "nftnl_chain_set_u8".}
proc nftnl_chain_set_u32*(t: ptr struct_nftnl_chain; attr: uint16; data: uint32): void {.
    cdecl, importc: "nftnl_chain_set_u32".}
proc nftnl_chain_set_s32*(t: ptr struct_nftnl_chain; attr: uint16; data: int32): void {.
    cdecl, importc: "nftnl_chain_set_s32".}
proc nftnl_chain_set_u64*(t: ptr struct_nftnl_chain; attr: uint16; data: uint64): void {.
    cdecl, importc: "nftnl_chain_set_u64".}
proc nftnl_chain_set_str*(t: ptr struct_nftnl_chain; attr: uint16;
                          str: ptr uint8): cint {.cdecl,
    importc: "nftnl_chain_set_str".}
proc nftnl_chain_set_array*(t: ptr struct_nftnl_chain; attr: uint16;
                            data: ptr ptr uint8): cint {.cdecl,
    importc: "nftnl_chain_set_array".}
proc nftnl_chain_get*(c: ptr struct_nftnl_chain; attr: uint16): pointer {.cdecl,
    importc: "nftnl_chain_get".}
proc nftnl_chain_get_data*(c: ptr struct_nftnl_chain; attr: uint16;
                           data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_chain_get_data".}
proc nftnl_chain_get_str*(c: ptr struct_nftnl_chain; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_chain_get_str".}
proc nftnl_chain_get_u8*(c: ptr struct_nftnl_chain; attr: uint16): uint8 {.
    cdecl, importc: "nftnl_chain_get_u8".}
proc nftnl_chain_get_u32*(c: ptr struct_nftnl_chain; attr: uint16): uint32 {.
    cdecl, importc: "nftnl_chain_get_u32".}
proc nftnl_chain_get_s32*(c: ptr struct_nftnl_chain; attr: uint16): int32 {.
    cdecl, importc: "nftnl_chain_get_s32".}
proc nftnl_chain_get_u64*(c: ptr struct_nftnl_chain; attr: uint16): uint64 {.
    cdecl, importc: "nftnl_chain_get_u64".}
proc nftnl_chain_get_array*(c: ptr struct_nftnl_chain; attr: uint16): ptr ptr uint8 {.
    cdecl, importc: "nftnl_chain_get_array".}
proc nftnl_chain_rule_add*(rule: ptr struct_nftnl_rule;
                           c: ptr struct_nftnl_chain): void {.cdecl,
    importc: "nftnl_chain_rule_add".}
proc nftnl_chain_rule_del*(rule: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_chain_rule_del".}
proc nftnl_chain_rule_add_tail*(rule: ptr struct_nftnl_rule;
                                c: ptr struct_nftnl_chain): void {.cdecl,
    importc: "nftnl_chain_rule_add_tail".}
proc nftnl_chain_rule_insert_at*(rule: ptr struct_nftnl_rule;
                                 pos: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_chain_rule_insert_at".}
proc nftnl_chain_rule_append_at*(rule: ptr struct_nftnl_rule;
                                 pos: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_chain_rule_append_at".}
proc nftnl_chain_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
                                      t: ptr struct_nftnl_chain): void {.cdecl,
    importc: "nftnl_chain_nlmsg_build_payload".}
proc nftnl_chain_snprintf*(buf: ptr uint8; size: csize_t;
                           t: ptr struct_nftnl_chain; type_arg: uint32;
                           flags: uint32): cint {.cdecl,
    importc: "nftnl_chain_snprintf".}
proc nftnl_chain_fprintf*(fp: ptr FILE; c: ptr struct_nftnl_chain;
                          type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_chain_fprintf".}
proc nftnl_chain_nlmsg_parse*(nlh: ptr struct_nlmsghdr;
                              t: ptr struct_nftnl_chain): cint {.cdecl,
    importc: "nftnl_chain_nlmsg_parse".}
proc nftnl_rule_foreach*(c: ptr struct_nftnl_chain; cb: proc (
    a0: ptr struct_nftnl_rule; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_rule_foreach".}
proc nftnl_rule_lookup_byindex*(c: ptr struct_nftnl_chain; index: uint32): ptr struct_nftnl_rule {.
    cdecl, importc: "nftnl_rule_lookup_byindex".}
proc nftnl_rule_iter_create*(c: ptr struct_nftnl_chain): ptr struct_nftnl_rule_iter {.
    cdecl, importc: "nftnl_rule_iter_create".}
proc nftnl_rule_iter_next*(iter: ptr struct_nftnl_rule_iter): ptr struct_nftnl_rule {.
    cdecl, importc: "nftnl_rule_iter_next".}
proc nftnl_rule_iter_destroy*(iter: ptr struct_nftnl_rule_iter): void {.cdecl,
    importc: "nftnl_rule_iter_destroy".}
proc nftnl_chain_list_alloc*(): ptr struct_nftnl_chain_list {.cdecl,
    importc: "nftnl_chain_list_alloc".}
proc nftnl_chain_list_free*(list: ptr struct_nftnl_chain_list): void {.cdecl,
    importc: "nftnl_chain_list_free".}
proc nftnl_chain_list_is_empty*(list: ptr struct_nftnl_chain_list): cint {.
    cdecl, importc: "nftnl_chain_list_is_empty".}
proc nftnl_chain_list_foreach*(chain_list: ptr struct_nftnl_chain_list; cb: proc (
    a0: ptr struct_nftnl_chain; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_chain_list_foreach".}
proc nftnl_chain_list_lookup_byname*(chain_list: ptr struct_nftnl_chain_list;
                                     chain: ptr uint8): ptr struct_nftnl_chain {.
    cdecl, importc: "nftnl_chain_list_lookup_byname".}
proc nftnl_chain_list_add*(r: ptr struct_nftnl_chain;
                           list: ptr struct_nftnl_chain_list): void {.cdecl,
    importc: "nftnl_chain_list_add".}
proc nftnl_chain_list_add_tail*(r: ptr struct_nftnl_chain;
                                list: ptr struct_nftnl_chain_list): void {.
    cdecl, importc: "nftnl_chain_list_add_tail".}
proc nftnl_chain_list_del*(c: ptr struct_nftnl_chain): void {.cdecl,
    importc: "nftnl_chain_list_del".}
proc nftnl_chain_list_iter_create*(l: ptr struct_nftnl_chain_list): ptr struct_nftnl_chain_list_iter {.
    cdecl, importc: "nftnl_chain_list_iter_create".}
proc nftnl_chain_list_iter_next*(iter: ptr struct_nftnl_chain_list_iter): ptr struct_nftnl_chain {.
    cdecl, importc: "nftnl_chain_list_iter_next".}
proc nftnl_chain_list_iter_destroy*(iter: ptr struct_nftnl_chain_list_iter): void {.
    cdecl, importc: "nftnl_chain_list_iter_destroy".}
proc nftnl_rule_alloc*(): ptr struct_nftnl_rule {.cdecl,
    importc: "nftnl_rule_alloc".}
proc nftnl_rule_free*(a0: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_rule_free".}
proc nftnl_rule_unset*(r: ptr struct_nftnl_rule; attr: uint16): void {.cdecl,
    importc: "nftnl_rule_unset".}
proc nftnl_rule_is_set*(r: ptr struct_nftnl_rule; attr: uint16): bool {.cdecl,
    importc: "nftnl_rule_is_set".}
proc nftnl_rule_set*(r: ptr struct_nftnl_rule; attr: uint16; data: pointer): cint {.
    cdecl, importc: "nftnl_rule_set".}
proc nftnl_rule_set_data*(r: ptr struct_nftnl_rule; attr: uint16; data: pointer;
                          data_len: uint32): cint {.cdecl,
    importc: "nftnl_rule_set_data".}
proc nftnl_rule_set_u32*(r: ptr struct_nftnl_rule; attr: uint16; val: uint32): void {.
    cdecl, importc: "nftnl_rule_set_u32".}
proc nftnl_rule_set_u64*(r: ptr struct_nftnl_rule; attr: uint16; val: uint64): void {.
    cdecl, importc: "nftnl_rule_set_u64".}
proc nftnl_rule_set_str*(r: ptr struct_nftnl_rule; attr: uint16; str: ptr uint8): cint {.
    cdecl, importc: "nftnl_rule_set_str".}
proc nftnl_rule_get*(r: ptr struct_nftnl_rule; attr: uint16): pointer {.cdecl,
    importc: "nftnl_rule_get".}
proc nftnl_rule_get_data*(r: ptr struct_nftnl_rule; attr: uint16;
                          data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_rule_get_data".}
proc nftnl_rule_get_str*(r: ptr struct_nftnl_rule; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_rule_get_str".}
proc nftnl_rule_get_u8*(r: ptr struct_nftnl_rule; attr: uint16): uint8 {.cdecl,
    importc: "nftnl_rule_get_u8".}
proc nftnl_rule_get_u32*(r: ptr struct_nftnl_rule; attr: uint16): uint32 {.
    cdecl, importc: "nftnl_rule_get_u32".}
proc nftnl_rule_get_u64*(r: ptr struct_nftnl_rule; attr: uint16): uint64 {.
    cdecl, importc: "nftnl_rule_get_u64".}
proc nftnl_rule_add_expr*(r: ptr struct_nftnl_rule; expr: ptr struct_nftnl_expr): void {.
    cdecl, importc: "nftnl_rule_add_expr".}
proc nftnl_rule_del_expr*(expr: ptr struct_nftnl_expr): void {.cdecl,
    importc: "nftnl_rule_del_expr".}
proc nftnl_rule_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
                                     t: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_rule_nlmsg_build_payload".}
proc nftnl_rule_parse*(r: ptr struct_nftnl_rule;
                       type_arg: enum_nftnl_parse_type; data: ptr uint8;
                       err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_rule_parse".}
proc nftnl_rule_parse_file*(r: ptr struct_nftnl_rule;
                            type_arg: enum_nftnl_parse_type; fp: ptr FILE;
                            err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_rule_parse_file".}
proc nftnl_rule_snprintf*(buf: ptr uint8; size: csize_t;
                          t: ptr struct_nftnl_rule; type_arg: uint32;
                          flags: uint32): cint {.cdecl,
    importc: "nftnl_rule_snprintf".}
proc nftnl_rule_fprintf*(fp: ptr FILE; r: ptr struct_nftnl_rule;
                         type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_rule_fprintf".}
proc nftnl_rule_nlmsg_parse*(nlh: ptr struct_nlmsghdr; t: ptr struct_nftnl_rule): cint {.
    cdecl, importc: "nftnl_rule_nlmsg_parse".}
proc nftnl_expr_foreach*(r: ptr struct_nftnl_rule; cb: proc (
    a0: ptr struct_nftnl_expr; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_expr_foreach".}
proc nftnl_expr_iter_create*(r: ptr struct_nftnl_rule): ptr struct_nftnl_expr_iter {.
    cdecl, importc: "nftnl_expr_iter_create".}
proc nftnl_expr_iter_next*(iter: ptr struct_nftnl_expr_iter): ptr struct_nftnl_expr {.
    cdecl, importc: "nftnl_expr_iter_next".}
proc nftnl_expr_iter_destroy*(iter: ptr struct_nftnl_expr_iter): void {.cdecl,
    importc: "nftnl_expr_iter_destroy".}
proc nftnl_rule_list_alloc*(): ptr struct_nftnl_rule_list {.cdecl,
    importc: "nftnl_rule_list_alloc".}
proc nftnl_rule_list_free*(list: ptr struct_nftnl_rule_list): void {.cdecl,
    importc: "nftnl_rule_list_free".}
proc nftnl_rule_list_is_empty*(list: ptr struct_nftnl_rule_list): cint {.cdecl,
    importc: "nftnl_rule_list_is_empty".}
proc nftnl_rule_list_add*(r: ptr struct_nftnl_rule;
                          list: ptr struct_nftnl_rule_list): void {.cdecl,
    importc: "nftnl_rule_list_add".}
proc nftnl_rule_list_add_tail*(r: ptr struct_nftnl_rule;
                               list: ptr struct_nftnl_rule_list): void {.cdecl,
    importc: "nftnl_rule_list_add_tail".}
proc nftnl_rule_list_insert_at*(r: ptr struct_nftnl_rule;
                                pos: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_rule_list_insert_at".}
proc nftnl_rule_list_del*(r: ptr struct_nftnl_rule): void {.cdecl,
    importc: "nftnl_rule_list_del".}
proc nftnl_rule_list_foreach*(rule_list: ptr struct_nftnl_rule_list; cb: proc (
    a0: ptr struct_nftnl_rule; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_rule_list_foreach".}
proc nftnl_rule_list_iter_create*(l: ptr struct_nftnl_rule_list): ptr struct_nftnl_rule_list_iter {.
    cdecl, importc: "nftnl_rule_list_iter_create".}
proc nftnl_rule_list_iter_cur*(iter: ptr struct_nftnl_rule_list_iter): ptr struct_nftnl_rule {.
    cdecl, importc: "nftnl_rule_list_iter_cur".}
proc nftnl_rule_list_iter_next*(iter: ptr struct_nftnl_rule_list_iter): ptr struct_nftnl_rule {.
    cdecl, importc: "nftnl_rule_list_iter_next".}
proc nftnl_rule_list_iter_destroy*(iter: ptr struct_nftnl_rule_list_iter): void {.
    cdecl, importc: "nftnl_rule_list_iter_destroy".}
proc nftnl_set_alloc*(): ptr struct_nftnl_set {.cdecl,
    importc: "nftnl_set_alloc".}
proc nftnl_set_free*(s: ptr struct_nftnl_set): void {.cdecl,
    importc: "nftnl_set_free".}
proc nftnl_set_clone*(set: ptr struct_nftnl_set): ptr struct_nftnl_set {.cdecl,
    importc: "nftnl_set_clone".}
proc nftnl_set_is_set*(s: ptr struct_nftnl_set; attr: uint16): bool {.cdecl,
    importc: "nftnl_set_is_set".}
proc nftnl_set_unset*(s: ptr struct_nftnl_set; attr: uint16): void {.cdecl,
    importc: "nftnl_set_unset".}
proc nftnl_set_set*(s: ptr struct_nftnl_set; attr: uint16; data: pointer): cint {.
    cdecl, importc: "nftnl_set_set".}
proc nftnl_set_set_data*(s: ptr struct_nftnl_set; attr: uint16; data: pointer;
                         data_len: uint32): cint {.cdecl,
    importc: "nftnl_set_set_data".}
proc nftnl_set_set_u32*(s: ptr struct_nftnl_set; attr: uint16; val: uint32): void {.
    cdecl, importc: "nftnl_set_set_u32".}
proc nftnl_set_set_u64*(s: ptr struct_nftnl_set; attr: uint16; val: uint64): void {.
    cdecl, importc: "nftnl_set_set_u64".}
proc nftnl_set_set_str*(s: ptr struct_nftnl_set; attr: uint16; str: ptr uint8): cint {.
    cdecl, importc: "nftnl_set_set_str".}
proc nftnl_set_get*(s: ptr struct_nftnl_set; attr: uint16): pointer {.cdecl,
    importc: "nftnl_set_get".}
proc nftnl_set_get_data*(s: ptr struct_nftnl_set; attr: uint16;
                         data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_set_get_data".}
proc nftnl_set_get_str*(s: ptr struct_nftnl_set; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_set_get_str".}
proc nftnl_set_get_u32*(s: ptr struct_nftnl_set; attr: uint16): uint32 {.cdecl,
    importc: "nftnl_set_get_u32".}
proc nftnl_set_get_u64*(s: ptr struct_nftnl_set; attr: uint16): uint64 {.cdecl,
    importc: "nftnl_set_get_u64".}
proc nftnl_set_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
                                    s: ptr struct_nftnl_set): void {.cdecl,
    importc: "nftnl_set_nlmsg_build_payload".}
proc nftnl_set_nlmsg_parse*(nlh: ptr struct_nlmsghdr; s: ptr struct_nftnl_set): cint {.
    cdecl, importc: "nftnl_set_nlmsg_parse".}
proc nftnl_set_elems_nlmsg_parse*(nlh: ptr struct_nlmsghdr;
                                  s: ptr struct_nftnl_set): cint {.cdecl,
    importc: "nftnl_set_elems_nlmsg_parse".}
proc nftnl_set_snprintf*(buf: ptr uint8; size: csize_t; s: ptr struct_nftnl_set;
                         type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_set_snprintf".}
proc nftnl_set_fprintf*(fp: ptr FILE; s: ptr struct_nftnl_set; type_arg: uint32;
                        flags: uint32): cint {.cdecl,
    importc: "nftnl_set_fprintf".}
proc nftnl_set_list_alloc*(): ptr struct_nftnl_set_list {.cdecl,
    importc: "nftnl_set_list_alloc".}
proc nftnl_set_list_free*(list: ptr struct_nftnl_set_list): void {.cdecl,
    importc: "nftnl_set_list_free".}
proc nftnl_set_list_is_empty*(list: ptr struct_nftnl_set_list): cint {.cdecl,
    importc: "nftnl_set_list_is_empty".}
proc nftnl_set_list_add*(s: ptr struct_nftnl_set;
                         list: ptr struct_nftnl_set_list): void {.cdecl,
    importc: "nftnl_set_list_add".}
proc nftnl_set_list_add_tail*(s: ptr struct_nftnl_set;
                              list: ptr struct_nftnl_set_list): void {.cdecl,
    importc: "nftnl_set_list_add_tail".}
proc nftnl_set_list_del*(s: ptr struct_nftnl_set): void {.cdecl,
    importc: "nftnl_set_list_del".}
proc nftnl_set_list_foreach*(set_list: ptr struct_nftnl_set_list; cb: proc (
    a0: ptr struct_nftnl_set; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_set_list_foreach".}
proc nftnl_set_list_lookup_byname*(set_list: ptr struct_nftnl_set_list;
                                   set: ptr uint8): ptr struct_nftnl_set {.
    cdecl, importc: "nftnl_set_list_lookup_byname".}
proc nftnl_set_add_expr*(s: ptr struct_nftnl_set; expr: ptr struct_nftnl_expr): void {.
    cdecl, importc: "nftnl_set_add_expr".}
proc nftnl_set_expr_foreach*(s: ptr struct_nftnl_set; cb: proc (
    a0: ptr struct_nftnl_expr; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_set_expr_foreach".}
proc nftnl_set_list_iter_create*(l: ptr struct_nftnl_set_list): ptr struct_nftnl_set_list_iter {.
    cdecl, importc: "nftnl_set_list_iter_create".}
proc nftnl_set_list_iter_cur*(iter: ptr struct_nftnl_set_list_iter): ptr struct_nftnl_set {.
    cdecl, importc: "nftnl_set_list_iter_cur".}
proc nftnl_set_list_iter_next*(iter: ptr struct_nftnl_set_list_iter): ptr struct_nftnl_set {.
    cdecl, importc: "nftnl_set_list_iter_next".}
proc nftnl_set_list_iter_destroy*(iter: ptr struct_nftnl_set_list_iter): void {.
    cdecl, importc: "nftnl_set_list_iter_destroy".}
proc nftnl_set_parse*(s: ptr struct_nftnl_set; type_arg: enum_nftnl_parse_type;
                      data: ptr uint8; err: ptr struct_nftnl_parse_err): cint {.
    cdecl, importc: "nftnl_set_parse".}
proc nftnl_set_parse_file*(s: ptr struct_nftnl_set;
                           type_arg: enum_nftnl_parse_type; fp: ptr FILE;
                           err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_set_parse_file".}
proc nftnl_set_elem_alloc*(): ptr struct_nftnl_set_elem {.cdecl,
    importc: "nftnl_set_elem_alloc".}
proc nftnl_set_elem_free*(s: ptr struct_nftnl_set_elem): void {.cdecl,
    importc: "nftnl_set_elem_free".}
proc nftnl_set_elem_clone*(elem: ptr struct_nftnl_set_elem): ptr struct_nftnl_set_elem {.
    cdecl, importc: "nftnl_set_elem_clone".}
proc nftnl_set_elem_add*(s: ptr struct_nftnl_set;
                         elem: ptr struct_nftnl_set_elem): void {.cdecl,
    importc: "nftnl_set_elem_add".}
proc nftnl_set_elem_unset*(s: ptr struct_nftnl_set_elem; attr: uint16): void {.
    cdecl, importc: "nftnl_set_elem_unset".}
proc nftnl_set_elem_set*(s: ptr struct_nftnl_set_elem; attr: uint16;
                         data: pointer; data_len: uint32): cint {.cdecl,
    importc: "nftnl_set_elem_set".}
proc nftnl_set_elem_set_u32*(s: ptr struct_nftnl_set_elem; attr: uint16;
                             val: uint32): void {.cdecl,
    importc: "nftnl_set_elem_set_u32".}
proc nftnl_set_elem_set_u64*(s: ptr struct_nftnl_set_elem; attr: uint16;
                             val: uint64): void {.cdecl,
    importc: "nftnl_set_elem_set_u64".}
proc nftnl_set_elem_set_str*(s: ptr struct_nftnl_set_elem; attr: uint16;
                             str: ptr uint8): cint {.cdecl,
    importc: "nftnl_set_elem_set_str".}
proc nftnl_set_elem_get*(s: ptr struct_nftnl_set_elem; attr: uint16;
                         data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_set_elem_get".}
proc nftnl_set_elem_get_str*(s: ptr struct_nftnl_set_elem; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_set_elem_get_str".}
proc nftnl_set_elem_get_u32*(s: ptr struct_nftnl_set_elem; attr: uint16): uint32 {.
    cdecl, importc: "nftnl_set_elem_get_u32".}
proc nftnl_set_elem_get_u64*(s: ptr struct_nftnl_set_elem; attr: uint16): uint64 {.
    cdecl, importc: "nftnl_set_elem_get_u64".}
proc nftnl_set_elem_is_set*(s: ptr struct_nftnl_set_elem; attr: uint16): bool {.
    cdecl, importc: "nftnl_set_elem_is_set".}
proc nftnl_set_elems_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
    s: ptr struct_nftnl_set): void {.cdecl, importc: "nftnl_set_elems_nlmsg_build_payload".}
proc nftnl_set_elem_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
    e: ptr struct_nftnl_set_elem): void {.cdecl,
    importc: "nftnl_set_elem_nlmsg_build_payload".}
proc nftnl_set_elem_nlmsg_build*(nlh: ptr struct_nlmsghdr;
                                 elem: ptr struct_nftnl_set_elem; i: cint): ptr struct_nlattr {.
    cdecl, importc: "nftnl_set_elem_nlmsg_build".}
proc nftnl_set_elem_parse*(e: ptr struct_nftnl_set_elem;
                           type_arg: enum_nftnl_parse_type; data: ptr uint8;
                           err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_set_elem_parse".}
proc nftnl_set_elem_parse_file*(e: ptr struct_nftnl_set_elem;
                                type_arg: enum_nftnl_parse_type; fp: ptr FILE;
                                err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_set_elem_parse_file".}
proc nftnl_set_elem_snprintf*(buf: ptr uint8; size: csize_t;
                              s: ptr struct_nftnl_set_elem; type_arg: uint32;
                              flags: uint32): cint {.cdecl,
    importc: "nftnl_set_elem_snprintf".}
proc nftnl_set_elem_fprintf*(fp: ptr FILE; se: ptr struct_nftnl_set_elem;
                             type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_set_elem_fprintf".}
proc nftnl_set_elem_add_expr*(e: ptr struct_nftnl_set_elem;
                              expr: ptr struct_nftnl_expr): void {.cdecl,
    importc: "nftnl_set_elem_add_expr".}
proc nftnl_set_elem_expr_foreach*(e: ptr struct_nftnl_set_elem; cb: proc (
    a0: ptr struct_nftnl_expr; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_set_elem_expr_foreach".}
proc nftnl_set_elem_foreach*(s: ptr struct_nftnl_set; cb: proc (
    a0: ptr struct_nftnl_set_elem; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_set_elem_foreach".}
proc nftnl_set_elems_iter_create*(s: ptr struct_nftnl_set): ptr struct_nftnl_set_elems_iter {.
    cdecl, importc: "nftnl_set_elems_iter_create".}
proc nftnl_set_elems_iter_cur*(iter: ptr struct_nftnl_set_elems_iter): ptr struct_nftnl_set_elem {.
    cdecl, importc: "nftnl_set_elems_iter_cur".}
proc nftnl_set_elems_iter_next*(iter: ptr struct_nftnl_set_elems_iter): ptr struct_nftnl_set_elem {.
    cdecl, importc: "nftnl_set_elems_iter_next".}
proc nftnl_set_elems_iter_destroy*(iter: ptr struct_nftnl_set_elems_iter): void {.
    cdecl, importc: "nftnl_set_elems_iter_destroy".}
proc nftnl_set_elems_nlmsg_build_payload_iter*(nlh: ptr struct_nlmsghdr;
    iter: ptr struct_nftnl_set_elems_iter): cint {.cdecl,
    importc: "nftnl_set_elems_nlmsg_build_payload_iter".}
proc nftnl_expr_alloc*(name: ptr uint8): ptr struct_nftnl_expr {.cdecl,
    importc: "nftnl_expr_alloc".}
proc nftnl_expr_free*(expr: ptr struct_nftnl_expr): void {.cdecl,
    importc: "nftnl_expr_free".}
proc nftnl_expr_is_set*(expr: ptr struct_nftnl_expr; type_arg: uint16): bool {.
    cdecl, importc: "nftnl_expr_is_set".}
proc nftnl_expr_set_u8*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                        data: uint8): void {.cdecl, importc: "nftnl_expr_set_u8".}
proc nftnl_expr_set_u16*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                         data: uint16): void {.cdecl,
    importc: "nftnl_expr_set_u16".}
proc nftnl_expr_set_u32*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                         data: uint32): void {.cdecl,
    importc: "nftnl_expr_set_u32".}
proc nftnl_expr_set_u64*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                         data: uint64): void {.cdecl,
    importc: "nftnl_expr_set_u64".}
proc nftnl_expr_set_str*(expr: ptr struct_nftnl_expr; type_arg: uint16;
                         str: ptr uint8): cint {.cdecl,
    importc: "nftnl_expr_set_str".}
proc nftnl_expr_get_u8*(expr: ptr struct_nftnl_expr; type_arg: uint16): uint8 {.
    cdecl, importc: "nftnl_expr_get_u8".}
proc nftnl_expr_get_u16*(expr: ptr struct_nftnl_expr; type_arg: uint16): uint16 {.
    cdecl, importc: "nftnl_expr_get_u16".}
proc nftnl_expr_get_u32*(expr: ptr struct_nftnl_expr; type_arg: uint16): uint32 {.
    cdecl, importc: "nftnl_expr_get_u32".}
proc nftnl_expr_get_u64*(expr: ptr struct_nftnl_expr; type_arg: uint16): uint64 {.
    cdecl, importc: "nftnl_expr_get_u64".}
proc nftnl_expr_get_str*(expr: ptr struct_nftnl_expr; type_arg: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_expr_get_str".}
proc nftnl_expr_build_payload*(nlh: ptr struct_nlmsghdr;
                               expr: ptr struct_nftnl_expr): void {.cdecl,
    importc: "nftnl_expr_build_payload".}
proc nftnl_expr_add_expr*(expr: ptr struct_nftnl_expr; type_arg: uint32;
                          e: ptr struct_nftnl_expr): void {.cdecl,
    importc: "nftnl_expr_add_expr".}
proc nftnl_expr_expr_foreach*(e: ptr struct_nftnl_expr; cb: proc (
    a0: ptr struct_nftnl_expr; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_expr_expr_foreach".}
proc nftnl_expr_snprintf*(buf: ptr uint8; buflen: csize_t;
                          expr: ptr struct_nftnl_expr; type_arg: uint32;
                          flags: uint32): cint {.cdecl,
    importc: "nftnl_expr_snprintf".}
proc nftnl_expr_fprintf*(fp: ptr FILE; expr: ptr struct_nftnl_expr;
                         type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_expr_fprintf".}
proc nftnl_obj_alloc*(): ptr struct_nftnl_obj {.cdecl,
    importc: "nftnl_obj_alloc".}
proc nftnl_obj_free*(ne: ptr struct_nftnl_obj): void {.cdecl,
    importc: "nftnl_obj_free".}
proc nftnl_obj_is_set*(ne: ptr struct_nftnl_obj; attr: uint16): bool {.cdecl,
    importc: "nftnl_obj_is_set".}
proc nftnl_obj_unset*(ne: ptr struct_nftnl_obj; attr: uint16): void {.cdecl,
    importc: "nftnl_obj_unset".}
proc nftnl_obj_set_data*(ne: ptr struct_nftnl_obj; attr: uint16; data: pointer;
                         data_len: uint32): cint {.cdecl,
    importc: "nftnl_obj_set_data".}
proc nftnl_obj_set*(ne: ptr struct_nftnl_obj; attr: uint16; data: pointer): void {.
    cdecl, importc: "nftnl_obj_set".}
proc nftnl_obj_set_u8*(ne: ptr struct_nftnl_obj; attr: uint16; val: uint8): cint {.
    cdecl, importc: "nftnl_obj_set_u8".}
proc nftnl_obj_set_u16*(ne: ptr struct_nftnl_obj; attr: uint16; val: uint16): cint {.
    cdecl, importc: "nftnl_obj_set_u16".}
proc nftnl_obj_set_u32*(ne: ptr struct_nftnl_obj; attr: uint16; val: uint32): cint {.
    cdecl, importc: "nftnl_obj_set_u32".}
proc nftnl_obj_set_u64*(obj: ptr struct_nftnl_obj; attr: uint16; val: uint64): cint {.
    cdecl, importc: "nftnl_obj_set_u64".}
proc nftnl_obj_set_str*(ne: ptr struct_nftnl_obj; attr: uint16; str: ptr uint8): cint {.
    cdecl, importc: "nftnl_obj_set_str".}
proc nftnl_obj_get_data*(ne: ptr struct_nftnl_obj; attr: uint16;
                         data_len: ptr uint32): pointer {.cdecl,
    importc: "nftnl_obj_get_data".}
proc nftnl_obj_get*(ne: ptr struct_nftnl_obj; attr: uint16): pointer {.cdecl,
    importc: "nftnl_obj_get".}
proc nftnl_obj_get_u8*(ne: ptr struct_nftnl_obj; attr: uint16): uint8 {.cdecl,
    importc: "nftnl_obj_get_u8".}
proc nftnl_obj_get_u16*(obj: ptr struct_nftnl_obj; attr: uint16): uint16 {.
    cdecl, importc: "nftnl_obj_get_u16".}
proc nftnl_obj_get_u32*(ne: ptr struct_nftnl_obj; attr: uint16): uint32 {.cdecl,
    importc: "nftnl_obj_get_u32".}
proc nftnl_obj_get_u64*(obj: ptr struct_nftnl_obj; attr: uint16): uint64 {.
    cdecl, importc: "nftnl_obj_get_u64".}
proc nftnl_obj_get_str*(ne: ptr struct_nftnl_obj; attr: uint16): ptr uint8 {.
    cdecl, importc: "nftnl_obj_get_str".}
proc nftnl_obj_nlmsg_build_payload*(nlh: ptr struct_nlmsghdr;
                                    ne: ptr struct_nftnl_obj): void {.cdecl,
    importc: "nftnl_obj_nlmsg_build_payload".}
proc nftnl_obj_nlmsg_parse*(nlh: ptr struct_nlmsghdr; ne: ptr struct_nftnl_obj): cint {.
    cdecl, importc: "nftnl_obj_nlmsg_parse".}
proc nftnl_obj_parse*(ne: ptr struct_nftnl_obj; type_arg: enum_nftnl_parse_type;
                      data: ptr uint8; err: ptr struct_nftnl_parse_err): cint {.
    cdecl, importc: "nftnl_obj_parse".}
proc nftnl_obj_parse_file*(ne: ptr struct_nftnl_obj;
                           type_arg: enum_nftnl_parse_type; fp: ptr FILE;
                           err: ptr struct_nftnl_parse_err): cint {.cdecl,
    importc: "nftnl_obj_parse_file".}
proc nftnl_obj_snprintf*(buf: ptr uint8; size: csize_t;
                         ne: ptr struct_nftnl_obj; type_arg: uint32;
                         flags: uint32): cint {.cdecl,
    importc: "nftnl_obj_snprintf".}
proc nftnl_obj_fprintf*(fp: ptr FILE; ne: ptr struct_nftnl_obj;
                        type_arg: uint32; flags: uint32): cint {.cdecl,
    importc: "nftnl_obj_fprintf".}
proc nftnl_obj_list_alloc*(): ptr struct_nftnl_obj_list {.cdecl,
    importc: "nftnl_obj_list_alloc".}
proc nftnl_obj_list_free*(list: ptr struct_nftnl_obj_list): void {.cdecl,
    importc: "nftnl_obj_list_free".}
proc nftnl_obj_list_is_empty*(list: ptr struct_nftnl_obj_list): cint {.cdecl,
    importc: "nftnl_obj_list_is_empty".}
proc nftnl_obj_list_add*(r: ptr struct_nftnl_obj;
                         list: ptr struct_nftnl_obj_list): void {.cdecl,
    importc: "nftnl_obj_list_add".}
proc nftnl_obj_list_add_tail*(r: ptr struct_nftnl_obj;
                              list: ptr struct_nftnl_obj_list): void {.cdecl,
    importc: "nftnl_obj_list_add_tail".}
proc nftnl_obj_list_del*(t: ptr struct_nftnl_obj): void {.cdecl,
    importc: "nftnl_obj_list_del".}
proc nftnl_obj_list_foreach*(table_list: ptr struct_nftnl_obj_list; cb: proc (
    a0: ptr struct_nftnl_obj; a1: pointer): cint {.cdecl.}; data: pointer): cint {.
    cdecl, importc: "nftnl_obj_list_foreach".}
proc nftnl_obj_list_iter_create*(l: ptr struct_nftnl_obj_list): ptr struct_nftnl_obj_list_iter {.
    cdecl, importc: "nftnl_obj_list_iter_create".}
proc nftnl_obj_list_iter_next*(iter: ptr struct_nftnl_obj_list_iter): ptr struct_nftnl_obj {.
    cdecl, importc: "nftnl_obj_list_iter_next".}
proc nftnl_obj_list_iter_destroy*(iter: ptr struct_nftnl_obj_list_iter): void {.
    cdecl, importc: "nftnl_obj_list_iter_destroy".}