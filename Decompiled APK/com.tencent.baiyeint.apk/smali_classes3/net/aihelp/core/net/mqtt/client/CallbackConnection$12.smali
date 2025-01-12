.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;
.super Lnet/aihelp/core/net/mqtt/client/ProxyCallback;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/mqtt/client/ProxyCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$topics:[Lnet/aihelp/core/net/mqtt/client/Topic;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;[Lnet/aihelp/core/net/mqtt/client/Topic;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->val$topics:[Lnet/aihelp/core/net/mqtt/client/Topic;

    invoke-direct {p0, p2}, Lnet/aihelp/core/net/mqtt/client/ProxyCallback;-><init>(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->onSuccess([B)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->val$topics:[Lnet/aihelp/core/net/mqtt/client/Topic;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/client/Topic;->name()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v5

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/client/Topic;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
