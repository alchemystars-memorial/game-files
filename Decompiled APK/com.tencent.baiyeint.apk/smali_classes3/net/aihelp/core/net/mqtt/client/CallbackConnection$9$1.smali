.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onDisconnected()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
