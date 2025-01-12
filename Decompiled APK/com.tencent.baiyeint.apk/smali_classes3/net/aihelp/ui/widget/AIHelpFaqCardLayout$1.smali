.class Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "AIHelpFaqCardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getLinearLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    return v0
.end method
