.class Lnet/aihelp/data/logic/FaqPresenter$3$1;
.super Ljava/lang/Object;
.source "FaqPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/data/logic/FaqPresenter$3;

.field final synthetic val$matchedFaqList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter$3;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$3$1;->this$1:Lnet/aihelp/data/logic/FaqPresenter$3;

    iput-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter$3$1;->val$matchedFaqList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter$3$1;->this$1:Lnet/aihelp/data/logic/FaqPresenter$3;

    iget-object v0, v0, Lnet/aihelp/data/logic/FaqPresenter$3;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/FaqPresenter;->access$400(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter$3$1;->val$matchedFaqList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/faq/BaseFaqFragment;->refreshList(Ljava/util/List;)V

    return-void
.end method
