.class public Lcom/uqm/crashsight/service/DaemonService;
.super Landroid/app/Service;
.source "CrashSight"


# static fields
.field static isNativeDaemonInit:Z = false


# instance fields
.field bootTime:J

.field private callback:Lcom/uqm/crashsight/CrashSightStrategy$a;

.field mIbinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/service/DaemonService;->mIbinder:Landroid/os/Binder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/service/DaemonService;->bootTime:J

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "DaemonService"

    const-string v0, "DaemonService -> onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/uqm/crashsight/service/DaemonService;->mIbinder:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DaemonService -> onCreate, Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DaemonService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/service/DaemonService;->callback:Lcom/uqm/crashsight/CrashSightStrategy$a;

    const/16 v1, 0x3ec

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy$a;Lcom/uqm/crashsight/proguard/d;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/c;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CrashSight"

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->tryLoadSo(Ljava/lang/String;Z)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DaemonService"

    const-string v1, "DaemonService -> onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DaemonService -> onStartCommand, Thread: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DaemonService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "BootTime"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uqm/crashsight/service/DaemonService;->bootTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DaemonService -> bootTime: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/service/DaemonService;->bootTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DaemonService -> isNativeDaemonInit: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/uqm/crashsight/service/DaemonService;->isNativeDaemonInit:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/uqm/crashsight/service/DaemonService;->isNativeDaemonInit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/uqm/crashsight/service/DaemonService;->isNativeDaemonInit:Z

    new-instance p1, Lcom/uqm/crashsight/service/DaemonService$1;

    invoke-direct {p1, p0, p0}, Lcom/uqm/crashsight/service/DaemonService$1;-><init>(Lcom/uqm/crashsight/service/DaemonService;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string p1, "DaemonService -> start finished.E "

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string p1, "DaemonService"

    const-string v0, "DaemonService -> onUnbind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
