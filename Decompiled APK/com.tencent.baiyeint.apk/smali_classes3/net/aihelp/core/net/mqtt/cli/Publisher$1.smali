.class Lnet/aihelp/core/net/mqtt/cli/Publisher$1;
.super Ljava/lang/Thread;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Publisher;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

.field final synthetic val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MQTT client shutdown"

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$1;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
