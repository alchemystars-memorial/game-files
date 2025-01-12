.class Lnet/aihelp/ui/cs/ElvaBotFragment$6;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->onTextChange(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

.field final synthetic val$apiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Ljava/lang/CharSequence;Lnet/aihelp/core/util/concurrent/ApiExecutor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->val$s:Ljava/lang/CharSequence;

    iput-object p3, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->val$apiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1200(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->val$s:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->getMatchedFaqListForAlert(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->val$apiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    new-instance v2, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment$6;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
