.class public Lcom/dmm/android/api/mobile/DmmApiRequest;
.super Ljava/lang/Object;
.source "DmmApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;
    }
.end annotation


# static fields
.field protected static final EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# instance fields
.field private mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/api/mobile/DmmApiRequest$3;

    invoke-direct {v0}, Lcom/dmm/android/api/mobile/DmmApiRequest$3;-><init>()V

    sput-object v0, Lcom/dmm/android/api/mobile/DmmApiRequest;->EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest;->mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    if-nez p2, :cond_0

    sget-object p2, Lcom/dmm/android/api/mobile/DmmApiRequest;->EMPTY_CALLBACK:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    :cond_0
    new-instance v4, Lcom/dmm/android/api/mobile/DmmApiRequest$1;

    invoke-direct {v4, p0, p2}, Lcom/dmm/android/api/mobile/DmmApiRequest$1;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequest;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance v5, Lcom/dmm/android/api/mobile/DmmApiRequest$2;

    invoke-direct {v5, p0, p2}, Lcom/dmm/android/api/mobile/DmmApiRequest$2;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequest;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance p2, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getMethod()I

    move-result v1

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;->getJson()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/dmm/android/api/mobile/DmmApiRequest;->mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    invoke-virtual {p2, p1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/dmm/games/android/volley/Request;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/mobile/DmmApiRequest;)Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest;->mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    return-object p0
.end method


# virtual methods
.method public getRequest()Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest;->mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    return-object v0
.end method

.method public setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/DmmApiRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiRequest;->mRequest:Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    invoke-virtual {v0, p1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/games/android/volley/Request;

    return-object p0
.end method
