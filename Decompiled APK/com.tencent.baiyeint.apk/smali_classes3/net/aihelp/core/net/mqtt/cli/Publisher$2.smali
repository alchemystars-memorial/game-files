.class Lnet/aihelp/core/net/mqtt/cli/Publisher$2;
.super Ljava/lang/Object;
.source "Publisher.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Listener;


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


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected"

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$100(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnected"

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$100(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$100(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
