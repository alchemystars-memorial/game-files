.class public Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private labelVisibilityMode:I

.field public parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->position:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->labelVisibilityMode:I

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->position:I

    return v0
.end method

.method public getTabLabelVisibility()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->labelVisibilityMode:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a aihelp_tablayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->position:I

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a aihelp_tablayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a aihelp_tablayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a aihelp_tablayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 2

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViews(Z)V

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->position:I

    return-void
.end method

.method public setTabLabelVisibility(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 2

    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->labelVisibilityMode:I

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget p1, p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViews(Z)V

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a aihelp_tablayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
