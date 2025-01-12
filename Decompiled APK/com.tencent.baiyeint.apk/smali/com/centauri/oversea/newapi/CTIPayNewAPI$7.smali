.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field public final val$callback:Lcom/centauri/oversea/newapi/response/InfoCallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;->val$callback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;->val$callback:Lcom/centauri/oversea/newapi/response/InfoCallback;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/newapi/response/InfoCallback;->callback(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    sget-object v1, Lo/b$a;->a:Lo/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=getproductinfo&resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk.centauri.api.resp"

    invoke-virtual {v1, v0, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$7;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "getProductInfo"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method
