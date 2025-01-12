.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "NioDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

.field final synthetic val$newQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;->val$newQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;->val$newQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void
.end method
