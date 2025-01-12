.class public final Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 0

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 0

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 0

    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$b;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
