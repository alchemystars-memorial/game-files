.class public Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AIHelpChatRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;)Z
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->isKeyboardShown()Z

    move-result p0

    return p0
.end method

.method private isKeyboardShown()Z
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView$1;-><init>(Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
