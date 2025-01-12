.class Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;
.super Ljava/lang/Object;
.source "ConnectCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->onFailure(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

.field final synthetic val$value:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;->this$0:Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;->val$value:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;->this$0:Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->access$000(Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;->this$0:Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->access$000(Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;->val$value:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
