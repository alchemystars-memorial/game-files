.class public final Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lp/n$a;->a:Lp/n;

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$d;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$d;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;)V

    invoke-virtual {p1, v0}, Lp/n;->b(Lg/s;)V

    const-string p1, "APNetDetectService"

    const-string/jumbo v0, "waiting for finish"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string v0, "sdk.oversea.ip.detect.error"

    const-string v1, "error"

    invoke-virtual {p1, v0, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lp/n$a;->a:Lp/n;

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;)V

    invoke-virtual {p1, v0}, Lp/n;->b(Lg/s;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
