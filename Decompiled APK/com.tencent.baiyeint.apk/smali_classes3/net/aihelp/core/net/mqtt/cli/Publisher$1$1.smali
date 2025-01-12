.class Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$1;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$1;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;->this$1:Lnet/aihelp/core/net/mqtt/cli/Publisher$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$1$1;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
