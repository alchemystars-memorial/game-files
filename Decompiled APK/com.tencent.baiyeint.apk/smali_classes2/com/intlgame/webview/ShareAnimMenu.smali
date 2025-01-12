.class public Lcom/intlgame/webview/ShareAnimMenu;
.super Ljava/lang/Object;
.source "ShareAnimMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;
    }
.end annotation


# instance fields
.field private contentContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private decorView:Landroid/view/ViewGroup;

.field private isDismissed:Z

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    sget v1, Lcom/intlgame/webview/R$layout;->intl_webview_share_container:I

    iget-object v2, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v1, Lcom/intlgame/webview/R$id;->share_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/webview/ShareAnimMenu;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/webview/ShareAnimMenu;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$202(Lcom/intlgame/webview/ShareAnimMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intlgame/webview/ShareAnimMenu;->isDismissed:Z

    return p1
.end method

.method private isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    sget v1, Lcom/intlgame/webview/R$id;->share_bg_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss(Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->isDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->context:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/R$anim;->intl_webview_anim_share_slide_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/intlgame/webview/ShareAnimMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/webview/ShareAnimMenu$2;-><init>(Lcom/intlgame/webview/ShareAnimMenu;Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/intlgame/webview/ShareAnimMenu;->isDismissed:Z

    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-direct {p0}, Lcom/intlgame/webview/ShareAnimMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/intlgame/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/intlgame/webview/R$id;->share_bg_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/intlgame/webview/ShareAnimMenu$1;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/ShareAnimMenu$1;-><init>(Lcom/intlgame/webview/ShareAnimMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/intlgame/webview/ShareAnimMenu;->context:Landroid/content/Context;

    sget v2, Lcom/intlgame/webview/R$anim;->intl_webview_anim_share_slide_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
