.class Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;
.super Ljava/lang/Object;
.source "BlockingConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->receive(JLjava/util/concurrent/TimeUnit;)Lnet/aihelp/core/net/mqtt/client/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Lnet/aihelp/core/net/mqtt/client/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

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

    check-cast p1, Lnet/aihelp/core/net/mqtt/client/Message;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;->onSuccess(Lnet/aihelp/core/net/mqtt/client/Message;)V

    return-void
.end method

.method public onSuccess(Lnet/aihelp/core/net/mqtt/client/Message;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;->this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->access$000(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;)Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->putBackMessage(Lnet/aihelp/core/net/mqtt/client/Message;)V

    return-void
.end method
