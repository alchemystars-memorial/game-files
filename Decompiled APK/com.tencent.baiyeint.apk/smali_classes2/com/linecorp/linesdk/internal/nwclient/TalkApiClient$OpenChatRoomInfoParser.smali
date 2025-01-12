.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "TalkApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenChatRoomInfoParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    const-string v1, "openchatId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    move-result-object p1

    return-object p1
.end method
