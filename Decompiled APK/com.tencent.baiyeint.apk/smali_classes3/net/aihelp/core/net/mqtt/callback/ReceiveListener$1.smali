.class Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;
.super Ljava/lang/Object;
.source "ReceiveListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;

.field final synthetic val$finalResponse:Ljava/lang/String;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->this$0:Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->val$finalResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->this$0:Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->access$000(Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    move-result-object v0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getLoginType()I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->val$topic:Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;->val$finalResponse:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttResponse(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
