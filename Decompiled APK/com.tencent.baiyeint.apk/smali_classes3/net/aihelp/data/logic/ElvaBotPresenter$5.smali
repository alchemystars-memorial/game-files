.class Lnet/aihelp/data/logic/ElvaBotPresenter$5;
.super Ljava/lang/Object;
.source "ElvaBotPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/ElvaBotPresenter;->showNetworkSlowDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

.field final synthetic val$isPing:Z

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$uploadLogDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;ZLnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$result:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$isPing:Z

    iput-object p4, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$uploadLogDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v1, 0x3e9

    const/16 v2, 0x3ef

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$result:Ljava/lang/String;

    iget-boolean v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$isPing:Z

    if-eqz v1, :cond_0

    const-string v1, "network,ping"

    goto :goto_0

    :cond_0
    const-string v1, "network,traceroute"

    :goto_0
    invoke-static {p1, v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$400(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-boolean v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$isPing:Z

    if-eqz v0, :cond_1

    const-string v0, "ping"

    goto :goto_1

    :cond_1
    const-string v0, "traceroute"

    :goto_1
    invoke-static {p1, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$500(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$5;->val$uploadLogDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    return-void
.end method
