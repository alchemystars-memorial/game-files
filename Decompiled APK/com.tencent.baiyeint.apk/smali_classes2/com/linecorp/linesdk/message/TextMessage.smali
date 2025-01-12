.class public Lcom/linecorp/linesdk/message/TextMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "TextMessage.java"


# instance fields
.field private final sendBy:Lcom/linecorp/linesdk/message/MessageSender;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->TEXT:Lcom/linecorp/linesdk/message/Type;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/MessageSender;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sentBy"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
