.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleSessionFailure(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onDisconnected()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnect()V

    return-void
.end method
