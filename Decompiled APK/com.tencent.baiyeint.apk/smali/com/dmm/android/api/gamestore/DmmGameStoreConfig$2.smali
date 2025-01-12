.class Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;
.super Ljava/lang/Object;
.source "DmmGameStoreConfig.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->connectAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;->this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;->this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;->this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    invoke-static {v1}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->access$000(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;->this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->access$002(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;->this$0:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    invoke-interface {v1, v0, p1}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;->onFailure(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/games/android/volley/VolleyError;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
