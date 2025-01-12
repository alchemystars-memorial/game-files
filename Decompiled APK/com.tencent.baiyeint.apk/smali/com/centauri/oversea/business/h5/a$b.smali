.class public final Lcom/centauri/oversea/business/h5/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/a$b;->a:Lcom/centauri/oversea/business/h5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "AIDLHandler"

    const-string v1, "binderDied."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a$b;->a:Lcom/centauri/oversea/business/h5/a;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/a$b;->a:Lcom/centauri/oversea/business/h5/a;

    iget-object v1, v1, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a$b;->a:Lcom/centauri/oversea/business/h5/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/a;->a()V

    return-void
.end method
