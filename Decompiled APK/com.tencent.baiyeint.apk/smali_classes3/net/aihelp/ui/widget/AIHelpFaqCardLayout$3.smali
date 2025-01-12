.class Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AIHelpFaqCardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getGridLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;

.field final synthetic val$spanCount:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;->this$0:Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;

    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;->val$spanCount:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;->this$0:Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->access$000(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;->val$spanCount:I

    :cond_0
    return v1
.end method
