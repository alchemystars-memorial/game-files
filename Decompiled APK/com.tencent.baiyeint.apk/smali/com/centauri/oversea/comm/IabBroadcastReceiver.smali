.class public Lcom/centauri/oversea/comm/IabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/IabBroadcastReceiver;->a:Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/centauri/oversea/comm/IabBroadcastReceiver;->a:Lcom/centauri/oversea/comm/IabBroadcastReceiver$a;

    if-eqz p1, :cond_4

    check-cast p1, Lk/b;

    const-string p2, "APPayManager"

    const-string v0, "Receiver received broadcast."

    invoke-static {p2, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lk/b;->a:Lk/c;

    iget-object p2, p2, Lk/c;->b:Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object p2, p1, Lk/b;->a:Lk/c;

    iget-object p2, p2, Lk/c;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lk/b;->a:Lk/c;

    iget-object v0, p2, Lk/c;->d:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p2, Lk/c;->d:Ljava/util/LinkedList;

    :cond_2
    iget-object p2, p1, Lk/b;->a:Lk/c;

    iget-object p2, p2, Lk/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/centauri/oversea/data/RestoreItem;

    iget-object v2, p1, Lk/b;->a:Lk/c;

    invoke-virtual {v2}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createRestoreChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/CTIBaseRestore;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/centauri/oversea/data/RestoreItem;-><init>(Ljava/lang/String;Lcom/centauri/oversea/business/CTIBaseRestore;)V

    iget-object v0, p1, Lk/b;->a:Lk/c;

    iget-object v0, v0, Lk/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lk/b;->a:Lk/c;

    invoke-virtual {p1}, Lk/c;->f()V

    :cond_4
    return-void
.end method
