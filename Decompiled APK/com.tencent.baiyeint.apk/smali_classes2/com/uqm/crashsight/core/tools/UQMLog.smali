.class public Lcom/uqm/crashsight/core/tools/UQMLog;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "[CrashSightPlugin]"

.field private static final WARN:I = 0x5

.field public static debugEnable:Z = false


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

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method private static printLog(Ljava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-string v1, "[CrashSightPlugin]"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(Ljava/lang/String;I)V

    return-void
.end method
