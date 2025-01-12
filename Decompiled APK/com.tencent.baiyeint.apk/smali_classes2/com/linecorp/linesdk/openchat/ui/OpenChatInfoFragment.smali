.class public final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "OpenChatInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenChatInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenChatInfoFragment.kt\ncom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment\n*L\n1#1,142:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000bH\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u0010\u001c\u001a\u00020\u000fH\u0002J\u0008\u0010\u001d\u001a\u00020\u000fH\u0002J\u0008\u0010\u001e\u001a\u00020\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\n \"*\u0004\u0018\u00010!0!H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "generateTextLengthLimitString",
        "",
        "text",
        "limitResId",
        "",
        "getResourceInt",
        "resId",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setupCategoryLabel",
        "setupDescription",
        "setupName",
        "setupSearchOption",
        "setupToolbar",
        "setupViewModel",
        "setupViews",
        "showCategorySelectionDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "kotlin.jvm.PlatformType",
        "Companion",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateTextLengthLimitString(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->generateTextLengthLimitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 1

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez p0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setViewModel$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-void
.end method

.method public static final synthetic access$showCategorySelectionDialog(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->showCategorySelectionDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private final generateTextLengthLimitString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getResourceInt(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getResourceInt(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method private final setupCategoryLabel()V
    .locals 2

    sget v0, Lcom/linecorp/linesdk/R$id;->categoryLabelTextView:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupCategoryLabel$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupCategoryLabel$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupDescription()V
    .locals 4

    sget v0, Lcom/linecorp/linesdk/R$id;->descriptionEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "descriptionEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupDescription$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v2, :cond_0

    const-string v3, "viewModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getDescription()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupDescription$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupName()V
    .locals 4

    sget v0, Lcom/linecorp/linesdk/R$id;->nameEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "nameEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupName$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v2, :cond_0

    const-string v3, "viewModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupName$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupSearchOption()V
    .locals 2

    sget v0, Lcom/linecorp/linesdk/R$id;->searchIncludedCheckBox:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupSearchOption$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupSearchOption$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/linecorp/linesdk/R$id;->searchIncludedContainer:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupSearchOption$2;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupSearchOption$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupToolbar()V
    .locals 4

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/linecorp/linesdk/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/linecorp/linesdk/R$string;->openchat_create_room_title:I

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    sget v1, Lcom/linecorp/linesdk/R$menu;->menu_openchat_info:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    const-string v1, "toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->menu_item_openchat_next:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupToolbar$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupToolbar$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isValid()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupToolbar$2;

    invoke-direct {v3, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupToolbar$2;-><init>(Landroid/view/MenuItem;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setupViewModel()V
    .locals 4

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(re\u2026nfoViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-string v2, "viewModel"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$1;

    invoke-direct {v3, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getDescription()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;

    invoke-direct {v3, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCategory()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setupViews()V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupToolbar()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupName()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupDescription()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupCategoryLabel()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupSearchOption()V

    return-void
.end method

.method private final showCategorySelectionDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCategoryStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$showCategorySelectionDialog$1;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$showCategorySelectionDialog$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p1

    const-string p2, "OpenChatInfoFragmentBind\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
