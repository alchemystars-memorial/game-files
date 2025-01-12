.class Lnet/aihelp/data/logic/FaqPresenter$2$1;
.super Ljava/lang/Object;
.source "FaqPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter$2;->onAsyncReqSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/data/logic/FaqPresenter$2;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter$2;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$2$1;->this$1:Lnet/aihelp/data/logic/FaqPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter$2$1;->this$1:Lnet/aihelp/data/logic/FaqPresenter$2;

    iget-object v0, v0, Lnet/aihelp/data/logic/FaqPresenter$2;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter$2$1;->this$1:Lnet/aihelp/data/logic/FaqPresenter$2;

    iget-object v1, v1, Lnet/aihelp/data/logic/FaqPresenter$2;->val$sectionOrFaqId:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/aihelp/data/logic/FaqPresenter;->access$000(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V

    return-void
.end method
