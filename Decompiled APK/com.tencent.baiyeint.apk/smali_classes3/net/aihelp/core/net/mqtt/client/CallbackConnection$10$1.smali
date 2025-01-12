.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1900(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;->val$stop:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
