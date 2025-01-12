.class public Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;
.super Lcom/centauri/oversea/business/CTIBaseRestore;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "APGWRestore_New"


# instance fields
.field private billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field private callbackJs:Lorg/json/JSONObject;

.field private consumeReport:Ljava/lang/StringBuilder;

.field private forbidList:Lorg/json/JSONArray;

.field private initCallback:Lcom/centauri/oversea/newapi/response/ICallback;

.field private list:Lorg/json/JSONArray;

.field private mCurrentIndex:I

.field private mPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalConsumed:I

.field private postProvideCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

.field private reportStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/centauri/oversea/business/CTIBaseRestore;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportStartTime:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mTotalConsumed:I

    iput v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->consumeReport:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->list:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->forbidList:Lorg/json/JSONArray;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private addSubInfo()V
    .locals 6

    const-string v0, "gw_subscription"

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideSdkRetMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideSdkRetMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideSdkRetMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "productId"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "subInfo"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lb/a;->g([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "addSubInfo exception: "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APGWRestore_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private callbackSuper(I)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->postProvideCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addSubInfo()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->postProvideCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackJs:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->postProvideCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    const-string v1, ""

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private consumeAsync(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->updateTimer()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mTotalConsumed:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v1, v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version=2.0&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&times="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.reprovide.oversea.gw.time.20.consume"

    invoke-virtual {v0, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTimer()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportStartTime:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "APGWRestore_New"

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-super {p0}, Lcom/centauri/oversea/business/CTIBaseRestore;->dispose()V

    return-void
.end method

.method public getInAppMessages(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->inAppMessaging:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;

    invoke-direct {v1, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Lcom/centauri/oversea/newapi/response/ICallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->showInAppMessages(Landroid/content/Context;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-interface {p2, p1}, Lcom/centauri/oversea/newapi/response/ICallback;->callback(I)V

    :goto_0
    return-void
.end method

.method public getNewPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$2;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$2;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;->callback(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "queryEnd"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getOldPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;->callback(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "queryEnd"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->updateTimer()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->getNewPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->getOldPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;->callback(Ljava/util/List;)V

    const-string p1, "queryEnd"

    const-string p2, "mHelper is null or mHelper not setup."

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->updateTimer()V

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->initCallback:Lcom/centauri/oversea/newapi/response/ICallback;

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->getInstance(Landroid/content/Context;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {p1, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startSetup(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public onConsumeResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/lang/String;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConsumeResponse: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mCurrentIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mCurrentIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "APGWRestore_New"

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mCurrentIndex:I

    if-gt p2, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->consumeReport:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->forbiddenPrompts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->forbidList:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "productid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gwalletOrderId"

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->list:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "JSONException1: "

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mCurrentIndex:I

    iget p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mTotalConsumed:I

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->consumeReport:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "consumeEnd"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_1
    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->list:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->forbidList:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    const-string p2, "ret"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "paychannelid"

    const-string v1, "gwallet"

    invoke-direct {p0, p2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "products"

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->list:Lorg/json/JSONArray;

    invoke-direct {p0, p2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "error_products"

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->forbidList:Lorg/json/JSONArray;

    invoke-direct {p0, p2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->addCallbackItem(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    const-string v1, "JSONException2: "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackSuper(I)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackSuper(I)V

    return-void
.end method

.method public onIabSetupFinished(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIabSetupFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APGWRestore_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->initCallback:Lcom/centauri/oversea/newapi/response/ICallback;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->initCallback:Lcom/centauri/oversea/newapi/response/ICallback;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/centauri/oversea/newapi/response/ICallback;->callback(I)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initEnd"

    invoke-direct {p0, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->reportEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postProvide(Ljava/util/List;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/ICTICallback;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->postProvideCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "APGWRestore_New"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->mPurchases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeList add:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "consumeList size:"

    invoke-static {p1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->consumeAsync(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackSuper(I)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->callbackSuper(I)V

    return-void
.end method
