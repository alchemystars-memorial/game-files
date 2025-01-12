.class Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "ServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;

.field final synthetic val$state:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2$1;->val$state:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2$1;->val$state:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;->done()V

    return-void
.end method
