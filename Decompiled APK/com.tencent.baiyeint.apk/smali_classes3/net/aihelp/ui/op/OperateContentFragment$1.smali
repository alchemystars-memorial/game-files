.class Lnet/aihelp/ui/op/OperateContentFragment$1;
.super Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;
.source "OperateContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/op/OperateContentFragment;->refreshOperateContent(Lnet/aihelp/data/model/op/OperateArticle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/op/OperateContentFragment;

.field final synthetic val$article:Lnet/aihelp/data/model/op/OperateArticle;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/op/OperateContentFragment;Lnet/aihelp/data/model/op/OperateArticle;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment$1;->this$0:Lnet/aihelp/ui/op/OperateContentFragment;

    iput-object p2, p0, Lnet/aihelp/ui/op/OperateContentFragment$1;->val$article:Lnet/aihelp/data/model/op/OperateArticle;

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluated(Z)V
    .locals 1

    sget-object p1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment$1;->val$article:Lnet/aihelp/data/model/op/OperateArticle;

    invoke-virtual {v0}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/OperateHelper;->afterArticleEvaluated(Ljava/lang/String;)V

    return-void
.end method
