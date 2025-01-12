.class public Lcom/intlgame/view/ShareView;
.super Ljava/lang/Object;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/view/ShareView$ShareListener;
    }
.end annotation


# instance fields
.field private isDismissing:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mShareListener:Lcom/intlgame/view/ShareView$ShareListener;

.field private shareChannelItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/webview/ShareAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/view/ShareView;->isDismissing:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareView Construct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/view/ShareView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/intlgame/webview/R$layout;->intl_webview_share_container:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/intlgame/webview/R$layout;->intl_webview_share_dlg:I

    iget-object v2, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v1, Lcom/intlgame/webview/R$id;->share_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/intlgame/view/ShareView$1;

    invoke-direct {v2, p0}, Lcom/intlgame/view/ShareView$1;-><init>(Lcom/intlgame/view/ShareView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/intlgame/webview/R$id;->share_recyclerView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/intlgame/view/ShareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/intlgame/webview/ShareManager;->getShareListData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/intlgame/view/ShareView;->shareChannelItemList:Ljava/util/List;

    new-instance p2, Lcom/intlgame/webview/ShareAdapter;

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/intlgame/webview/ShareAdapter;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->shareChannelItemList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/intlgame/webview/ShareAdapter;->setShareData(Ljava/util/List;)V

    new-instance v0, Lcom/intlgame/view/ShareView$2;

    invoke-direct {v0, p0}, Lcom/intlgame/view/ShareView$2;-><init>(Lcom/intlgame/view/ShareView;)V

    invoke-virtual {p2, v0}, Lcom/intlgame/webview/ShareAdapter;->setOnItemClickListener(Lcom/intlgame/webview/ShareAdapter$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/view/ShareView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/view/ShareView;)Lcom/intlgame/view/ShareView$ShareListener;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ShareView;->mShareListener:Lcom/intlgame/view/ShareView$ShareListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/view/ShareView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ShareView;->shareChannelItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/intlgame/view/ShareView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intlgame/view/ShareView;->isDismissing:Z

    return p1
.end method


# virtual methods
.method public dismiss(I)V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p1, "Should init view first!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/intlgame/view/ShareView;->isDismissing:Z

    if-eqz v0, :cond_1

    const-string p1, "already dismiss"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContext:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/R$anim;->intl_webview_anim_share_slide_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "dismiss with anim"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/intlgame/view/ShareView$3;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/view/ShareView$3;-><init>(Lcom/intlgame/view/ShareView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/intlgame/view/ShareView;->isDismissing:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mShareListener:Lcom/intlgame/view/ShareView$ShareListener;

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-le p1, v0, :cond_4

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->shareChannelItemList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/webview/ShareAdapter$ItemData;

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mShareListener:Lcom/intlgame/view/ShareView$ShareListener;

    iget-object p1, p1, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/intlgame/view/ShareView$ShareListener;->onShare(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/intlgame/view/ShareView;->isDismissing:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public setShareListener(Lcom/intlgame/view/ShareView$ShareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ShareView;->mShareListener:Lcom/intlgame/view/ShareView$ShareListener;

    return-void
.end method

.method public show(Landroid/widget/FrameLayout;)V
    .locals 5

    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p1, "Should init view first!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "share view need parent view\uff0cbut get null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "share view has a parent, need not add again!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/intlgame/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
