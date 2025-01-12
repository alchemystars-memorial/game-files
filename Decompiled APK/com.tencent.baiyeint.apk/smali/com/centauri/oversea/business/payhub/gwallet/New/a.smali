.class public final synthetic Lcom/centauri/oversea/business/payhub/gwallet/New/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;


# static fields
.field public static final a:Lcom/centauri/oversea/business/payhub/gwallet/New/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/a;

    invoke-direct {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/a;-><init>()V

    sput-object v0, Lcom/centauri/oversea/business/payhub/gwallet/New/a;->a:Lcom/centauri/oversea/business/payhub/gwallet/New/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->a(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
