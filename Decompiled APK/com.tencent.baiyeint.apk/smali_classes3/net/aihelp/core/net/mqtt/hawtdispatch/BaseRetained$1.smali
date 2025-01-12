.class Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;
.super Ljava/lang/Exception;
.source "BaseRetained.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->trace(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$counter:I


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->val$action:Ljava/lang/String;

    iput p3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->val$counter:I

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/BaseRetained$1;->val$counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
