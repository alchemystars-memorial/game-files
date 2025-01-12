.class public final synthetic Lcom/centauri/oversea/business/payhub/gwallet/New/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;I)V
    .locals 0

    iput p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/b;->a:I

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/b;->b:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/b;->b:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->b(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V

    return-void
.end method
