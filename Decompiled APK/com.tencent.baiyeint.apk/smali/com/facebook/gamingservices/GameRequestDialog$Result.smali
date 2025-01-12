.class public final Lcom/facebook/gamingservices/GameRequestDialog$Result;
.super Ljava/lang/Object;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;

.field to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "to[%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/gamingservices/GameRequestDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/GraphResponse;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/GraphResponse;Lcom/facebook/gamingservices/GameRequestDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/GameRequestDialog$Result;-><init>(Lcom/facebook/GraphResponse;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRecipients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/gamingservices/GameRequestDialog$Result;->to:Ljava/util/List;

    return-object v0
.end method
