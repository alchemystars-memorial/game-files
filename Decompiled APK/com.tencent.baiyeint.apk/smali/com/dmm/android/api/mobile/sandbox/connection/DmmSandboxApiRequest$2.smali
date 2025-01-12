.class Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;
.super Ljava/lang/Object;
.source "DmmSandboxApiRequest.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

.field final synthetic val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    iput-object p2, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 5

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/dmm/games/android/volley/NetworkResponse;->data:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    invoke-static {v1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->access$000(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;)Lcom/dmm/games/android/volley/toolbox/StringRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getResponseClass()Ljava/lang/Class;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getSandboxResponseClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->parse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-interface {v1, v0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;->onSuccess(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;->onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;->onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V

    :cond_3
    :goto_1
    return-void
.end method
