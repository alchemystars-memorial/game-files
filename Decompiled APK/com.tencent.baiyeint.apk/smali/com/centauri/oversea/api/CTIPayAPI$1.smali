.class Lcom/centauri/oversea/api/CTIPayAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/api/CTIPayAPI;->init(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/api/CTIPayAPI;

.field public final val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI$1;->this$0:Lcom/centauri/oversea/api/CTIPayAPI;

    iput-object p2, p0, Lcom/centauri/oversea/api/CTIPayAPI$1;->val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI$1;->val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;->onUpdate(ILjava/lang/String;)V

    return-void
.end method
