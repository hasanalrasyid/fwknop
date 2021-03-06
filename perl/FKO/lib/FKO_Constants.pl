##############################################################################
#
# File:    FKO_Constants.pl
#
# Author:  Damien S. Stuart <dstuart@dstuart.org>
#
# Purpose: Constants for the FKO module.
#
##############################################################################
#

# Message types tag list.
#
our @MSG_TYPES = qw(
    FKO_COMMAND_MSG
    FKO_ACCESS_MSG
    FKO_NAT_ACCESS_MSG
    FKO_CLIENT_TIMEOUT_ACCESS_MSG
    FKO_CLIENT_TIMEOUT_NAT_ACCESS_MSG
    FKO_LOCAL_NAT_ACCESS_MSG
    FKO_CLIENT_TIMEOUT_LOCAL_NAT_ACCESS_MSG
);

# Digest types tag list.
#
our @DIGEST_TYPES = qw(
    FKO_DIGEST_INVALID_DATA
    FKO_DIGEST_UNKNOWN
    FKO_DIGEST_MD5
    FKO_DIGEST_SHA1
    FKO_DIGEST_SHA256
    FKO_DIGEST_SHA384
    FKO_DIGEST_SHA512
);

# HMAC digest types tag list.
#
our @HMAC_DIGEST_TYPES = qw(
    FKO_HMAC_INVALID_DATA
    FKO_HMAC_UNKNOWN
    FKO_HMAC_MD5
    FKO_HMAC_SHA1
    FKO_HMAC_SHA256
    FKO_HMAC_SHA384
    FKO_HMAC_SHA512
);

# Encryption types tag list.
#
our @ENCRYPTION_TYPES = qw(
    FKO_ENCRYPTION_INVALID_DATA
    FKO_ENCRYPTION_UNKNOWN
    FKO_ENCRYPTION_RIJNDAEL
    FKO_ENCRYPTION_GPG
);

# Encryption modes tag list.
#
our @ENCRYPTION_MODES = qw(
    FKO_ENC_MODE_UNKNOWN
    FKO_ENC_MODE_ECB
    FKO_ENC_MODE_CBC
    FKO_ENC_MODE_CFB
    FKO_ENC_MODE_PCBC
    FKO_ENC_MODE_OFB
    FKO_ENC_MODE_CTR
    FKO_ENC_MODE_ASYMMETRIC
    FKO_ENC_MODE_CBC_LEGACY_IV
);

