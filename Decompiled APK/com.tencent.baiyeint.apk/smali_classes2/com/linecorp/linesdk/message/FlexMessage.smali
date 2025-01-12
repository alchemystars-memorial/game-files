.class public Lcom/linecorp/linesdk/message/FlexMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "FlexMessage.java"


# instance fields
.field private altText:Ljava/lang/String;

.field private contents:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/FlexMessage;->altText:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/FlexMessage;->contents:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->FLEX:Lcom/linecorp/linesdk/message/Type;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/FlexMessage;->altText:Ljava/lang/String;

    const-string v2, "altText"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/FlexMessage;->contents:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
