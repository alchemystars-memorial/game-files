.class Lnet/aihelp/core/net/mqtt/cli/Listener$2;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Listener;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Listener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected"

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnected"

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$200(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$300(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$300(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->writeTo(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$300(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->writeTo(Ljava/io/OutputStream;)V

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Listener$2;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
