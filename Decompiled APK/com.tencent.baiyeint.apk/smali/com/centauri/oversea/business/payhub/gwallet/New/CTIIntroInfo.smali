.class public Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;
.super Lcom/centauri/oversea/business/CTIBaseIntroInfo;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "APIntroInfo_New"


# instance fields
.field private billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field private intro_sdkJInfo:Ljava/lang/String;

.field private intro_serverJInfo:Ljava/lang/String;

.field private isSDKQueryFinished:Z

.field private isServerQueryFinished:Z

.field private mCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIBaseIntroInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isSDKQueryFinished:Z

    iput-boolean v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isServerQueryFinished:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_sdkJInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_serverJInfo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackRspDiscountServer(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->dispose()V

    return-void
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;ILorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackSDK(ILorg/json/JSONArray;)V

    return-void
.end method

.method private callbackIntro()V
    .locals 5

    const-string v0, "APIntroInfo_New"

    :try_start_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_sdkJInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ret"

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_serverJInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_serverJInfo:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_sdkJInfo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_sdkJInfo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "gwallet_productInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_serverJInfo:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "CallbackErr: "

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "{\"ret\":-1}"

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->mCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/centauri/oversea/newapi/response/InfoCallback;->callback(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private callbackRspDiscountServer(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isServerQueryFinished:Z

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_serverJInfo:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isSDKQueryFinished:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackIntro()V

    :cond_0
    return-void
.end method

.method private callbackSDK(ILorg/json/JSONArray;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isSDKQueryFinished:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->intro_sdkJInfo:Ljava/lang/String;

    :cond_0
    iget-boolean p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->isServerQueryFinished:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackIntro()V

    :cond_1
    return-void
.end method

.method private dispose()V
    .locals 0

    return-void
.end method

.method private getOldPurchaseList()V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string/jumbo v1, "subs"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$3;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$3;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackSDK(ILorg/json/JSONArray;)V

    return-void
.end method

.method private getPurchaseList()V
    .locals 4

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string/jumbo v3, "subs"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$2;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$2;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackSDK(ILorg/json/JSONArray;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->getInstance(Landroid/content/Context;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance p1, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$1;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;)V

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->queryServerInfo(Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    return-void
.end method


# virtual methods
.method public getIntroInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->channel:Ljava/lang/String;

    iput-object p4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->mCallback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    iput-object p3, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackSDK(ILorg/json/JSONArray;)V

    :cond_1
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->getPurchaseList()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->getOldPurchaseList()V

    :goto_0
    return-void
.end method

.method public onIabSetupFinished(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "donIabSetupFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIntroInfo_New"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->getPurchaseList()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->getOldPurchaseList()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIIntroInfo;->callbackSDK(ILorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
