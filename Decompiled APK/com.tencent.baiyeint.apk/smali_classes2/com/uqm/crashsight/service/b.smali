.class public final Lcom/uqm/crashsight/service/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static b:Lcom/uqm/crashsight/service/b;


# instance fields
.field private a:Lcom/uqm/crashsight/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/service/b;->a:Lcom/uqm/crashsight/service/a;

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/service/b;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/service/b;->b:Lcom/uqm/crashsight/service/b;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;IIIZ)V
    .locals 9

    const-class v0, Lcom/uqm/crashsight/service/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/service/b;->b:Lcom/uqm/crashsight/service/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/service/b;

    invoke-direct {v1}, Lcom/uqm/crashsight/service/b;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/service/b;->b:Lcom/uqm/crashsight/service/b;

    new-instance v8, Lcom/uqm/crashsight/service/a;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/uqm/crashsight/service/a;-><init>(Landroid/content/Context;IIIZ)V

    iput-object v8, v1, Lcom/uqm/crashsight/service/b;->a:Lcom/uqm/crashsight/service/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/service/b;->a:Lcom/uqm/crashsight/service/a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "CrashSight_Routine"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "routine start failed, routine is null"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
