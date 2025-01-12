.class Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;
.super Lcom/dmm/games/android/volley/toolbox/StringRequest;
.source "DmmSandboxApiRequest.java"


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

.field final synthetic val$helper:Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;->this$0:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    iput-object p6, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;->val$helper:Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/dmm/games/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;->val$helper:Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getPostParameter()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
