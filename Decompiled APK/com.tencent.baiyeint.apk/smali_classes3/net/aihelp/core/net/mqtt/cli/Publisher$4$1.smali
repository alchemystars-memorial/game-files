.class Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;
.super Ljava/lang/Object;
.source "Publisher.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->run()V
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
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

.field final synthetic val$publish:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->val$publish:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publish failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$100(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 4

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->access$708(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;)J

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent message #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->access$700(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$800(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->access$700(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;)J

    move-result-wide v0

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$900(Lnet/aihelp/core/net/mqtt/cli/Publisher;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$1000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Sleeping"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$1000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->val$publish:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {p1, v0, v1, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->val$publish:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    :goto_0
    return-void
.end method
