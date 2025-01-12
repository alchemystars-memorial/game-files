.class public Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;
.super Ljava/lang/Object;
.source "LineApiClientImpl.java"

# interfaces
.implements Lcom/linecorp/linesdk/api/LineApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
    }
.end annotation


# static fields
.field private static final ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;


# instance fields
.field private final accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

.field private final channelId:Ljava/lang/String;

.field private final oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field private final talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;


# direct methods
.method public static synthetic $r8$lambda$_Pu1VEf2AO-DukgbDxfq40_sTMA(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jsXp_EXYISbKPxPqAIV4NHR-Yvk(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/internal/AccessTokenCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iput-object p4, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-void
.end method

.method private callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    sget-object p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;->call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get access token fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->clear()V

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->revokeRefreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->verifyAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    new-instance v11, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v11

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v7, Lcom/linecorp/linesdk/LineCredential;

    new-instance v10, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    move-object v1, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getScopes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, v10, p1}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save access token fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createOpenChatRoom(Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda1;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "The cached access token does not exist."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v7, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda10;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendsApprovers(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda13;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendshipStatus()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda11;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;)V

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGroupApprovers(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda6;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->getGroups(Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatAgreementStatus()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda15;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOpenChatMembershipStatus(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda4;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomJoinType(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda12;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomStatus(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda5;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getProfile()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda8;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;)V

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public joinOpenChatRoom(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda9;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$createOpenChatRoom$7$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getFriends$0$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getFriends(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getFriendsApprovers$1$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getFriendsApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getGroupApprovers$3$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getGroupApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getGroups$2$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getGroups(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getOpenChatAgreementStatus$6$com-linecorp-linesdk-api-internal-LineApiClientImpl(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatAgreementStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getOpenChatMembershipStatus$10$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatMembershipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getOpenChatRoomJoinType$11$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatRoomJoinType(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getOpenChatRoomStatus$9$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatRoomStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$joinOpenChatRoom$8$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->joinOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendMessage$4$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/lang/String;Ljava/util/List;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessage(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendMessageToMultipleUsers$5$com-linecorp-linesdk-api-internal-LineApiClientImpl(Ljava/util/List;Ljava/util/List;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public logout()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda3;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->refreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getExpiresInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda7;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda14;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/util/List;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public verifyToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$$ExternalSyntheticLambda2;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method
