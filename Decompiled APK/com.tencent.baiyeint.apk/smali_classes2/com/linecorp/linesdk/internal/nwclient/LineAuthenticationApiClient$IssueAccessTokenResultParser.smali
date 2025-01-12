.class Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "LineAuthenticationApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IssueAccessTokenResultParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;->this$0:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V

    return-void
.end method

.method private parseIdToken(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;->this$0:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    invoke-static {v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->access$300(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;->parse(Ljava/lang/String;Lio/jsonwebtoken/SigningKeyResolver;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "token_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bearer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    const-string v1, "scope"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linecorp/linesdk/Scope;->parseToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :try_start_0
    const-string v2, "id_token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;->parseIdToken(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    invoke-direct {v2, v0, v1, p1}, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;-><init>(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Lcom/linecorp/linesdk/LineIdToken;)V

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal token type. token_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    move-result-object p1

    return-object p1
.end method
