.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->toReceiver(Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;->val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;->onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method public onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBACK;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;->val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId()S

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBACK;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v4}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
