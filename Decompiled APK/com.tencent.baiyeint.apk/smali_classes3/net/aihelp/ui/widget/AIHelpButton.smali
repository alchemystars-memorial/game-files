.class public Lnet/aihelp/ui/widget/AIHelpButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "AIHelpButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42a80000    # 84.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpButton;->setMinWidth(I)V

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpButton;->setMinHeight(I)V

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpButton;->setTextColor(I)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpButton;->setGravity(I)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p3, v1, p2, p1}, Lnet/aihelp/ui/widget/AIHelpButton;->setPadding(IIII)V

    return-void
.end method
