.class final Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;->a:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->a()Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of CrashSight."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;->a:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->b(Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->a()Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver$1;->b:Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->a(Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
