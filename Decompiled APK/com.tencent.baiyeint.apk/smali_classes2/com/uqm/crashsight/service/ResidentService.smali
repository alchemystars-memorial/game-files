.class public Lcom/uqm/crashsight/service/ResidentService;
.super Landroid/app/Service;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/service/ResidentService$a;
    }
.end annotation


# static fields
.field static isNativeDaemonInit:Z = false


# instance fields
.field private binder:Lcom/uqm/crashsight/service/ResidentService$a;

.field bootTime:J

.field private callback:Lcom/uqm/crashsight/CrashSightStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/uqm/crashsight/service/ResidentService$a;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/service/ResidentService$a;-><init>(Lcom/uqm/crashsight/service/ResidentService;)V

    iput-object v0, p0, Lcom/uqm/crashsight/service/ResidentService;->binder:Lcom/uqm/crashsight/service/ResidentService$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/service/ResidentService;->bootTime:J

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BootTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/service/ResidentService;->bootTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ResidentService -> bootTime: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/service/ResidentService;->bootTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResidentService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/uqm/crashsight/service/ResidentService;->isNativeDaemonInit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/uqm/crashsight/service/ResidentService;->isNativeDaemonInit:Z

    new-instance p1, Lcom/uqm/crashsight/service/ResidentService$1;

    invoke-direct {p1, p0, p0}, Lcom/uqm/crashsight/service/ResidentService$1;-><init>(Lcom/uqm/crashsight/service/ResidentService;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/service/ResidentService;->binder:Lcom/uqm/crashsight/service/ResidentService$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResidentService -> onCreate, Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResidentService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/service/ResidentService;->callback:Lcom/uqm/crashsight/CrashSightStrategy$a;

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

    const-string v0, "ResidentService"

    const-string v1, "ResidentService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "ResidentService"

    const-string v0, "ResidentService onUnbind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
