.class public abstract Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DmmOlgIdBaseFragmentActivity.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100ae

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2, v1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->overridePendingTransition(II)V

    return-void

    :array_0
    .array-data 4
        0x10100ba
        0x10100bb
    .end array-data
.end method

.method protected abstract getActivityTitle()Ljava/lang/String;
.end method

.method protected abstract getCancelClickListener()Landroid/view/View$OnClickListener;
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    sget p1, Lcom/dmm/android/sdk/olgid/R$layout;->dmm_olgid_sdk_activity_fragment_base:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->setContentView(I)V

    sget p1, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_fragment_activity_title:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_title_progress:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget p1, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_fragment_activity_cancel:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetActivityTitle()V
    .locals 2

    sget v0, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_fragment_activity_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
