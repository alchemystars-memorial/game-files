.class Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "FutureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/FutureConnection;->connect()Lnet/aihelp/core/net/mqtt/client/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

.field final synthetic val$future:Lnet/aihelp/core/net/mqtt/client/Promise;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