# Error codes tag list.
#
our @ERROR_CODES = qw(
    FKO_SUCCESS
    FKO_ERROR_CTX_NOT_INITIALIZED
    FKO_ERROR_MEMORY_ALLOCATION
    FKO_ERROR_FILESYSTEM_OPERATION
    FKO_ERROR_INVALID_DATA
    FKO_ERROR_INVALID_DATA_CLIENT_TIMEOUT_NEGATIVE
    FKO_ERROR_INVALID_DATA_DECODE_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_NON_ASCII
    FKO_ERROR_INVALID_DATA_DECODE_LT_MIN_FIELDS
    FKO_ERROR_INVALID_DATA_DECODE_ENC_MSG_LEN_MT_T_SIZE
    FKO_ERROR_INVALID_DATA_DECODE_RAND_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_VERSION_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_VERSION_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_ACCESS_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_SRVAUTH_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_SRVAUTH_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_SPA_EXTRA_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_EXTRA_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_EXTRA_DECODEFAIL
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_MISSING
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_TOOBIG
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_VALIDFAIL
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_DECODEFAIL
    FKO_ERROR_INVALID_DATA_ENCODE_MESSAGE_TOOBIG
    FKO_ERROR_INVALID_DATA_ENCODE_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCODE_DIGEST_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCODE_DIGEST_TOOBIG
    FKO_ERROR_INVALID_DATA_ENCODE_NOTBASE64
    FKO_ERROR_INVALID_DATA_ENCRYPT_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_DIGESTLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_PTLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_RESULT_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_CIPHERLEN_DECODEFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_CIPHERLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_DECRYPTED_MESSAGE_MISSING
    FKO_ERROR_INVALID_DATA_ENCRYPT_DECRYPTED_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_MESSAGE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_DIGEST_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_RESULT_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_CIPHER_DECODEFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_ENCODEDMSG_NULL
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_ENCODEDMSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_TYPE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_MODE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_ENCRYPT_TYPE_UNKNOWN
    FKO_ERROR_INVALID_DATA_FUNCS_NEW_ENCMSG_MISSING
    FKO_ERROR_INVALID_DATA_FUNCS_NEW_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_KEYLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_HMACLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_KEY_ENCODEFAIL
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_HMAC_ENCODEFAIL
    FKO_ERROR_INVALID_DATA_FUNCS_SET_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_HMAC_MSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_HMAC_ENCMSGLEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_HMAC_COMPAREFAIL
    FKO_ERROR_INVALID_DATA_HMAC_TYPE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_HMAC_LEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_MESSAGE_PORT_MISSING
    FKO_ERROR_INVALID_DATA_MESSAGE_TYPE_VALIDFAIL
    FKO_ERROR_INVALID_DATA_MESSAGE_EMPTY
    FKO_ERROR_INVALID_DATA_MESSAGE_CMD_MISSING
    FKO_ERROR_INVALID_DATA_MESSAGE_ACCESS_MISSING
    FKO_ERROR_INVALID_DATA_MESSAGE_NAT_MISSING
    FKO_ERROR_INVALID_DATA_MESSAGE_PORTPROTO_MISSING
    FKO_ERROR_INVALID_DATA_NAT_EMPTY
    FKO_ERROR_INVALID_DATA_RAND_LEN_VALIDFAIL
    FKO_ERROR_INVALID_DATA_SRVAUTH_MISSING
    FKO_ERROR_INVALID_DATA_TIMESTAMP_VALIDFAIL
    FKO_ERROR_INVALID_DATA_USER_MISSING
    FKO_ERROR_INVALID_DATA_USER_FIRSTCHAR_VALIDFAIL
    FKO_ERROR_INVALID_DATA_USER_REMCHAR_VALIDFAIL
    FKO_ERROR_INVALID_DATA_UTIL_STRTOL_LT_MIN
    FKO_ERROR_INVALID_DATA_UTIL_STROL_GT_MAX
    FKO_ERROR_DATA_TOO_LARGE
    FKO_ERROR_INVALID_KEY_LEN
    FKO_ERROR_USERNAME_UNKNOWN
    FKO_ERROR_INCOMPLETE_SPA_DATA
    FKO_ERROR_MISSING_ENCODED_DATA
    FKO_ERROR_INVALID_DIGEST_TYPE
    FKO_ERROR_INVALID_ALLOW_IP
    FKO_ERROR_INVALID_SPA_COMMAND_MSG
    FKO_ERROR_INVALID_SPA_ACCESS_MSG
    FKO_ERROR_INVALID_SPA_NAT_ACCESS_MSG
    FKO_ERROR_INVALID_ENCRYPTION_TYPE
    FKO_ERROR_WRONG_ENCRYPTION_TYPE
    FKO_ERROR_DECRYPTION_SIZE
    FKO_ERROR_DECRYPTION_FAILURE
    FKO_ERROR_DIGEST_VERIFICATION_FAILED
    FKO_ERROR_INVALID_HMAC_KEY_LEN
    FKO_ERROR_UNSUPPORTED_HMAC_MODE
    FKO_ERROR_UNSUPPORTED_FEATURE
    FKO_ERROR_ZERO_OUT_DATA
    FKO_ERROR_UNKNOWN
    GPGME_ERR_START
    FKO_ERROR_MISSING_GPG_KEY_DATA
    FKO_ERROR_GPGME_NO_OPENPGP
    FKO_ERROR_GPGME_CONTEXT
    FKO_ERROR_GPGME_PLAINTEXT_DATA_OBJ
    FKO_ERROR_GPGME_SET_PROTOCOL
    FKO_ERROR_GPGME_CIPHER_DATA_OBJ
    FKO_ERROR_GPGME_BAD_PASSPHRASE
    FKO_ERROR_GPGME_ENCRYPT_SIGN
    FKO_ERROR_GPGME_CONTEXT_SIGNER_KEY
    FKO_ERROR_GPGME_SIGNER_KEYLIST_START
    FKO_ERROR_GPGME_SIGNER_KEY_NOT_FOUND
    FKO_ERROR_GPGME_SIGNER_KEY_AMBIGUOUS
    FKO_ERROR_GPGME_ADD_SIGNER
    FKO_ERROR_GPGME_CONTEXT_RECIPIENT_KEY
    FKO_ERROR_GPGME_RECIPIENT_KEYLIST_START
    FKO_ERROR_GPGME_RECIPIENT_KEY_NOT_FOUND
    FKO_ERROR_GPGME_RECIPIENT_KEY_AMBIGUOUS
    FKO_ERROR_GPGME_DECRYPT_FAILED
    FKO_ERROR_GPGME_DECRYPT_UNSUPPORTED_ALGORITHM
    FKO_ERROR_GPGME_BAD_GPG_EXE
    FKO_ERROR_GPGME_BAD_HOME_DIR
    FKO_ERROR_GPGME_SET_HOME_DIR
    FKO_ERROR_GPGME_NO_SIGNATURE
    FKO_ERROR_GPGME_BAD_SIGNATURE
    FKO_ERROR_GPGME_SIGNATURE_VERIFY_DISABLED
);

