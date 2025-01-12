.class public Lcom/linecorp/linesdk/message/AudioMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "AudioMessage.java"


# instance fields
.field private final durationMillis:Ljava/lang/Long;

.field private final originalContentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/AudioMessage;->originalContentUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/AudioMessage;->durationMillis:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->AUDIO:Lcom/linecorp/linesdk/message/Type;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/AudioMessage;->originalContentUrl:Ljava/lang/String;

    const-string v2, "originalContentUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/AudioMessage;->durationMillis:Ljava/lang/Long;

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
