.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lo/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIProxyActivity;->showSandboxDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method
