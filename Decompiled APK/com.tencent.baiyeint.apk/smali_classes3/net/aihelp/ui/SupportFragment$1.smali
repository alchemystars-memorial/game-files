.class Lnet/aihelp/ui/SupportFragment$1;
.super Ljava/lang/Object;
.source "SupportFragment.java"

# interfaces
.implements Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/SupportFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/SupportFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/SupportFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment$1;->this$0:Lnet/aihelp/ui/SupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged()V
    .locals 0

    return-void
.end method

.method public onInputCanceled()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment$1;->this$0:Lnet/aihelp/ui/SupportFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/SupportFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment$1;->this$0:Lnet/aihelp/ui/SupportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/ui/SupportFragment;->access$000(Lnet/aihelp/ui/SupportFragment;Z)V

    return-void
.end method
