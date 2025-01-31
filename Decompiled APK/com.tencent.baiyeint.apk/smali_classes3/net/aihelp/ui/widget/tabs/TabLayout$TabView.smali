.class public final Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->defaultMaxLines:I

    invoke-direct {p0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    iget p2, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingStart:I

    iget v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingTop:I

    iget v1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingEnd:I

    iget v2, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setGravity(I)V

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setOrientation(I)V

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setClickable(Z)V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$800(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;)I
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p2, p3

    return p2
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    move v2, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v7, v1, v3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v6, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_2
    move v6, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v2, v5

    return v2
.end method

.method private inflateAndAddDefaultIconView()V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "aihelp_design_layout_tab_icon"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "aihelp_design_layout_tab_text"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a1

    aput v7, v6, v0

    aput-object v6, v4, v0

    new-array v6, v0, [I

    aput-object v6, v4, v5

    new-array v6, v3, [I

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "aihelp_color_main"

    invoke-static {v8}, Lnet/aihelp/utils/ResResolver;->getColorId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v8}, Lnet/aihelp/utils/ResResolver;->getColorId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v4, v4, Lnet/aihelp/ui/widget/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_2

    move-object p1, v1

    :cond_2
    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v4, v4, Lnet/aihelp/ui/widget/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-direct {v0, v3, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    goto :goto_2

    :cond_4
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    :cond_5
    :goto_2
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->invalidate()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-static {v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$400(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v3, v3, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_8

    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_9

    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_6

    :cond_8
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_9

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_9
    :goto_6
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_7

    :cond_a
    move-object p1, v1

    :goto_7
    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    move-object v1, p1

    :goto_8
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->invalidate()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public getTab()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->isSelected()Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    :cond_0
    const-string v0, "Tab"

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextSize:F

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->defaultMaxLines:I

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextMultiLineSize:F

    :cond_3
    :goto_0
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    iget-object v5, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    :cond_4
    iget-object v5, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v5, v5, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v2, v6, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->select()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->sendAccessibilityEvent(I)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method setTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->tab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    :cond_2
    iput-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->defaultMaxLines:I

    :cond_5
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    :cond_7
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    :goto_1
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v2, :cond_d

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_a
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_b

    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->defaultMaxLines:I

    :cond_b
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v1, v1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_f
    :goto_2
    if-eqz v0, :cond_10

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setOrientation(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method
