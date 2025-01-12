.class public final enum Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/enq/transceiver/transceivertool/constant/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_CC:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_COS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_DECRYPT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_EXTERNAL_STORAGE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_READ_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_AUTH_WRITE_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_CONFIG_FUNC_CLOSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_DATA_DNS_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_DATA_INIT_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_DATA_UPLOAD_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_DETECT_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_CONNECT_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_READ_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_RESP_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_HTTP_UPLOAD_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_NETSTACK_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_NETWORK_EXCEPTION:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_OSVERSION_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PRIVATE_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PROCESS_EXECUTE_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PROCESS_EXECUTE_READ:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_PROCESS_NO_CMD:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_REPORTER_EXE_FAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_REPORTER_METHOD_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_REPORTER_UNAVAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_COMPRESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_FILELIST_EMPTY:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_FILE_SIZE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_NO_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_SYSTEM_STORAGE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

.field public static final enum SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;


# instance fields
.field private key:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    new-instance v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v3, "ERROR_PARAM_TASK_INVALID"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v1, v3, v4, v5}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v3, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v5, "ERROR_PARAM_REQ_INVALID"

    const/4 v6, 0x2

    const/16 v7, 0x66

    invoke-direct {v3, v5, v6, v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v5, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v7, "ERROR_CONFIG_FUNC_CLOSE"

    const/4 v8, 0x3

    const/16 v9, 0x67

    invoke-direct {v5, v7, v8, v9}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v9, "ERROR_HTTP_TIMEOUT"

    const/4 v10, 0x4

    const/16 v11, 0xc9

    invoke-direct {v7, v9, v10, v11}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v9, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v11, "ERROR_HTTP_CONNECT_TIMEOUT"

    const/4 v12, 0x5

    const/16 v13, 0xca

    invoke-direct {v9, v11, v12, v13}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_CONNECT_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v11, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v13, "ERROR_HTTP_READ_TIMEOUT"

    const/4 v14, 0x6

    const/16 v15, 0xcc

    invoke-direct {v11, v13, v14, v15}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_READ_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v13, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_HTTP_UPLOAD_TIMEOUT"

    const/4 v14, 0x7

    const/16 v12, 0xcd

    invoke-direct {v13, v15, v14, v12}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_UPLOAD_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v12, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_HTTP_RESP_NULL"

    const/16 v14, 0x8

    const/16 v10, 0xce

    invoke-direct {v12, v15, v14, v10}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v10, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_HTTP_RESP_INVALID"

    const/16 v14, 0x9

    const/16 v8, 0xcf

    invoke-direct {v10, v15, v14, v8}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v8, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_CC"

    const/16 v14, 0xa

    const/16 v6, 0x12d

    invoke-direct {v8, v15, v14, v6}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_CC:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v6, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_COS"

    const/16 v14, 0xb

    const/16 v4, 0x12e

    invoke-direct {v6, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_COS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_EXTERNAL_STORAGE"

    const/16 v14, 0xc

    const/16 v2, 0x12f

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_EXTERNAL_STORAGE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_READ_FILE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x130

    invoke-direct {v2, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_READ_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_WRITE_FILE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x131

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_WRITE_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_PRIVATE_FILE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x132

    invoke-direct {v2, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PRIVATE_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_AUTH_DECRYPT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x133

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_DECRYPT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_STATUS_UNSUPPORT"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x191

    invoke-direct {v2, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_DATA_DNS_PARSE"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x1f5

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_DNS_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_DATA_INIT_PARSE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x1f6

    invoke-direct {v2, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_DATA_UPLOAD_PARSE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1f7

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_UPLOAD_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_DATA_INIT_INVALID"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x1f8

    invoke-direct {v2, v15, v14, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v15, "ERROR_PROCESS_NO_CMD"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x258

    invoke-direct {v4, v15, v14, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_NO_CMD:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_PROCESS_EXECUTE_TIMEOUT"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x259

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_PROCESS_EXECUTE_READ"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x25a

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_READ:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_PROCESS_EXECUTE_PARSE"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x25b

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_NETSTACK_UNSUPPORT"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x25c

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_TASK_OVER_MAXIMUM"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x2bc

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_TASK_FAIL_UNKNOWN"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x2bd

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_STORAGE"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x320

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_STORAGE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_NO_FILE"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x321

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_FILE_SIZE"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x322

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_IO"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x323

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_FILELIST_EMPTY"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x324

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILELIST_EMPTY:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_SYSTEM_COMPRESS"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x325

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_COMPRESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_OSVERSION_UNSUPPORT"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x326

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_OSVERSION_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_REPORTER_UNAVAIL"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x327

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_UNAVAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_REPORTER_EXE_FAIL"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x328

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_EXE_FAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_REPORTER_METHOD_UNSUPPORT"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x329

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_METHOD_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_DETECT_TIMEOUT"

    const/16 v15, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x385

    invoke-direct {v2, v14, v15, v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DETECT_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    new-instance v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const-string v14, "ERROR_NETWORK_EXCEPTION"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x386

    invoke-direct {v4, v14, v15, v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_NETWORK_EXCEPTION:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const/16 v2, 0x29

    new-array v2, v2, [Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v4, v2, v0

    sput-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
    .locals 1

    const-class v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, [Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
