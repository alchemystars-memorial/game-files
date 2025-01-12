.class public Lcom/linecorp/linesdk/message/template/UriAction;
.super Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
.source "UriAction.java"


# instance fields
.field private label:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;-><init>()V

    const-string v0, "uri"

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/UriAction;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
