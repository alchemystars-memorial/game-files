.class Lnet/aihelp/core/net/mqtt/cli/Listener$3;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Listener;->execute()V
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
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

.field final synthetic val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Listener;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

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

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$400(Lnet/aihelp/core/net/mqtt/cli/Listener;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$400(Lnet/aihelp/core/net/mqtt/cli/Listener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/client/Topic;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/aihelp/core/net/mqtt/client/Topic;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$3;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Listener$3$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Listener$3;[Lnet/aihelp/core/net/mqtt/client/Topic;)V

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
