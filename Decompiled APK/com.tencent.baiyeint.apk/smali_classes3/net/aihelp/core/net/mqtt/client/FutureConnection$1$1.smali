.class Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;
.super Ljava/lang/Object;
.source "FutureConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
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
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

.field final synthetic val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

.field final synthetic val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;Lnet/aihelp/core/net/mqtt/client/Callback;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processed()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->assertExecuting()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)J

    move-result-wide v1

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$102(Lnet/aihelp/core/net/mqtt/client/FutureConnection;J)J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$200(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$202(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->this$1:Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->resume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->processed()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method public onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->processed()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1$1;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
