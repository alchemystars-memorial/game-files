.class public final Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 1

    check-cast p1, Lq/c;

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lq/c;->g:Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
