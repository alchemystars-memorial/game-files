.class public Lcom/tencent/baiye/OBBStateHandler;
.super Landroid/os/storage/OnObbStateChangeListener;
.source "OBBStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;
    }
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/storage/OnObbStateChangeListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onObbStateChange(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    const-string v1, "main."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Main"

    goto :goto_0

    :cond_0
    const-string v1, "patch."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Patch"

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    if-eq p2, v3, :cond_2

    const/16 v5, 0x18

    if-ne p2, v5, :cond_3

    :cond_2
    const-string v5, "h3d"

    const-string v6, "%s OBB mounted successfully: path-%s state-%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-ne p2, v4, :cond_4

    const-string v5, "h3d"

    const-string v6, "%s OBB unmounted successfully: path-%s state-%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v5, "h3d"

    const-string v6, "%s OBB mounted/unmounted unsuccessfully: path-%s state-%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
