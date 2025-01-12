.class public abstract Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ProfileInfoFragmentBinding.java"


# instance fields
.field public final displayNameEditText:Landroid/widget/EditText;

.field public final displayNameGuide:Landroid/widget/TextView;

.field protected mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->displayNameEditText:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->displayNameGuide:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->profile_info_fragment:I

    invoke-static {p1, p0, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->profile_info_fragment:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->profile_info_fragment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-object v0
.end method

.method public abstract setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
.end method
