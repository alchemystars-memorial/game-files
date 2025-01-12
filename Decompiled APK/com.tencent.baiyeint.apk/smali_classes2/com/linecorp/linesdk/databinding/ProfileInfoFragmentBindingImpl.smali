.class public Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;
.super Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
.source "ProfileInfoFragmentBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    sget v1, Lcom/linecorp/linesdk/R$id;->displayNameGuide:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->displayNameEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewModelProfileName(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    sget p1, Lcom/linecorp/linesdk/BR;->_all:I

    if-ne p2, p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-wide/16 v5, 0x7

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getProfileName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->displayNameEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->onChangeViewModelProfileName(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    sget v0, Lcom/linecorp/linesdk/BR;->viewModel:I

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/linecorp/linesdk/BR;->viewModel:I

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
