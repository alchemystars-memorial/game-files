.class public Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;,
        Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field private static final RECONNECT_TIMER_MAX_TIME_MILLISECONDS:J = 0x186a0L

.field private static final RECONNECT_TIMER_START_MILLISECONDS:J = 0x1f4L

.field private static final SKU_DETAILS_REQUERY_TIME:J = 0xdbba00L

.field private static final SKU_LIMIT_TIME:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "BillingHelper"

.field private static final mHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;


# instance fields
.field public billingClientStateListener:Lcom/android/billingclient/api/BillingClientStateListener;

.field private iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private mContext:Landroid/content/Context;

.field private mIsServiceConnected:Z

.field private mLocalSku:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchaseListener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;

.field private mPurchaseResultCount:I

.field private mPurchaseResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field public reConnectRunnable:Ljava/lang/Runnable;

.field private reconnectMilliseconds:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseResultList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseResultCount:I

    iput-boolean v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mIsServiceConnected:Z

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-direct {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;-><init>()V

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mLocalSku:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->billingClientStateListener:Lcom/android/billingclient/api/BillingClientStateListener;

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/b;

    invoke-direct {v1, p0, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/b;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;I)V

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reConnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseResultList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseResultCount:I

    iput-boolean v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mIsServiceConnected:Z

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-direct {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mLocalSku:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->billingClientStateListener:Lcom/android/billingclient/api/BillingClientStateListener;

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/b;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;I)V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method public static synthetic a(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->lambda$new$0(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isSubscriptionSupported()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$202(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mIsServiceConnected:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->retryBillingServiceConnectionWithExponentialBackoff()V

    return-void
.end method

.method public static synthetic b(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->lambda$new$1()V

    return-void
.end method

.method private executeServiceRequest(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)V
    .locals 2

    const-string v0, "executeServiceRequest getConnectionState : "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;->run(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startServiceConnection(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;
    .locals 2

    const-class v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    sget-object v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->sInstance:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->sInstance:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->sInstance:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->sInstance:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    return-object p0
.end method

.method private getLocalSku(Lcom/android/billingclient/api/SkuDetailsParams;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/SkuDetailsParams;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mLocalSku:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mLocalSku:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isSubscriptionSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$0(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    const-string p0, "BillingHelper"

    const-string v0, "retryBillingServiceConnectionWithExponentialBackoff IabRunnable result"

    invoke-static {p0, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    const-string v0, "BillingHelper"

    const-string v1, "reConnectRunnable"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "reConnectRunnable start"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/centauri/oversea/business/payhub/gwallet/New/a;->a:Lcom/centauri/oversea/business/payhub/gwallet/New/a;

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startServiceConnection(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onQueryPurchasesResponse()V
    .locals 0

    return-void
.end method

.method private retryBillingServiceConnectionWithExponentialBackoff()V
    .locals 6

    const-string v0, "retryBillingServiceConnectionWithExponentialBackoff reconnectMilliseconds : "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingHelper"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reConnectRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    const-wide/16 v4, 0x2

    mul-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->reconnectMilliseconds:J

    return-void
.end method

.method private startServiceConnection(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    const-string p1, "BillingHelper"

    const-string/jumbo v0, "startServiceConnection"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "BillingHelper"

    const-string v1, "Service is connected."

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;->run(Lcom/android/billingclient/api/BillingResult;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->billingClientStateListener:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startServiceConnection: BillingClient is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "BillingHelper"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/16 v1, -0x7d0

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const-string v1, "BillingClient is null."

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;->run(Lcom/android/billingclient/api/BillingResult;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->iabRunnable:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public acknowledge(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "acknowledge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "acknowledge: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "acknowledge: BillingClient null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/16 v0, -0x7d0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const-string v0, "BillingClient is null."

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :goto_0
    return-void
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V
    .locals 3

    const-string v0, "BillingHelper"

    const-string v1, "consumeAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "consumeAsync: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    :cond_1
    const-string v1, "consumeAsync: BillingClient is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const/16 v2, -0x7d0

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const-string v2, "BillingClient is null."

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;->onConsumeResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBillingConfigAsync(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->build()Lcom/android/billingclient/api/GetBillingConfigParams;

    move-result-object v1

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;

    invoke-direct {v2, p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    :cond_0
    return-void
.end method

.method public isGw5Supported()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    const-string v1, "fff"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/GlobalData;->setGw_version(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/GlobalData;->setGw_version(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BillingHelper"

    const-string v1, "isGw5Supported: BillingClient is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "launchPurchaseFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string p1, "launchPurchaseFlow: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseListener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    :cond_1
    const-string p1, "launchPurchaseFlow: BillingClient is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.oversea.call.gw.inner.error"

    const-string/jumbo v0, "version=2.0&ret=-1&msg=billclient is null"

    invoke-virtual {p1, p2, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p2

    const/16 v0, -0x7d0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p2

    const-string v0, "BillingClient is null."

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;->onPurchaseResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BillingHelper"

    const-string v1, "onPurchasesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mPurchaseListener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-direct {v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    invoke-interface {v0, v1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;->onPurchaseResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public queryNewPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    const-string v4, "inapp"

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v3

    new-instance v4, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$4;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$4;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;[ILjava/util/ArrayList;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    const-string/jumbo v4, "subs"

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v3

    new-instance v4, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;[ILjava/util/ArrayList;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public queryOldPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v3, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$6;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$6;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;[ILjava/util/ArrayList;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    const-string v4, "inapp"

    invoke-virtual {v2, v4, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v3, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;[ILjava/util/ArrayList;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    const-string/jumbo p1, "subs"

    invoke-virtual {v2, p1, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "queryProductDetailsAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "queryProductDetailsAsync: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "queryProductDetailsAsync: BillingClient is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/16 v1, -0x7d0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "BillingClient is null."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;->onProductDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "queryPurchaseHistoryAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "queryPurchaseHistoryAsync: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "queryPurchaseHistoryAsync: BillingClient null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/16 v0, -0x7d0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const-string v0, "BillingClient is null."

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public queryPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    .locals 3

    const-string v0, "BillingHelper"

    const-string v1, "queryPurchasesAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "queryPurchasesAsync: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryNewPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryOldPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    goto :goto_0

    :cond_2
    const-string v1, "queryPurchasesAsync: BillingClient is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const/16 v2, -0x7d0

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const-string v2, "BillingClient is null."

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;->onQueryPurchasesResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string v1, "querySkuDetailsAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "querySkuDetailsAsync: listener is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$2;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "querySkuDetailsAsync: BillingClient is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/16 v1, -0x7d0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "BillingClient is null."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;->onSkuDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public showInAppMessages(Landroid/content/Context;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;)V
    .locals 7

    invoke-static {}, Lcom/android/billingclient/api/InAppMessageParams;->newBuilder()Lcom/android/billingclient/api/InAppMessageParams$Builder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/InAppMessageParams$Builder;->addInAppMessageCategoryToShow(I)Lcom/android/billingclient/api/InAppMessageParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/InAppMessageParams$Builder;->build()Lcom/android/billingclient/api/InAppMessageParams;

    move-result-object p1

    sget-object v1, Lo/g;->a:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "paused"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v2, "activity"

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;

    invoke-direct {v2, p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/billingclient/api/BillingClient;->showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;->onInAppMessageResponse(Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method public startSetup(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V
    .locals 2

    const-string v0, "BillingHelper"

    const-string/jumbo v1, "startSetup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startServiceConnection(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)V

    return-void
.end method
