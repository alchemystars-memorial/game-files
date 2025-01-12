.class public Lcom/uqm/crashsight/core/crash/CrashSight;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/core/crash/CrashInterface;


# static fields
.field private static final CS_REPORT_DELAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = "[CrashSightPlugin]"

.field private static final LogLevelDebug:I = 0x4

.field private static final LogLevelError:I = 0x1

.field private static final LogLevelInfo:I = 0x3

.field private static final LogLevelSilent:I = 0x0

.field private static final LogLevelVerbose:I = 0x5

.field private static final LogLevelWarn:I = 0x2

.field private static mAppChannel:Ljava/lang/String; = null

.field private static mAppVersion:Ljava/lang/String; = null

.field private static mCallbackType:I = 0x1f

.field private static mCrashHandleTimeout:I = 0x3c

.field private static mCrashUploadServerUrl:Ljava/lang/String; = null

.field private static mDebugMode:Z = false

.field private static mDelay:J = 0x0L

.field private static mDeviceId:Ljava/lang/String; = null

.field private static mDeviceModel:Ljava/lang/String; = null

.field private static mGameType:I = 0x3

.field private static mInitialized:Z = false

.field private static mLogPath:Ljava/lang/String;

.field private static mUserId:Ljava/lang/String;


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

.method private getAppVersionNameAndCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " getAppVersionNameAndCode exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const-string p1, " CSCrash versionName is null, plz check! "

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V

    const-string p1, "1.0"

    return-object p1
.end method

.method private getOpenId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public closeCrashReport()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->closeCrashReport()V

    return-void
.end method

.method public configCallbackTypeBeforeInit(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configDefaultBeforeInit invoked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    return-void
.end method

.method public configCrashHandleTimeout(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configCrashHandleTimeout invoked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashHandleTimeout:I

    return-void
.end method

.method public configCrashReporterLogLevelBeforeInit(I)V
    .locals 0

    return-void
.end method

.method public configCrashServerUrlBeforeInit(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public configDebugModeBeforeInit(Z)V
    .locals 0

    sput-boolean p1, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    sput-boolean p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    return-void
.end method

.method public configDefaultBeforeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "configDefaultBeforeInit invoked"

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    sput-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    sput-object p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    sput-wide p4, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mAppChannel: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mAppVersion: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mUserId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mDelay: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide p2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public enableAsyncReportException()I
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->enableAsyncReportException()I

    move-result v0

    return v0
.end method

.method public getCrashThreadId()J
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->getCrashThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    sput-boolean p3, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    sput-object p4, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/core/crash/CrashSight;->initWithAppId(Ljava/lang/String;)V

    const-string p1, "init invoked"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public initWithAppId(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    sput-boolean v0, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initWithAppId invoked, appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashUploadServerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setServerUrl(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->getActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadSO()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "CrashSight.so is loaded successfully"

    invoke-static {v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;

    invoke-direct {v1, v0}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    sget-wide v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-virtual {v1, v2, v3}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/uqm/crashsight/CrashSightStrategy;

    sget v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCallBackType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setCallBackType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mCallbackType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setAppChannel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setAppVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setDeviceID(Ljava/lang/String;)Lcom/uqm/crashsight/CrashSightStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setDeviceID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setDeviceModel(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setDeviceModel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setLogPath(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strategy.setLogPath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :cond_5
    sget v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mCrashHandleTimeout:I

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCrashHandleTimeout(I)V

    new-instance v2, Lcom/uqm/crashsight/core/crash/CrashSight$2;

    invoke-direct {v2, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$2;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;)V

    sget v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mGameType:I

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/a;->a(I)V

    sget-boolean v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/proguard/a;->a(Ljava/lang/String;ZLjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    sget-boolean v2, Lcom/uqm/crashsight/core/crash/CrashSight;->mDebugMode:Z

    invoke-static {v0, p1, v2, v1}, Lcom/uqm/crashsight/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;)V

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mUserId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mDelay: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mDelay:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mUserId:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x1

    sput-boolean p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    return-void

    :cond_9
    const-string p1, "CrashSight.so is loaded failed"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p1, "crashsight platform get activity failed."

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public logInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logInfo invoked, level : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p2, p3}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printLog level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    const-string v0, "[CrashSightPlugin]"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-static {v0, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-static {v0, p2}, Lcom/uqm/crashsight/crashreport/CrashSightLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CS Crash reportException type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , exceptionName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , exceptionMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , exceptionStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , extInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,quit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,dumpNativeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p6, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/uqm/crashsight/core/crash/CrashSight$1;

    invoke-direct {p2, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$1;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setAppID(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set app id as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setCatchMultiSignal(Z)V
    .locals 0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setCatchMultiSignal(Z)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mDeviceModel:Ljava/lang/String;

    return-void
.end method

.method public setGameType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGameType invoked, gameType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    sput p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mGameType:I

    return-void
.end method

.method public setIsAppForeground(Z)V
    .locals 2

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setIsAppForeground(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set is app foreground as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 1

    sput-object p1, Lcom/uqm/crashsight/core/crash/CrashSight;->mLogPath:Ljava/lang/String;

    sget-boolean v0, Lcom/uqm/crashsight/core/crash/CrashSight;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setLogPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setScene(I)V
    .locals 0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserSceneTag(I)V

    return-void
.end method

.method public setUnwindExtraStack(Z)V
    .locals 0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUnwindExtraStack(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set user id as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setUserSceneTag(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserSceneTagStr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set user scene tag as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setUserValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserValue invoked, key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/core/api/CrashSightPlatform;->getActivity()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCrashReport()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->startCrashReport()V

    return-void
.end method

.method public testJavaCrash()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uqm/crashsight/core/crash/CrashSight$3;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/core/crash/CrashSight$3;-><init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public testOomCrash()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->testOomCrash()V

    return-void
.end method
