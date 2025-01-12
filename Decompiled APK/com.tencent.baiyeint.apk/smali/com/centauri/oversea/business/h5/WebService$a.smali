.class public final Lcom/centauri/oversea/business/h5/WebService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lk/c$b;->a:Lk/c;

    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4, p1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lk/c;->b(ILcom/centauri/oversea/business/pay/CTIResponse;)V

    :goto_0
    return-void
.end method
