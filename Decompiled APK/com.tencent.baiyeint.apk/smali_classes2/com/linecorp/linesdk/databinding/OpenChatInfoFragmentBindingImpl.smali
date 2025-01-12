.class public Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;
.super Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
.source "OpenChatInfoFragmentBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    sget v1, Lcom/linecorp/linesdk/R$id;->nameMaxTextView:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->name_divider:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->descriptionMaxTextView:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->description_detail:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->description_divider:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->category_title:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->categoryLabelTextView:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->category_guide:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->category_divider:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->searchIncludedContainer:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->search_title:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/linecorp/linesdk/R$id;->search_description:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-static {p1, p2, v2, v0, v1}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xc

    aget-object v4, p3, v4

    check-cast v4, Landroid/view/View;

    const/16 v5, 0xb

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x9

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x7

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    aget-object v9, p3, v9

    check-cast v9, Landroid/view/View;

    const/4 v10, 0x2

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/EditText;

    const/4 v11, 0x6

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x5

    aget-object v12, p3, v12

    check-cast v12, Landroid/view/View;

    const/4 v13, 0x1

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/EditText;

    const/4 v14, 0x4

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v15, 0xf

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/TextView;

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/CheckBox;

    const/16 v17, 0xd

    aget-object v17, p3, v17

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v18, 0xe

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x3

    move/from16 v3, v19

    invoke-direct/range {v0 .. v18}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    iget-object v0, v2, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->descriptionEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v2, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->searchIncludedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewModelChatroomName(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewModelDescription(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewModelIsSearchIncluded(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    sget p1, Lcom/linecorp/linesdk/BR;->_all:I

    if-ne p2, p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

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
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1c

    const-wide/16 v9, 0x19

    const-wide/16 v11, 0x1a

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v6, :cond_7

    and-long v15, v2, v9

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v14

    :goto_0
    invoke-virtual {v1, v13, v6}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v14

    :goto_1
    and-long v15, v2, v11

    cmp-long v15, v15, v4

    if-eqz v15, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getDescription()Landroidx/lifecycle/MutableLiveData;

    move-result-object v15

    goto :goto_2

    :cond_2
    move-object v15, v14

    :goto_2
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v15}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v13, v14

    :goto_3
    and-long v17, v2, v7

    cmp-long v15, v17, v4

    if-eqz v15, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isSearchIncluded()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v14

    :goto_4
    const/4 v15, 0x2

    invoke-virtual {v1, v15, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Boolean;

    :cond_5
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    move-object v14, v13

    move v13, v0

    goto :goto_6

    :cond_6
    move-object v14, v13

    goto :goto_5

    :cond_7
    move-object v6, v14

    :goto_5
    const/4 v13, 0x0

    :goto_6
    and-long/2addr v11, v2

    cmp-long v0, v11, v4

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->descriptionEditText:Landroid/widget/EditText;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_8
    and-long/2addr v9, v2

    cmp-long v0, v9, v4

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->nameEditText:Landroid/widget/EditText;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->searchIncludedCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_a
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
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->requestRebind()V

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
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->onChangeViewModelIsSearchIncluded(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->onChangeViewModelDescription(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->onChangeViewModelChatroomName(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    sget v0, Lcom/linecorp/linesdk/BR;->viewModel:I

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/linecorp/linesdk/BR;->viewModel:I

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
