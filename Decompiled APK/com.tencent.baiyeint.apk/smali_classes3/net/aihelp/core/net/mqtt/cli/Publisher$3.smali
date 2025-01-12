.class Lnet/aihelp/core/net/mqtt/cli/Publisher$3;
.super Ljava/lang/Object;
.source "Publisher.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Publisher;->execute()V
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
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$3;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

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

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
