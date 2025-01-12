.class public abstract Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "OpenChatInfoFragmentBinding.java"


# instance fields
.field public final categoryDivider:Landroid/view/View;

.field public final categoryGuide:Landroid/widget/TextView;

.field public final categoryLabelTextView:Landroid/widget/TextView;

.field public final categoryTitle:Landroid/widget/TextView;

.field public final descriptionDetail:Landroid/widget/TextView;

.field public final descriptionDivider:Landroid/view/View;

.field public final descriptionEditText:Landroid/widget/EditText;

.field public final descriptionMaxTextView:Landroid/widget/TextView;

.field protected mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final nameDivider:Landroid/view/View;

.field public final nameEditText:Landroid/widget/EditText;

.field public final nameMaxTextView:Landroid/widget/TextView;

.field public final searchDescription:Landroid/widget/TextView;

.field public final searchIncludedCheckBox:Landroid/widget/CheckBox;

.field public final searchIncludedContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final searchTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryDivider:Landroid/view/View;

    move-object v1, p5

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryGuide:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryLabelTextView:Landroid/widget/TextView;

    move-object v1, p7

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryTitle:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionDetail:Landroid/widget/TextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionDivider:Landroid/view/View;

    move-object v1, p10

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionEditText:Landroid/widget/EditText;

    move-object v1, p11

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionMaxTextView:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameDivider:Landroid/view/View;

    move-object v1, p13

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameEditText:Landroid/widget/EditText;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameMaxTextView:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchDescription:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchIncludedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchIncludedContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    invoke-static {p1, p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-object v0
.end method

.method public abstract setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
.end method
