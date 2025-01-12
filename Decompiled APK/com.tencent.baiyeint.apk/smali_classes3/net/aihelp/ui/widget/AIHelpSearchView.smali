.class public Lnet/aihelp/ui/widget/AIHelpSearchView;
.super Landroid/widget/LinearLayout;
.source "AIHelpSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;
    }
.end annotation


# instance fields
.field private final editText:Landroid/widget/EditText;

.field private isSearchSessionOpen:Z

.field private mListener:Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

.field private final tvCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_search_view"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_ll_search"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const/16 p3, 0x3e7

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "aihelp_iv_search"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const-string p3, "aihelp_svg_ic_search_grey"

    invoke-static {p1, p3, p2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const-string p1, "aihelp_et_search"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    sget-object p2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSearchHint:Ljava/lang/String;

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string p2, "aihelp_tv_cancel_search"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->tvCancel:Landroid/widget/TextView;

    const-string p3, "aihelp_no"

    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, p3, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance p3, Lnet/aihelp/ui/widget/AIHelpSearchView$1;

    invoke-direct {p3, p0}, Lnet/aihelp/ui/widget/AIHelpSearchView$1;-><init>(Lnet/aihelp/ui/widget/AIHelpSearchView;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lnet/aihelp/ui/widget/AIHelpSearchView$2;

    invoke-direct {p1, p0}, Lnet/aihelp/ui/widget/AIHelpSearchView$2;-><init>(Lnet/aihelp/ui/widget/AIHelpSearchView;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpSearchView;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->isSearchSessionOpen:Z

    return p0
.end method

.method static synthetic access$002(Lnet/aihelp/ui/widget/AIHelpSearchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->isSearchSessionOpen:Z

    return p1
.end method

.method static synthetic access$100(Lnet/aihelp/ui/widget/AIHelpSearchView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->tvCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/widget/AIHelpSearchView;)Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->mListener:Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/widget/AIHelpSearchView;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSearchView;->clearInputFocus()V

    return-void
.end method

.method private clearInputFocus()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->tvCancel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->mListener:Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;->onInputCanceled()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->isSearchSessionOpen:Z

    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setupSearchView(Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;Landroid/text/TextWatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->mListener:Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method