# The FKO constants. These are manually pulled from fko.h (for now).
#
use constant {
    # Message types
    FKO_COMMAND_MSG                         => 0,
    FKO_ACCESS_MSG                          => 1,
    FKO_NAT_ACCESS_MSG                      => 2,
    FKO_CLIENT_TIMEOUT_ACCESS_MSG           => 3,
    FKO_CLIENT_TIMEOUT_NAT_ACCESS_MSG       => 4,
    FKO_LOCAL_NAT_ACCESS_MSG                => 5,
    FKO_CLIENT_TIMEOUT_LOCAL_NAT_ACCESS_MSG => 6,

    # Digest types
    FKO_DIGEST_INVALID_DATA => -1,
    FKO_DIGEST_UNKNOWN      => 0,
    FKO_DIGEST_MD5          => 1,
    FKO_DIGEST_SHA1         => 2,
    FKO_DIGEST_SHA256       => 3,
    FKO_DIGEST_SHA384       => 4,
    FKO_DIGEST_SHA512       => 5,

    # HMAC digest types
    FKO_HMAC_INVALID_DATA   => -1,
    FKO_HMAC_UNKNOWN        => 0,
    FKO_HMAC_MD5            => 1,
    FKO_HMAC_SHA1           => 2,
    FKO_HMAC_SHA256         => 3,
    FKO_HMAC_SHA384         => 4,
    FKO_HMAC_SHA512         => 5,

    # Encryption types
    FKO_ENCRYPTION_INVALID_DATA => -1,
    FKO_ENCRYPTION_UNKNOWN      => 0,
    FKO_ENCRYPTION_RIJNDAEL     => 1,
    FKO_ENCRYPTION_GPG          => 2,

    # Encryption modes
    FKO_ENC_MODE_UNKNOWN       => 0,
    FKO_ENC_MODE_ECB           => 1,
    FKO_ENC_MODE_CBC           => 2,
    FKO_ENC_MODE_CFB           => 3,
    FKO_ENC_MODE_PCBC          => 4,
    FKO_ENC_MODE_OFB           => 5,
    FKO_ENC_MODE_CTR           => 6,
    FKO_ENC_MODE_ASYMMETRIC    => 7,
    FKO_ENC_MODE_CBC_LEGACY_IV => 8,

    # FKO error codes
    FKO_SUCCESS                                                 => 0,
    FKO_ERROR_CTX_NOT_INITIALIZED                               => 1,
    FKO_ERROR_MEMORY_ALLOCATION                                 => 2,
    FKO_ERROR_FILESYSTEM_OPERATION                              => 3,
    FKO_ERROR_INVALID_DATA                                      => 4,
    FKO_ERROR_INVALID_DATA_CLIENT_TIMEOUT_NEGATIVE              => 5,
    FKO_ERROR_INVALID_DATA_DECODE_MSGLEN_VALIDFAIL              => 6,
    FKO_ERROR_INVALID_DATA_DECODE_NON_ASCII                     => 7,
    FKO_ERROR_INVALID_DATA_DECODE_LT_MIN_FIELDS                 => 8,
    FKO_ERROR_INVALID_DATA_DECODE_ENC_MSG_LEN_MT_T_SIZE         => 9,
    FKO_ERROR_INVALID_DATA_DECODE_RAND_MISSING                  => 10,
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_MISSING              => 11,
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_TOOBIG               => 12,
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_DECODEFAIL           => 13,
    FKO_ERROR_INVALID_DATA_DECODE_USERNAME_VALIDFAIL            => 14,
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_MISSING             => 15,
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_TOOBIG              => 16,
    FKO_ERROR_INVALID_DATA_DECODE_TIMESTAMP_DECODEFAIL          => 17,
    FKO_ERROR_INVALID_DATA_DECODE_VERSION_MISSING               => 18,
    FKO_ERROR_INVALID_DATA_DECODE_VERSION_TOOBIG                => 19,
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_MISSING               => 20,
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_TOOBIG                => 21,
    FKO_ERROR_INVALID_DATA_DECODE_MSGTYPE_DECODEFAIL            => 22,
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_MISSING               => 23,
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_TOOBIG                => 24,
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_DECODEFAIL            => 25,
    FKO_ERROR_INVALID_DATA_DECODE_MESSAGE_VALIDFAIL             => 26,
    FKO_ERROR_INVALID_DATA_DECODE_ACCESS_VALIDFAIL              => 27,
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_MISSING             => 28,
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_TOOBIG              => 29,
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_DECODEFAIL          => 30,
    FKO_ERROR_INVALID_DATA_DECODE_NATACCESS_VALIDFAIL           => 31,
    FKO_ERROR_INVALID_DATA_DECODE_SRVAUTH_MISSING               => 32,
    FKO_ERROR_INVALID_DATA_DECODE_SRVAUTH_DECODEFAIL            => 33,
    FKO_ERROR_INVALID_DATA_DECODE_SPA_EXTRA_TOOBIG              => 34,
    FKO_ERROR_INVALID_DATA_DECODE_EXTRA_TOOBIG                  => 35,
    FKO_ERROR_INVALID_DATA_DECODE_EXTRA_DECODEFAIL              => 36,
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_MISSING               => 37,
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_TOOBIG                => 38,
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_VALIDFAIL             => 39,
    FKO_ERROR_INVALID_DATA_DECODE_TIMEOUT_DECODEFAIL            => 40,
    FKO_ERROR_INVALID_DATA_ENCODE_MESSAGE_TOOBIG                => 41,
    FKO_ERROR_INVALID_DATA_ENCODE_MSGLEN_VALIDFAIL              => 42,
    FKO_ERROR_INVALID_DATA_ENCODE_DIGEST_VALIDFAIL              => 43,
    FKO_ERROR_INVALID_DATA_ENCODE_DIGEST_TOOBIG                 => 44,
    FKO_ERROR_INVALID_DATA_ENCODE_NOTBASE64                     => 45,
    FKO_ERROR_INVALID_DATA_ENCRYPT_MSGLEN_VALIDFAIL             => 46,
    FKO_ERROR_INVALID_DATA_ENCRYPT_DIGESTLEN_VALIDFAIL          => 47,
    FKO_ERROR_INVALID_DATA_ENCRYPT_PTLEN_VALIDFAIL              => 48,
    FKO_ERROR_INVALID_DATA_ENCRYPT_RESULT_MSGLEN_VALIDFAIL      => 49,
    FKO_ERROR_INVALID_DATA_ENCRYPT_CIPHERLEN_DECODEFAIL         => 50,
    FKO_ERROR_INVALID_DATA_ENCRYPT_CIPHERLEN_VALIDFAIL          => 51,
    FKO_ERROR_INVALID_DATA_ENCRYPT_DECRYPTED_MESSAGE_MISSING    => 52,
    FKO_ERROR_INVALID_DATA_ENCRYPT_DECRYPTED_MSGLEN_VALIDFAIL   => 53,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_MESSAGE_VALIDFAIL        => 54,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_DIGEST_VALIDFAIL         => 55,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_MSGLEN_VALIDFAIL         => 56,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_RESULT_MSGLEN_VALIDFAIL  => 57,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_CIPHER_DECODEFAIL        => 58,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_ENCODEDMSG_NULL          => 59,
    FKO_ERROR_INVALID_DATA_ENCRYPT_GPG_ENCODEDMSGLEN_VALIDFAIL  => 60,
    FKO_ERROR_INVALID_DATA_ENCRYPT_TYPE_VALIDFAIL               => 61,
    FKO_ERROR_INVALID_DATA_ENCRYPT_MODE_VALIDFAIL               => 62,
    FKO_ERROR_INVALID_DATA_ENCRYPT_TYPE_UNKNOWN                 => 63,
    FKO_ERROR_INVALID_DATA_FUNCS_NEW_ENCMSG_MISSING             => 64,
    FKO_ERROR_INVALID_DATA_FUNCS_NEW_MSGLEN_VALIDFAIL           => 65,
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_KEYLEN_VALIDFAIL           => 66,
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_HMACLEN_VALIDFAIL          => 67,
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_KEY_ENCODEFAIL             => 68,
    FKO_ERROR_INVALID_DATA_FUNCS_GEN_HMAC_ENCODEFAIL            => 69,
    FKO_ERROR_INVALID_DATA_FUNCS_SET_MSGLEN_VALIDFAIL           => 70,
    FKO_ERROR_INVALID_DATA_HMAC_MSGLEN_VALIDFAIL                => 71,
    FKO_ERROR_INVALID_DATA_HMAC_ENCMSGLEN_VALIDFAIL             => 72,
    FKO_ERROR_INVALID_DATA_HMAC_COMPAREFAIL                     => 73,
    FKO_ERROR_INVALID_DATA_HMAC_TYPE_VALIDFAIL                  => 74,
    FKO_ERROR_INVALID_DATA_HMAC_LEN_VALIDFAIL                   => 75,
    FKO_ERROR_INVALID_DATA_MESSAGE_PORT_MISSING                 => 76,
    FKO_ERROR_INVALID_DATA_MESSAGE_TYPE_VALIDFAIL               => 77,
    FKO_ERROR_INVALID_DATA_MESSAGE_EMPTY                        => 78,
    FKO_ERROR_INVALID_DATA_MESSAGE_CMD_MISSING                  => 79,
    FKO_ERROR_INVALID_DATA_MESSAGE_ACCESS_MISSING               => 80,
    FKO_ERROR_INVALID_DATA_MESSAGE_NAT_MISSING                  => 81,
    FKO_ERROR_INVALID_DATA_MESSAGE_PORTPROTO_MISSING            => 82,
    FKO_ERROR_INVALID_DATA_NAT_EMPTY                            => 83,
    FKO_ERROR_INVALID_DATA_RAND_LEN_VALIDFAIL                   => 84,
    FKO_ERROR_INVALID_DATA_SRVAUTH_MISSING                      => 85,
    FKO_ERROR_INVALID_DATA_TIMESTAMP_VALIDFAIL                  => 86,
    FKO_ERROR_INVALID_DATA_USER_MISSING                         => 87,
    FKO_ERROR_INVALID_DATA_USER_FIRSTCHAR_VALIDFAIL             => 88,
    FKO_ERROR_INVALID_DATA_USER_REMCHAR_VALIDFAIL               => 89,
    FKO_ERROR_INVALID_DATA_UTIL_STRTOL_LT_MIN                   => 90,
    FKO_ERROR_INVALID_DATA_UTIL_STROL_GT_MAX                    => 91,
    FKO_ERROR_DATA_TOO_LARGE                                    => 92,
    FKO_ERROR_INVALID_KEY_LEN                                   => 93,
    FKO_ERROR_USERNAME_UNKNOWN                                  => 94,
    FKO_ERROR_INCOMPLETE_SPA_DATA                               => 95,
    FKO_ERROR_MISSING_ENCODED_DATA                              => 96,
    FKO_ERROR_INVALID_DIGEST_TYPE                               => 97,
    FKO_ERROR_INVALID_ALLOW_IP                                  => 98,
    FKO_ERROR_INVALID_SPA_COMMAND_MSG                           => 99,
    FKO_ERROR_INVALID_SPA_ACCESS_MSG                            => 100,
    FKO_ERROR_INVALID_SPA_NAT_ACCESS_MSG                        => 101,
    FKO_ERROR_INVALID_ENCRYPTION_TYPE                           => 102,
    FKO_ERROR_WRONG_ENCRYPTION_TYPE                             => 103,
    FKO_ERROR_DECRYPTION_SIZE                                   => 104,
    FKO_ERROR_DECRYPTION_FAILURE                                => 105,
    FKO_ERROR_DIGEST_VERIFICATION_FAILED                        => 106,
    FKO_ERROR_INVALID_HMAC_KEY_LEN                              => 107,
    FKO_ERROR_UNSUPPORTED_HMAC_MODE                             => 108,
    FKO_ERROR_UNSUPPORTED_FEATURE                               => 109,
    FKO_ERROR_ZERO_OUT_DATA                                     => 110,
    FKO_ERROR_UNKNOWN                                           => 111,
    # Start GPGME-related errors
    GPGME_ERR_START                                             => 112,
    FKO_ERROR_MISSING_GPG_KEY_DATA                              => 113,
    FKO_ERROR_GPGME_NO_OPENPGP                                  => 114,
    FKO_ERROR_GPGME_CONTEXT                                     => 115,
    FKO_ERROR_GPGME_PLAINTEXT_DATA_OBJ                          => 116,
    FKO_ERROR_GPGME_SET_PROTOCOL                                => 117,
    FKO_ERROR_GPGME_CIPHER_DATA_OBJ                             => 118,
    FKO_ERROR_GPGME_BAD_PASSPHRASE                              => 119,
    FKO_ERROR_GPGME_ENCRYPT_SIGN                                => 120,
    FKO_ERROR_GPGME_CONTEXT_SIGNER_KEY                          => 121,
    FKO_ERROR_GPGME_SIGNER_KEYLIST_START                        => 122,
    FKO_ERROR_GPGME_SIGNER_KEY_NOT_FOUND                        => 123,
    FKO_ERROR_GPGME_SIGNER_KEY_AMBIGUOUS                        => 124,
    FKO_ERROR_GPGME_ADD_SIGNER                                  => 125,
    FKO_ERROR_GPGME_CONTEXT_RECIPIENT_KEY                       => 126,
    FKO_ERROR_GPGME_RECIPIENT_KEYLIST_START                     => 127,
    FKO_ERROR_GPGME_RECIPIENT_KEY_NOT_FOUND                     => 128,
    FKO_ERROR_GPGME_RECIPIENT_KEY_AMBIGUOUS                     => 129,
    FKO_ERROR_GPGME_DECRYPT_FAILED                              => 130,
    FKO_ERROR_GPGME_DECRYPT_UNSUPPORTED_ALGORITHM               => 131,
    FKO_ERROR_GPGME_BAD_GPG_EXE                                 => 132,
    FKO_ERROR_GPGME_BAD_HOME_DIR                                => 133,
    FKO_ERROR_GPGME_SET_HOME_DIR                                => 134,
    FKO_ERROR_GPGME_NO_SIGNATURE                                => 135,
    FKO_ERROR_GPGME_BAD_SIGNATURE                               => 136,
    FKO_ERROR_GPGME_SIGNATURE_VERIFY_DISABLED                   => 137,
};

1;

###EOF###
