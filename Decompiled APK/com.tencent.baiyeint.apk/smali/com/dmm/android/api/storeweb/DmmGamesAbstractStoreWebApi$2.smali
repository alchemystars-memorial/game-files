.class Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;
.super Ljava/lang/Object;
.source "DmmGamesAbstractStoreWebApi.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->connectAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;->this$0:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;->this$0:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    invoke-static {v0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->access$000(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;->this$0:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    invoke-static {v0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->access$000(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;->this$0:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    invoke-interface {v0, v1, p1}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;->onFailure(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;Lcom/dmm/games/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method
