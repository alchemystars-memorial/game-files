.class Lnet/aihelp/ui/helper/EvaluateNewHelper$1;
.super Ljava/lang/Object;
.source "EvaluateNewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/EvaluateNewHelper;->askAboutIssueResolvedStatus(Landroid/content/Context;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field final synthetic val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;

.field final synthetic val$resolveStatusListener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/EvaluateNewHelper;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iput-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    iput-object p4, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;

    iput-object p5, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$resolveStatusListener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iget-object v1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    iget-object v3, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$listener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;

    iget-object v4, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$1;->val$resolveStatusListener:Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$000(Lnet/aihelp/ui/helper/EvaluateNewHelper;Landroid/content/Context;Landroid/app/Dialog;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;Z)V

    return-void
.end method
