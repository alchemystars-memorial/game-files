.class public Lcom/linecorp/linesdk/message/LocationMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "LocationMessage.java"


# instance fields
.field private final address:Ljava/lang/String;

.field private final latitude:Ljava/lang/Double;

.field private final longitude:Ljava/lang/Double;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/LocationMessage;->address:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/message/LocationMessage;->latitude:Ljava/lang/Double;

    iput-object p4, p0, Lcom/linecorp/linesdk/message/LocationMessage;->longitude:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->LOCATION:Lcom/linecorp/linesdk/message/Type;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->address:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->latitude:Ljava/lang/Double;

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/LocationMessage;->longitude:Ljava/lang/Double;

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
