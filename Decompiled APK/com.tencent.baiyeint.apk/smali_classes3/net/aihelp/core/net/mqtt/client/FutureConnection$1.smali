.class Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;
.super Ljava/lang/Object;
.source "FutureConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/ExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/FutureConnection;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$002(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$002(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$300(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$300(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual {v1, p1}, Lnet/aihelp/core/net/mqtt/client/Promise;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$002(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$2;

    invoke-direct {v0, p0, p3}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$2;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 5
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

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)J

    move-result-wide v1

    invoke-virtual {p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$102(Lnet/aihelp/core/net/mqtt/client/FutureConnection;J)J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$200(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$202(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->suspend()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/Message;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v2

    new-instance v3, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;

    invoke-direct {v3, p0, p3, p2}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;Lnet/aihelp/core/net/mqtt/client/Callback;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    invoke-direct {v1, v2, p1, p2, v3}, Lnet/aihelp/core/net/mqtt/client/Message;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->deliverMessage(Lnet/aihelp/core/net/mqtt/client/Message;)V

    return-void
.end method
