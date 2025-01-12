.class final Lcom/uqm/crashsight/service/ResidentService$1;
.super Ljava/lang/Thread;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/service/ResidentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/uqm/crashsight/service/ResidentService;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/service/ResidentService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/service/ResidentService$1;->b:Lcom/uqm/crashsight/service/ResidentService;

    iput-object p2, p0, Lcom/uqm/crashsight/service/ResidentService$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/uqm/crashsight/service/ResidentService$1;->a:Landroid/content/Context;

    const-string v1, "indicators"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "indicator_p"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    const-string v2, "indicator_d"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    const-string v2, "observer_p"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/io/File;

    const-string v2, "observer_d"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/uqm/crashsight/service/ResidentService$1;->b:Lcom/uqm/crashsight/service/ResidentService;

    iget-wide v8, v0, Lcom/uqm/crashsight/service/ResidentService;->bootTime:J

    invoke-static/range {v3 .. v9}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->nativeDaemonInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
