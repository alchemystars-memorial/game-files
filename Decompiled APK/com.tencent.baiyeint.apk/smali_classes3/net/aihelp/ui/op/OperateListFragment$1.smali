.class Lnet/aihelp/ui/op/OperateListFragment$1;
.super Ljava/lang/Object;
.source "OperateListFragment.java"

# interfaces
.implements Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/op/OperateListFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/op/OperateListFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/op/OperateListFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationFaqClicked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/op/OperateListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "faq_main_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-static {p1}, Lnet/aihelp/ui/op/OperateListFragment;->access$000(Lnet/aihelp/ui/op/OperateListFragment;)Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-static {p1}, Lnet/aihelp/ui/op/OperateListFragment;->access$000(Lnet/aihelp/ui/op/OperateListFragment;)Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToOperateContent(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
