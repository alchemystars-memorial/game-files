.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "NioDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->onResume()V
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;

    if-eqz v0, :cond_1

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->interestOps:I

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->fire(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    :goto_1
    return-void
.end method
