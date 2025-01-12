.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$stop:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->val$stop:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->val$stop:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1902(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Z)Z

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;)V

    invoke-static {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2502(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->flush()V

    :cond_0
    return-void
.end method
