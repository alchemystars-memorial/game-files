.class Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;
.super Ljava/lang/Object;
.source "DmmSandboxApiRequest.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dmm/games/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

.field final synthetic val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    iput-object p2, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    invoke-static {v0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->access$000(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;)Lcom/dmm/games/android/volley/toolbox/StringRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getSandboxResponseClass()Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getSandboxResponseClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->parse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;->onSuccess(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;->onParserError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
