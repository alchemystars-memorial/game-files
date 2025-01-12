.class public Lcom/enq/transceiver/transceivertool/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final ALLLOG:I = 0x7

.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final NOLOG:I = 0x1

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5

.field private static logLevel:I = 0x1

.field private static logOutputStream:Ljava/io/FileOutputStream; = null

.field private static writeToFile:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDebugLogFile(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    sput-boolean p0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sput-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    return p0
.end method

.method public static closeAllLogMode()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v2, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : DEBUG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".java"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "[%s.%s]%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v1, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".java"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "[%s.%s]%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v1, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".java"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "[%s.%s]%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static setLevel(I)V
    .locals 0

    sput p0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v2, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : VERBOSE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".java"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    aput-object p1, v3, v1

    const-string p1, "[%s.%s]%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v1, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeToFile:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : WARN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->writeLogToFile(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".java"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "[%s.%s]%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private static writeLogToFile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object p0, Lcom/enq/transceiver/transceivertool/util/LogUtil;->logOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
