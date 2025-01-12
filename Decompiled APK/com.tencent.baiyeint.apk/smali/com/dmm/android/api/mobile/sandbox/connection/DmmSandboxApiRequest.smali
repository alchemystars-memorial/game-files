.class public Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;
.super Ljava/lang/Object;
.source "DmmSandboxApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;
    }
.end annotation


# static fields
.field protected static final EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;


# instance fields
.field private mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$4;

    invoke-direct {v0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$4;-><init>()V

    sput-object v0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;

    if-nez p2, :cond_0

    sget-object p2, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;

    :cond_0
    new-instance v4, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;

    invoke-direct {v4, p0, p2}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$1;-><init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V

    new-instance v5, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;

    invoke-direct {v5, p0, p2}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$2;-><init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V

    new-instance p2, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getMethod()I

    move-result v2

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$3;-><init>(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;)V

    iput-object p2, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;

    invoke-virtual {p2, p1}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/dmm/games/android/volley/Request;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;)Lcom/dmm/games/android/volley/toolbox/StringRequest;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;

    return-object p0
.end method


# virtual methods
.method public getRequest()Lcom/dmm/games/android/volley/toolbox/StringRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;

    return-object v0
.end method

.method public setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->mRequest:Lcom/dmm/games/android/volley/toolbox/StringRequest;

    invoke-virtual {v0, p1}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/games/android/volley/Request;

    return-object p0
.end method
