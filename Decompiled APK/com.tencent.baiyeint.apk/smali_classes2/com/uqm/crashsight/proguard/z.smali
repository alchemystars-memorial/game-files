.class public final Lcom/uqm/crashsight/proguard/z;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/proguard/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/proguard/z;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->a:Lcom/uqm/crashsight/proguard/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
