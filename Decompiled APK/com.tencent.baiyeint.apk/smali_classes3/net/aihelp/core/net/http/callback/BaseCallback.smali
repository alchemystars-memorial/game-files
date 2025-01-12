.class public abstract Lnet/aihelp/core/net/http/callback/BaseCallback;
.super Ljava/lang/Object;
.source "BaseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private paramsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestUrl:Ljava/lang/String;

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->type:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReqCallBack must have a generic type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getParamsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->paramsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public abstract onAsyncFailure(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onAsyncReqSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onFailure(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onReqSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setParamsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->paramsMap:Ljava/util/HashMap;

    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/BaseCallback;->type:Ljava/lang/reflect/Type;

    return-void
.end method
