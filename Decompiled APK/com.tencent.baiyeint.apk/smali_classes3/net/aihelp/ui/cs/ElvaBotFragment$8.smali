.class Lnet/aihelp/ui/cs/ElvaBotFragment$8;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$8;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmResolve(Z)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$8;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1402(Lnet/aihelp/ui/cs/ElvaBotFragment;I)I

    const/4 p1, 0x0

    sput-boolean p1, Lnet/aihelp/common/CustomConfig$CustomerService;->isBotResolveQueryEnable:Z

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$8;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$8;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method
