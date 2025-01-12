.class Lnet/aihelp/core/net/mqtt/client/Message$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/Message;->ack(Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field onCompleteCopy:Lnet/aihelp/core/net/mqtt/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/Message;

.field final synthetic val$onAcked:Lnet/aihelp/core/net/mqtt/client/Callback;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/Message;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Message$1;->this$0:Lnet/aihelp/core/net/mqtt/client/Message;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/Message$1;->val$onAcked:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/Message;->access$000(Lnet/aihelp/core/net/mqtt/client/Message;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Message$1;->onCompleteCopy:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Message$1;->onCompleteCopy:Lnet/aihelp/core/net/mqtt/client/Callback;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/Message$1;->val$onAcked:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
