.class public Lnet/aihelp/ui/widget/AIHelpMsgView;
.super Landroid/widget/RelativeLayout;
.source "AIHelpMsgView.java"


# instance fields
.field private ivRight:Landroidx/appcompat/widget/AppCompatImageView;

.field private unreadDot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpMsgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpMsgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_msg_view"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "aihelp_iv_right"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpMsgView;->ivRight:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "aihelp_v_unread_status"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpMsgView;->unreadDot:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected dip2px(Landroid/content/Context;D)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p1

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    double-to-int p1, p2

    return p1
.end method

.method public updateImageResource(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpMsgView;->unreadDot:Landroid/view/View;

    const/16 v1, 0x3ef

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpMsgView;->ivRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpMsgView;->ivRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
