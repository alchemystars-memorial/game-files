.class Lnet/aihelp/ui/helper/EvaluateNewHelper$3;
.super Ljava/lang/Object;
.source "EvaluateNewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/EvaluateNewHelper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$3;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$3;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
