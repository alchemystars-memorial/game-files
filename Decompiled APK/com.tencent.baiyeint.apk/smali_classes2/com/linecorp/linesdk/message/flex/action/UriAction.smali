.class public Lcom/linecorp/linesdk/message/flex/action/UriAction;
.super Lcom/linecorp/linesdk/message/flex/action/Action;
.source "UriAction.java"


# instance fields
.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/message/flex/action/UriAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-direct {p0, v0, p2}, Lcom/linecorp/linesdk/message/flex/action/Action;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/action/UriAction;->uri:Ljava/lang/String;

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

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/action/Action;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/action/UriAction;->uri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
