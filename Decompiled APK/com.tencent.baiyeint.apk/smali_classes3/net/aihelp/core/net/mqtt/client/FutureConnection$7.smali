.class Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "FutureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/FutureConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)Lnet/aihelp/core/net/mqtt/client/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

.field final synthetic val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

.field final synthetic val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

.field final synthetic val$qos:Lnet/aihelp/core/net/mqtt/client/QoS;

.field final synthetic val$retain:Z

.field final synthetic val$topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Promise;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iput-object p4, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$qos:Lnet/aihelp/core/net/mqtt/client/QoS;

    iput-boolean p5, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$retain:Z

    iput-object p6, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$qos:Lnet/aihelp/core/net/mqtt/client/QoS;

    iget-boolean v5, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$retain:Z

    iget-object v6, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
