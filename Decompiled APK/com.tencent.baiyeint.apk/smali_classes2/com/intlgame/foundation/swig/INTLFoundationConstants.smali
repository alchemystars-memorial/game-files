.class public interface abstract Lcom/intlgame/foundation/swig/INTLFoundationConstants;
.super Ljava/lang/Object;
.source "INTLFoundationConstants.java"


# static fields
.field public static final DEFAULT_LOG_TAG:Ljava/lang/String;

.field public static final INTL_COMPRESS_FLAG:I

.field public static final INTL_ENCRYTP_FLAG:I

.field public static final INTL_FILE_NAME_FORMAT:Ljava/lang/String;

.field public static final INTL_FILE_NAME_LENGTH:I

.field public static final INTL_LOG_DEFAULT_AUTO_DELETE_FILE_ENABLE:Z

.field public static final INTL_LOG_DEFAULT_COMPRESS_ENABLE:Z

.field public static final INTL_LOG_DEFAULT_CONSOLE_OUTPUT_ENABLE:Z

.field public static final INTL_LOG_DEFAULT_ENCRYPT_ENABLE:Z

.field public static final INTL_LOG_DEFAULT_FILE_LIMIT_HOURS:I

.field public static final INTL_LOG_DEFAULT_FILE_OUTPUT_ENABLE:Z

.field public static final INTL_LOG_DEFAULT_MAX_FILE_SIZE:I

.field public static final INTL_NEWLINE_FLAG:Ljava/lang/String;

.field public static final INTL_NO_COMPRESS_FLAG:I

.field public static final INTL_NO_ENCRYTP_FLAG:I

.field public static final INTL_OS_ANDROID:I

.field public static final INTL_OS_IOS:I

.field public static final INTL_OS_MAC:I

.field public static final INTL_OS_PLAY_STATION:I

.field public static final INTL_OS_SWITCH:I

.field public static final INTL_OS_WINDOWS:I

.field public static final INTL_OS_XBOX:I

.field public static final INTL_PATH_SLASH:Ljava/lang/String;

.field public static final LOG_MAX_LENGTH:I

.field public static final LOG_PREFIX_FORMAT:Ljava/lang/String;

.field public static final MINIMUM_JSON_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_WINDOWS_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_WINDOWS:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_MAC_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_MAC:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_XBOX_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_XBOX:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_PLAY_STATION_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_PLAY_STATION:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_SWITCH_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_SWITCH:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_IOS_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_IOS:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_OS_ANDROID_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_OS_ANDROID:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->MINIMUM_JSON_LEN_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->MINIMUM_JSON_LEN:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->DEFAULT_LOG_TAG_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->LOG_PREFIX_FORMAT_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->LOG_PREFIX_FORMAT:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->LOG_MAX_LENGTH_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->LOG_MAX_LENGTH:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_PATH_SLASH_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_PATH_SLASH:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_NEWLINE_FLAG_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_NEWLINE_FLAG:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_ENCRYTP_FLAG_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_ENCRYTP_FLAG:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_NO_ENCRYTP_FLAG_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_NO_ENCRYTP_FLAG:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_COMPRESS_FLAG_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_COMPRESS_FLAG:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_NO_COMPRESS_FLAG_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_NO_COMPRESS_FLAG:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_FILE_NAME_FORMAT_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_FILE_NAME_FORMAT:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_FILE_NAME_LENGTH_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_FILE_NAME_LENGTH:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_COMPRESS_ENABLE_get()Z

    move-result v0

    sput-boolean v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_COMPRESS_ENABLE:Z

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_ENCRYPT_ENABLE_get()Z

    move-result v0

    sput-boolean v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_ENCRYPT_ENABLE:Z

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_MAX_FILE_SIZE_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_MAX_FILE_SIZE:I

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_CONSOLE_OUTPUT_ENABLE_get()Z

    move-result v0

    sput-boolean v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_CONSOLE_OUTPUT_ENABLE:Z

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_FILE_OUTPUT_ENABLE_get()Z

    move-result v0

    sput-boolean v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_FILE_OUTPUT_ENABLE:Z

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_AUTO_DELETE_FILE_ENABLE_get()Z

    move-result v0

    sput-boolean v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_AUTO_DELETE_FILE_ENABLE:Z

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->INTL_LOG_DEFAULT_FILE_LIMIT_HOURS_get()I

    move-result v0

    sput v0, Lcom/intlgame/foundation/swig/INTLFoundationConstants;->INTL_LOG_DEFAULT_FILE_LIMIT_HOURS:I

    return-void
.end method
