.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->getInAppMessages(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

.field public final val$callback:Lcom/centauri/oversea/newapi/response/ICallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Lcom/centauri/oversea/newapi/response/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInAppMessageResponse(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$1;->val$callback:Lcom/centauri/oversea/newapi/response/ICallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/centauri/oversea/newapi/response/ICallback;->callback(I)V

    return-void
.end method
