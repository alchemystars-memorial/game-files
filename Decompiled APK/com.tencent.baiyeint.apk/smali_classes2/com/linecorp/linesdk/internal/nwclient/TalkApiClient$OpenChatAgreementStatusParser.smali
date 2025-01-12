.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "TalkApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenChatAgreementStatusParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Ljava/lang/Boolean;",
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

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "agreed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;->parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
