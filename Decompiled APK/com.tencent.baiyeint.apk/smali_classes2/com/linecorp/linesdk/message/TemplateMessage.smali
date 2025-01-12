.class public Lcom/linecorp/linesdk/message/TemplateMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "TemplateMessage.java"


# instance fields
.field private altText:Ljava/lang/String;

.field private template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/template/LayoutTemplate;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->altText:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->TEMPLATE:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->altText:Ljava/lang/String;

    const-string v2, "altText"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
