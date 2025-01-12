.class public Lcom/centauri/oversea/business/pay/CTIResponse;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CTIResponse"


# instance fields
.field private appExtends:Ljava/lang/String;

.field private extendJson:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private innerCode:Ljava/lang/String;

.field public needShowSuccess:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extendJson:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extendJson:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTIResponse() called with: resultCode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], msgErrCode = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], resultMsg = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTIResponse"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extendJson:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "copywrite_format"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "copywrite_params_list"

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lo/g;->o(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extendJson:Ljava/lang/String;

    iput-object p5, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CTIResponse() called with: resultCode = ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], msgErrCode = ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], resultMsg = ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTIResponse"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAPPExtends()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extendJson:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setAppExtends(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    return-void
.end method

.method public setInnerCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultCode"

    iget v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resultMsg"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "innerCode"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->innerCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "appExtends"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIResponse;->appExtends:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "toString() exception|"

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentauriResponse"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
