.class public Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.super Ljava/lang/Object;
.source "TalkApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;
    }
.end annotation


# static fields
.field private static final BASE_PATH_COMMON_API:Ljava/lang/String; = "v2"

.field private static final BASE_PATH_FRIENDSHIP_API:Ljava/lang/String; = "friendship/v1"

.field static final BASE_PATH_GRAPH_API:Ljava/lang/String; = "graph/v2"

.field static final BASE_PATH_MESSAGE_API:Ljava/lang/String; = "message/v3"

.field private static final BASE_PATH_OPENCHAT_API:Ljava/lang/String; = "openchat/v1"

.field private static final FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation
.end field

.field static final PATH_FRIENDS:Ljava/lang/String; = "friends"

.field static final PATH_GROUPS:Ljava/lang/String; = "groups"

.field static final PATH_OTS_FRIENDS:Ljava/lang/String; = "ots/friends"

.field static final PATH_OTS_GROUPS:Ljava/lang/String; = "ots/groups"

.field static final PATH_OTT_ISSUE:Ljava/lang/String; = "ott/issue"

.field static final PATH_OTT_SHARE:Ljava/lang/String; = "ott/share"

.field private static final PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_HEADER_ACCESS_TOKEN:Ljava/lang/String; = "Authorization"

.field private static final TOKEN_TYPE_BEARER:Ljava/lang/String; = "Bearer"


# instance fields
.field private final apiBaseUrl:Landroid/net/Uri;

.field private final httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.6.2"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    return-void
.end method

.method private static buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Authorization"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private getOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/linecorp/linesdk/message/OttRequest;

    invoke-direct {v0, p2}, Lcom/linecorp/linesdk/message/OttRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/message/OttRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v2, "message/v3"

    const-string v3, "ott/issue"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;

    const-string v3, "token"

    invoke-direct {v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private sendMessageToMultipleUsersUsingUserIds(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
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

    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createMultiUsersType(Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "message/v3"

    const-string v2, "multisend"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "openchat/v1"

    const-string v2, "openchats"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->toJsonString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriends(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    const-string p4, "ots/friends"

    goto :goto_0

    :cond_0
    const-string p4, "friends"

    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "graph/v2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "sort"

    aput-object v1, v0, v4

    invoke-virtual {p2}, Lcom/linecorp/linesdk/FriendSortField;->getServerKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pageToken"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendsApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "graph/v2"

    const-string v2, "friends"

    const-string v3, "approvers"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sort"

    aput-object v3, v1, v2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/FriendSortField;->getServerKey()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pageToken"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendshipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "friendship/v1"

    const-string v2, "status"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroupApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "graph/v2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "groups"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v5, "approvers"

    aput-object v5, v1, p2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "pageToken"

    aput-object v1, v0, v3

    aput-object p3, v0, v4

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string p3, "ots/groups"

    goto :goto_0

    :cond_0
    const-string p3, "groups"

    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "graph/v2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "pageToken"

    aput-object v1, v0, v4

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatAgreementStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "openchat/v1"

    const-string v2, "terms/agreement"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatMembershipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "openchat/v1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "openchats"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, "members/me/membership"

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomJoinType(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "openchat/v1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "openchats"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, "type"

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "openchat/v1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "openchats"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string v3, "status"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "openChatId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getProfile(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "v2"

    const-string v2, "profile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public joinOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "openchat/v1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "openchats"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, "join"

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"displayName\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" }"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessage(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createSingleUserType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "message/v3"

    const-string v2, "send"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;

    const-string v2, "status"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
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

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsersUsingOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsersUsingUserIds(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected sendMessageToMultipleUsersUsingOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createOttType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "message/v3"

    const-string v2, "ott/share"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
