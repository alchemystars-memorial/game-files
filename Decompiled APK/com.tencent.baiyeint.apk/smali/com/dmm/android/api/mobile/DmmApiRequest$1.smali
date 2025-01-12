.class Lcom/dmm/android/api/mobile/DmmApiRequest$1;
.super Ljava/lang/Object;
.source "DmmApiRequest.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/mobile/DmmApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dmm/games/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/mobile/DmmApiRequest;

.field final synthetic val$fCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/mobile/DmmApiRequest;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->this$0:Lcom/dmm/android/api/mobile/DmmApiRequest;

    iput-object p2, p0, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->this$0:Lcom/dmm/android/api/mobile/DmmApiRequest;

    invoke-static {v0}, Lcom/dmm/android/api/mobile/DmmApiRequest;->access$000(Lcom/dmm/android/api/mobile/DmmApiRequest;)Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;->getTag()Ljava/lang/Object;

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

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getResponseClass()Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getResponseClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser;->parse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/dmm/android/api/mobile/DmmApiResponse;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;->onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest$1;->val$fCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-interface {v0, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;->onParserError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
