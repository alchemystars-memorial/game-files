.class public Lnet/aihelp/core/net/mqtt/client/NoopCallback;
.super Ljava/lang/Object;
.source "NoopCallback.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final next:Lnet/aihelp/core/net/mqtt/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/NoopCallback;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/NoopCallback;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/NoopCallback;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
