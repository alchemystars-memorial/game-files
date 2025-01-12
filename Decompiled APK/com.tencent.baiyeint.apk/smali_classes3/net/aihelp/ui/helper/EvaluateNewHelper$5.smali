.class Lnet/aihelp/ui/helper/EvaluateNewHelper$5;
.super Ljava/lang/Object;
.source "EvaluateNewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/EvaluateNewHelper;->showRateSupport(Landroid/content/Context;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/EvaluateNewHelper;Landroid/content/Context;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iput-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$200(Lnet/aihelp/ui/helper/EvaluateNewHelper;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$400(Lnet/aihelp/ui/helper/EvaluateNewHelper;Landroid/content/Context;Z)V

    iget-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    invoke-static {p1}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$500(Lnet/aihelp/ui/helper/EvaluateNewHelper;)Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    iget-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$5;->val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;

    invoke-static {p1, v0}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$600(Lnet/aihelp/ui/helper/EvaluateNewHelper;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;)V

    :cond_1
    return-void
.end method
