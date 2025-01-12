.class Lnet/aihelp/ui/cs/BaseCSFragment$2;
.super Ljava/lang/Object;
.source "BaseCSFragment.java"

# interfaces
.implements Lnet/aihelp/utils/KeyboardChangeHelper$OnKeyboardShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/BaseCSFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

.field final synthetic val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/BaseCSFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHide()V
    .locals 0

    return-void
.end method

.method public onKeyboardShow()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment$2;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->access$100(Lnet/aihelp/ui/cs/BaseCSFragment;)V

    return-void
.end method
