.class Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AIHelpChatRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-gez p3, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->access$000(Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-static {p1, p2}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method
