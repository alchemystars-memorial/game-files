.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;
.super Lnet/aihelp/core/net/mqtt/client/ProxyCallback;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->val$topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-direct {p0, p2}, Lnet/aihelp/core/net/mqtt/client/ProxyCallback;-><init>(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->val$topics:[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
