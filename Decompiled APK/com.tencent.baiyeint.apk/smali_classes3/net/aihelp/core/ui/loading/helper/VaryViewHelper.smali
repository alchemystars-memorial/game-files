.class public Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;
.super Ljava/lang/Object;
.source "VaryViewHelper.java"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginView:Landroid/view/View;

.field private mOriginViewParams:Landroid/view/ViewGroup$LayoutParams;

.field private mParentView:Landroid/view/ViewGroup;

.field private mTargetViewIndex:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mActivityRef:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->prepareOriginViewCache()V

    return-void
.end method

.method private prepareOriginViewCache()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginViewParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    iget-object v2, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iput v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    return-object v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method restoreView()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->showLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method showLayout(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    iget v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    iget v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    iget-object v2, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mOriginViewParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParentView == null -- > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParentView.getChildAt(mTargetViewIndex) == replaceView -- > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mParentView:Landroid/view/ViewGroup;

    iget v4, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->mTargetViewIndex:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
