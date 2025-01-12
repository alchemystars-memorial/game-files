.class public Lnet/aihelp/data/model/cs/storyline/BotUrl;
.super Ljava/lang/Object;
.source "BotUrl.java"


# instance fields
.field private urlAddress:Ljava/lang/String;

.field private urlTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getFormattedUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lnet/aihelp/data/model/cs/storyline/BotUrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-object p1
.end method

.method private getFormattedUrl(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "type=login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "modelInfo"

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/utils/DeviceInfoUtil;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/API;->GET_USER_TOKEN:Ljava/lang/String;

    new-instance v3, Lnet/aihelp/data/model/cs/storyline/BotUrl$1;

    invoke-direct {v3, p0, p1}, Lnet/aihelp/data/model/cs/storyline/BotUrl$1;-><init>(Lnet/aihelp/data/model/cs/storyline/BotUrl;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getUrlAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setUrlAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-void
.end method

.method public setUrlTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    return-void
.end method
