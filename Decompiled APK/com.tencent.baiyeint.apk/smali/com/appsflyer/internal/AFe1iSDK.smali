.class public final Lcom/appsflyer/internal/AFe1iSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final valueOf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFe1hSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized AFInAppEventType(Lcom/appsflyer/internal/AFe1hSDK;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized AFInAppEventType()[Lcom/appsflyer/internal/AFe1hSDK;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1hSDK;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1hSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
