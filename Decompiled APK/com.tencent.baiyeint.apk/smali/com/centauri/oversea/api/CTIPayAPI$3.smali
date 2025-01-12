.class Lcom/centauri/oversea/api/CTIPayAPI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/api/CTIPayAPI;->getIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/api/CTIPayAPI;

.field public final val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI$3;->this$0:Lcom/centauri/oversea/api/CTIPayAPI;

    iput-object p2, p0, Lcom/centauri/oversea/api/CTIPayAPI$3;->val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI$3;->val$callback:Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;->onProductInfoResp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
