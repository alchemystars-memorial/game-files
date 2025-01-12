.class Lnet/aihelp/core/net/mqtt/cli/Publisher$4;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Publisher;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sent:J

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

.field final synthetic val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->sent:J

    return-void
.end method

.method static synthetic access$700(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;)J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->sent:J

    return-wide v0
.end method

.method static synthetic access$708(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;)J
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->sent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->sent:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$200(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$300(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->sent:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/lit8 v0, v0, 0xf

    invoke-direct {v3, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;-><init>(I)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$200(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$400(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$500(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->this$0:Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->access$600(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z

    move-result v5

    new-instance v6, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;

    invoke-direct {v6, p0, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher$4;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
