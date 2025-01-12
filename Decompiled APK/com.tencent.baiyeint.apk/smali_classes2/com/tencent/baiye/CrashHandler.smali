.class public Lcom/tencent/baiye/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mLastDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/baiye/CrashHandler;->mLastDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "h3d"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lcom/tencent/baiye/MainActivity;->Instance:Lcom/h3d/base/MainActivityBase;

    check-cast v4, Lcom/tencent/baiye/MainActivity;

    invoke-virtual {v4}, Lcom/tencent/baiye/MainActivity;->UnmountOBB()V

    const-string v4, "\u89e6\u53d1 uncaught exception. Thread - %s \nException - %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/baiye/CrashHandler;->mLastDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v4, "\u5904\u7406 Uncaught exception \u7684\u903b\u8f91\u518d\u62a5\u5f02\u5e38\uff01Thread - %s \nException - %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tencent/baiye/CrashHandler;->mLastDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/tencent/baiye/CrashHandler;->mLastDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    throw v0
.end method
