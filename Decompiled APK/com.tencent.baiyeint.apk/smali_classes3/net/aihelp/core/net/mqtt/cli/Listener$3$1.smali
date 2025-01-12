.class Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Listener$3;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/cli/Listener$3;

.field final synthetic val$ta:[Lnet/aihelp/core/net/mqtt/client/Topic;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Listener$3;[Lnet/aihelp/core/net/mqtt/client/Topic;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Listener$3;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->val$ta:[Lnet/aihelp/core/net/mqtt/client/Topic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribe failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Listener$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

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

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->onSuccess([B)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Listener$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribed to Topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;->val$ta:[Lnet/aihelp/core/net/mqtt/client/Topic;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/Topic;->name()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with QoS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v2

    aget-byte v3, p1, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
