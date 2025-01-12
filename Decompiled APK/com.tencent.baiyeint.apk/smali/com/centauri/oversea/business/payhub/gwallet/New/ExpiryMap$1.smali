.class Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;Ljava/lang/Object;Z)Z

    return-void
.end method
