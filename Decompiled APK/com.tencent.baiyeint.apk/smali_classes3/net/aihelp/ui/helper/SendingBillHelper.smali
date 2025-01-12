.class public Lnet/aihelp/ui/helper/SendingBillHelper;
.super Ljava/lang/Object;
.source "SendingBillHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sInstance:Lnet/aihelp/ui/helper/SendingBillHelper;


# instance fields
.field private billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field private botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

.field private mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

.field private mBillList:Landroid/widget/ListView;

.field private mEmptyLayout:Landroid/widget/RelativeLayout;

.field private mIvClose:Landroid/widget/ImageView;

.field private mTvSend:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mTvSend:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mIvClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/helper/SendingBillHelper;)Lnet/aihelp/ui/adapter/BillingListAdapter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/helper/SendingBillHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->showEmpty(Z)V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/ui/helper/SendingBillHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/ui/helper/SendingBillHelper;->sInstance:Lnet/aihelp/ui/helper/SendingBillHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-direct {v0}, Lnet/aihelp/ui/helper/SendingBillHelper;-><init>()V

    sput-object v0, Lnet/aihelp/ui/helper/SendingBillHelper;->sInstance:Lnet/aihelp/ui/helper/SendingBillHelper;

    :cond_0
    sget-object v0, Lnet/aihelp/ui/helper/SendingBillHelper;->sInstance:Lnet/aihelp/ui/helper/SendingBillHelper;

    return-object v0
.end method

.method private requestBillList(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationIdentifier"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object p1

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lnet/aihelp/ui/helper/SendingBillHelper$3;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/helper/SendingBillHelper$3;-><init>(Lnet/aihelp/ui/helper/SendingBillHelper;)V

    invoke-virtual {p1, p2, v0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->showEmpty(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private showEmpty(Z)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mTvSend:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mEmptyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mEmptyLayout:Landroid/widget/RelativeLayout;

    const-string v1, "aihelp_tv_error_desc"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string p1, "aihelp_data_retrieve_failed"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "aihelp_data_not_found_msg"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_tv_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/BillingListAdapter;->getCheckedBill()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userId"

    sget-object v3, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userName"

    sget-object v3, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serverId"

    sget-object v3, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    if-eqz v0, :cond_0

    const-string v2, "externalName"

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v2, Lnet/aihelp/common/API;->GENERATE_NEW_TICKET:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_iv_close"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/OrientationChangeEvent;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public readyToSelectBill(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
    .locals 3

    iput-object p2, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_selecting_bill"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/helper/SendingBillHelper$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/helper/SendingBillHelper$1;-><init>(Lnet/aihelp/ui/helper/SendingBillHelper;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setHeightByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_ll_bill_dialog"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_tv_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mTvSend:Landroid/widget/TextView;

    const-string v1, "aihelp_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_iv_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mIvClose:Landroid/widget/ImageView;

    const-string v1, "aihelp_svg_ic_close_dialog"

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_rl_empty"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mEmptyLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_loading_progress"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_lv_bill"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mBillList:Landroid/widget/ListView;

    new-instance v0, Lnet/aihelp/ui/adapter/BillingListAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mBillList:Landroid/widget/ListView;

    invoke-direct {v0, p1, v1}, Lnet/aihelp/ui/adapter/BillingListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    new-instance v1, Lnet/aihelp/ui/helper/SendingBillHelper$2;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/helper/SendingBillHelper$2;-><init>(Lnet/aihelp/ui/helper/SendingBillHelper;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->setOnOrderCheckedListener(Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mBillList:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper;->billSelectDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/helper/SendingBillHelper;->requestBillList(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
