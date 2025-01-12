.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/ExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$original:Lnet/aihelp/core/net/mqtt/client/Listener;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Listener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Listener;->onConnected()V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Listener;->onDisconnected()V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Listener;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/client/Listener;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;->val$original:Lnet/aihelp/core/net/mqtt/client/Listener;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8$1;

    invoke-direct {v1, p0, p3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-interface {v0, p1, p2, v1}, Lnet/aihelp/core/net/mqtt/client/Listener;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
