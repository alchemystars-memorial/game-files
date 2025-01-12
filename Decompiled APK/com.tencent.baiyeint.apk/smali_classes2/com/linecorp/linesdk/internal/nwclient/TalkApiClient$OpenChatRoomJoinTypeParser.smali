.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "TalkApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenChatRoomJoinTypeParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
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

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    move-result-object p1

    return-object p1
.end method
