.class public Lnet/aihelp/ui/widget/snackbar/Snackbar;
.super Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/snackbar/Snackbar$SnackbarLayout;,
        Lnet/aihelp/ui/widget/snackbar/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar<",
        "Lnet/aihelp/ui/widget/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private callback:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback<",
            "Lnet/aihelp/ui/widget/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object p0, v0

    :cond_4
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method private static hasSnackbarContentStyleAttrs(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static make(Landroid/view/View;II)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 3

    invoke-static {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "aihelp_design_layout_snackbar_include"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    new-instance v1, Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-direct {v1, p0, v0, v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;)V

    invoke-virtual {v1, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {v1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setDuration(I)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->dismiss()V

    return-void
.end method

.method public getDuration()I
    .locals 4

    invoke-super {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->hasAction:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    return v0

    :cond_2
    iget-boolean v2, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->hasAction:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public isShown()Z
    .locals 1

    invoke-super {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->hasAction:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;

    invoke-direct {p1, p0, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;-><init>(Lnet/aihelp/ui/widget/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->hasAction:Z

    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setBackgroundTint(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setBackgroundTintList(Landroid/content/res/ColorStateList;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public setCallback(Lnet/aihelp/ui/widget/snackbar/Snackbar$Callback;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->callback:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->removeCallback(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->addCallback(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    :cond_1
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->callback:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;

    return-object p0
.end method

.method public setMaxInlineActionWidth(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    return-object p0
.end method

.method public setText(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->show()V

    return-void
.end method
