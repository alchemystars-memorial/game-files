.class public final Lcom/uqm/crashsight/service/a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/concurrent/Semaphore;

.field private static volatile b:Z

.field private static g:Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/service/a;->f:Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/service/a;->i:I

    sput-boolean v0, Lcom/uqm/crashsight/service/a;->b:Z

    iput-object p1, p0, Lcom/uqm/crashsight/service/a;->c:Landroid/content/Context;

    iput p2, p0, Lcom/uqm/crashsight/service/a;->d:I

    iput p3, p0, Lcom/uqm/crashsight/service/a;->e:I

    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object p2, Lcom/uqm/crashsight/service/a;->a:Ljava/util/concurrent/Semaphore;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/uqm/crashsight/service/a;->h:Ljava/util/List;

    move p2, v0

    :goto_0
    if-ge p2, p4, :cond_0

    iget-object p3, p0, Lcom/uqm/crashsight/service/a;->h:Ljava/util/List;

    new-instance v1, Lcom/uqm/crashsight/proguard/s$a;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/s$a;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/uqm/crashsight/service/a;->i:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/s;->a(Lcom/uqm/crashsight/crashreport/a;)V

    iget p2, p0, Lcom/uqm/crashsight/service/a;->d:I

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/s;->b(I)V

    invoke-static {p5}, Lcom/uqm/crashsight/proguard/s;->a(Z)V

    const/4 p2, 0x0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xe

    if-lt p3, p4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Landroid/app/Application;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    :cond_1
    if-eqz p2, :cond_3

    :try_start_0
    sget-object p1, Lcom/uqm/crashsight/service/a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/uqm/crashsight/service/a$1;

    invoke-direct {p1, p0}, Lcom/uqm/crashsight/service/a$1;-><init>(Lcom/uqm/crashsight/service/a;)V

    sput-object p1, Lcom/uqm/crashsight/service/a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/service/a;)V
    .locals 0

    sget-boolean p0, Lcom/uqm/crashsight/service/a;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/uqm/crashsight/service/a;->b:Z

    sget-object p0, Lcom/uqm/crashsight/service/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/service/a;)V
    .locals 0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/uqm/crashsight/service/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    move-wide v4, v2

    :goto_0
    sget-boolean v6, Lcom/uqm/crashsight/service/a;->b:Z

    if-eqz v6, :cond_0

    :try_start_0
    const-string v6, "Routine wait"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-object v6, Lcom/uqm/crashsight/service/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v6, "Routine wakeup"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    cmp-long v6, v2, v0

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/uqm/crashsight/service/a;->e:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/uqm/crashsight/service/a;->f:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v6}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v6

    invoke-static {v6}, Lcom/uqm/crashsight/proguard/s;->a(I)V

    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/uqm/crashsight/service/a;->d:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->b()Lcom/uqm/crashsight/proguard/s$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v6, p0, Lcom/uqm/crashsight/service/a;->h:Ljava/util/List;

    iget v7, p0, Lcom/uqm/crashsight/service/a;->i:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/uqm/crashsight/service/a;->i:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/uqm/crashsight/proguard/s;->a(Ljava/util/List;J)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/uqm/crashsight/service/a;->h:Ljava/util/List;

    invoke-static {v7}, Lcom/uqm/crashsight/proguard/s;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->updateMemInfo(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->a()V

    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
