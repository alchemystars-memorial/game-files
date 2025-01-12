.class final Lnet/aihelp/core/net/mqtt/client/MQTT$1;
.super Ljava/lang/Object;
.source "MQTT.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/MQTT;->getBlockingThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/MQTT;->access$000()J

    move-result-wide v4

    const/4 v1, 0x0

    const-string v3, "MQTT Task"

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v6
.end method
