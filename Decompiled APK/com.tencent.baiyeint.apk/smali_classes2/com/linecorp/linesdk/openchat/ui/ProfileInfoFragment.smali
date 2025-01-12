.class public final Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "ProfileInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileInfoFragment.kt\ncom/linecorp/linesdk/openchat/ui/ProfileInfoFragment\n*L\n1#1,102:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0015\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "dismissKeyboard",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setupProfileName",
        "setupProfileNameGuide",
        "setupToolbar",
        "setupViews",
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
.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$dismissKeyboard(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->dismissKeyboard()V

    return-void
.end method

.method public static final synthetic access$getViewModel$p(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 1

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez p0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setViewModel$p(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-void
.end method

.method private final dismissKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "requireActivity().currentFocus ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final setupProfileName()V
    .locals 2

    sget v0, Lcom/linecorp/linesdk/R$id;->displayNameEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "displayNameEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupProfileName$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupProfileName$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupProfileNameGuide()V
    .locals 6

    sget v0, Lcom/linecorp/linesdk/R$id;->displayNameGuide:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "displayNameGuide"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/linecorp/linesdk/R$string;->openchat_create_profile_input_guide:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v4, :cond_0

    const-string v5, "viewModel"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupToolbar()V
    .locals 4

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/linecorp/linesdk/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/linecorp/linesdk/R$string;->openchat_create_profile_title:I

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    sget v1, Lcom/linecorp/linesdk/R$menu;->menu_profile_info:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    const-string v1, "toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->menu_item_create_profile_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isProfileValid()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$2;

    invoke-direct {v3, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$2;-><init>(Landroid/view/MenuItem;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setupViews()V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupToolbar()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupProfileName()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupProfileNameGuide()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(re\u2026nfoViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_1

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    move-result-object p1

    const-string p2, "ProfileInfoFragmentBindi\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p3}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
