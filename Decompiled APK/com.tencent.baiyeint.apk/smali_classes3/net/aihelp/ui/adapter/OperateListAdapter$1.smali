.class Lnet/aihelp/ui/adapter/OperateListAdapter$1;
.super Ljava/lang/Object;
.source "OperateListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/OperateListAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/op/OperateArticle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/OperateListAdapter;

.field final synthetic val$faq:Lnet/aihelp/data/model/op/OperateArticle;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/OperateListAdapter;Lnet/aihelp/data/model/op/OperateArticle;I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/OperateListAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$faq:Lnet/aihelp/data/model/op/OperateArticle;

    iput p3, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/OperateListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/OperateListAdapter;->access$000(Lnet/aihelp/ui/adapter/OperateListAdapter;)Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$faq:Lnet/aihelp/data/model/op/OperateArticle;

    invoke-virtual {v0}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/OperateHelper;->isArticleUnread(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$faq:Lnet/aihelp/data/model/op/OperateArticle;

    invoke-virtual {v0}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/OperateHelper;->updateOperateFaqUnreadStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/OperateListAdapter;

    iget v0, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/OperateListAdapter;->notifyItemChanged(I)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/OperateListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/OperateListAdapter;->access$000(Lnet/aihelp/ui/adapter/OperateListAdapter;)Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;->val$faq:Lnet/aihelp/data/model/op/OperateArticle;

    invoke-virtual {v0}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;->onOperationFaqClicked(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
