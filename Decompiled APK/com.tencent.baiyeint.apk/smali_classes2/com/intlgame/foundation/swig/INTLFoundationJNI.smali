.class public Lcom/intlgame/foundation/swig/INTLFoundationJNI;
.super Ljava/lang/Object;
.source "INTLFoundationJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native DEFAULT_LOG_TAG_get()Ljava/lang/String;
.end method

.method public static final native INTL_COMPRESS_FLAG_get()I
.end method

.method public static final native INTL_ENCRYTP_FLAG_get()I
.end method

.method public static final native INTL_FILE_NAME_FORMAT_get()Ljava/lang/String;
.end method

.method public static final native INTL_FILE_NAME_LENGTH_get()I
.end method

.method public static final native INTL_LOG_DEFAULT_AUTO_DELETE_FILE_ENABLE_get()Z
.end method

.method public static final native INTL_LOG_DEFAULT_COMPRESS_ENABLE_get()Z
.end method

.method public static final native INTL_LOG_DEFAULT_CONSOLE_OUTPUT_ENABLE_get()Z
.end method

.method public static final native INTL_LOG_DEFAULT_ENCRYPT_ENABLE_get()Z
.end method

.method public static final native INTL_LOG_DEFAULT_FILE_LIMIT_HOURS_get()I
.end method

.method public static final native INTL_LOG_DEFAULT_FILE_OUTPUT_ENABLE_get()Z
.end method

.method public static final native INTL_LOG_DEFAULT_MAX_FILE_SIZE_get()I
.end method

.method public static final native INTL_NEWLINE_FLAG_get()Ljava/lang/String;
.end method

.method public static final native INTL_NO_COMPRESS_FLAG_get()I
.end method

.method public static final native INTL_NO_ENCRYTP_FLAG_get()I
.end method

.method public static final native INTL_OS_ANDROID_get()I
.end method

.method public static final native INTL_OS_IOS_get()I
.end method

.method public static final native INTL_OS_MAC_get()I
.end method

.method public static final native INTL_OS_PLAY_STATION_get()I
.end method

.method public static final native INTL_OS_SWITCH_get()I
.end method

.method public static final native INTL_OS_WINDOWS_get()I
.end method

.method public static final native INTL_OS_XBOX_get()I
.end method

.method public static final native INTL_PATH_SLASH_get()Ljava/lang/String;
.end method

.method public static final native LOG_MAX_LENGTH_get()I
.end method

.method public static final native LOG_PREFIX_FORMAT_get()Ljava/lang/String;
.end method

.method public static final native Log_DeleteFileAsync(JLcom/intlgame/foundation/swig/Log;)V
.end method

.method public static final native Log_DeleteLogFiles(JLcom/intlgame/foundation/swig/Log;J)V
.end method

.method public static final native Log_FileOutputAsync(JLcom/intlgame/foundation/swig/Log;Ljava/lang/String;)V
.end method

.method public static final native Log_GetInstance()J
.end method

.method public static final native Log_Init(JLcom/intlgame/foundation/swig/Log;)V
.end method

.method public static final native Log_OutputLog(JLcom/intlgame/foundation/swig/Log;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static final native Log_ReportLogFiles(JLcom/intlgame/foundation/swig/Log;)V
.end method

.method public static final native Log_set_enable_auto_delete_log_file(JLcom/intlgame/foundation/swig/Log;Z)V
.end method

.method public static final native Log_set_enable_compress(JLcom/intlgame/foundation/swig/Log;Z)V
.end method

.method public static final native Log_set_enable_console_output(JLcom/intlgame/foundation/swig/Log;Z)V
.end method

.method public static final native Log_set_enable_encrypt(JLcom/intlgame/foundation/swig/Log;Z)V
.end method

.method public static final native Log_set_enable_file_output(JLcom/intlgame/foundation/swig/Log;Z)V
.end method

.method public static final native Log_set_file_excess_action(JLcom/intlgame/foundation/swig/Log;I)V
.end method

.method public static final native Log_set_log_file_path_dir(JLcom/intlgame/foundation/swig/Log;Ljava/lang/String;)V
.end method

.method public static final native Log_set_log_level(JLcom/intlgame/foundation/swig/Log;I)V
.end method

.method public static final native Log_set_max_log_file_nums(JLcom/intlgame/foundation/swig/Log;J)V
.end method

.method public static final native Log_set_max_log_file_size(JLcom/intlgame/foundation/swig/Log;J)V
.end method

.method public static final native MINIMUM_JSON_LEN_get()I
.end method

.method public static final native delete_Log(J)V
.end method

.method public static final native kFileExcessActionReWrite_get()I
.end method

.method public static final native kFileExcessActionStopAppend_get()I
.end method

.method public static final native kLogLevelDebug_get()I
.end method

.method public static final native kLogLevelError_get()I
.end method

.method public static final native kLogLevelInfo_get()I
.end method

.method public static final native kLogLevelWarn_get()I
.end method
