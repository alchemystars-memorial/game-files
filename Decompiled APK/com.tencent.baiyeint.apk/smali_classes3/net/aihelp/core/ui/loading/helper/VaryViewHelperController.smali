.class public Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;
.super Ljava/lang/Object;
.source "VaryViewHelperController.java"


# instance fields
.field private final helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;-><init>(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;-><init>(Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    return-void
.end method


# virtual methods
.method public restore()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->restoreView()V

    return-void
.end method

.method public showEmpty(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->showLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public varargs showEmpty([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->inflate(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->showLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    const-string v1, "aihelp_layout_progress_loading"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->inflate(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "aihelp_loading_progress"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->mContext:Landroid/content/Context;

    const-string v4, "aihelp_color_main"

    invoke-static {v4}, Lnet/aihelp/utils/ResResolver;->getColorId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v1, "aihelp_loading_msg"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "aihelp_faq_fetching_faqs"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->showLayout(Landroid/view/View;)V

    return-void
.end method

.method public showNetworkError()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    const-string v1, "aihelp_layout_network_err"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->inflate(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "aihelp_tv_title"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "aihelp_network_error_msg"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_tv_sub_title"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "aihelp_network_no_connect"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->helper:Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelper;->showLayout(Landroid/view/View;)V

    return-void
.end method
