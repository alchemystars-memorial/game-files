.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "NioDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->register_on(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->channel:Ljava/nio/channels/SelectableChannel;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget v3, v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->interestOps:I

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->register(Ljava/nio/channels/SelectableChannel;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

    move-result-object v1

    iget-object v2, v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;

    invoke-direct {v3, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "could not register with selector"

    invoke-virtual {v2, v1, v4, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Registered"

    invoke-virtual {v1, v2, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
