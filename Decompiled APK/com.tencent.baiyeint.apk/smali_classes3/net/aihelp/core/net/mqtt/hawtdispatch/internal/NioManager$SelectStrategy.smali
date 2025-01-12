.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;
.super Ljava/lang/Object;
.source "NioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "entered blocking select"

    invoke-virtual {p1, v0, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)Ljava/nio/channels/Selector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    move-result p1

    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "exited blocking select"

    invoke-virtual {p2, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "entered blocking select with timeout"

    invoke-virtual {v0, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "exited blocking select with timeout"

    invoke-virtual {p2, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p1
.end method
