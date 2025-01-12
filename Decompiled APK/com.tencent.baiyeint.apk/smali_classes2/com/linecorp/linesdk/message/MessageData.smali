.class public abstract Lcom/linecorp/linesdk/message/MessageData;
.super Ljava/lang/Object;
.source "MessageData.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getType()Lcom/linecorp/linesdk/message/Type;
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/message/MessageData;->getType()Lcom/linecorp/linesdk/message/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
