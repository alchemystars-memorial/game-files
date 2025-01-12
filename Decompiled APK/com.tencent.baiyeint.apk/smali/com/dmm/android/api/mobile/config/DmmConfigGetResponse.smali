.class public Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;
.super Lcom/dmm/android/api/mobile/DmmApiResponse;
.source "DmmConfigGetResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;,
        Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;,
        Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$JsonKey;
    }
.end annotation


# static fields
.field public static final MAINTENANCE_ON:Ljava/lang/String; = "1"


# instance fields
.field private mMaintenanceInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

.field private mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

.field private mPortalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSite:Ljava/lang/String;

.field private mTitle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/api/mobile/DmmApiResponse;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/dmm/android/api/mobile/DmmApiResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parse(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private parse(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parseSite(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parseTitle(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parseWebViewURL(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parsePortalURL(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parseMaintenanceInfo(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->parseOpenSocialInfo(Ljava/util/Map;)V

    return-void
.end method

.method private parseMaintenanceInfo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    const-string v1, "flag"

    const-string v2, "mente"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;-><init>(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$1;)V

    iput-object v2, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mMaintenanceInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v2, v1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->access$002(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mMaintenanceInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v1, v3}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->access$102(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private parseOpenSocialInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endpoint"

    const-string v1, "host"

    const-string v2, "scheme"

    const-string/jumbo v3, "social_api"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    new-instance v3, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;-><init>(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$1;)V

    iput-object v3, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-static {v3, v2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$202(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-static {v2, v1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$302(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v1, v4}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$402(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private parsePortalURL(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "portalapp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mPortalInfo:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mPortalInfo:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void
.end method

.method private parseSite(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "site"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mSite:Ljava/lang/String;

    return-void
.end method

.method private parseTitle(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mTitle:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mTitle:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void
.end method

.method private parseWebViewURL(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "webview"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mWebView:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mWebView:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getChargePointTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "point"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChargePointURL()Ljava/lang/String;
    .locals 1

    const-string v0, "point"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "community"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityURL()Ljava/lang/String;
    .locals 1

    const-string v0, "community"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getPortalInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInquiryTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "inquiry"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInquiryURL()Ljava/lang/String;
    .locals 1

    const-string v0, "inquiry"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteFriendURL()Ljava/lang/String;
    .locals 1

    const-string v0, "invite"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "invite"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintenanceFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mMaintenanceInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->access$000(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMaintenanceMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mMaintenanceInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->access$100(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMyGameTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "mygame"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenSocialHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$300(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpenSocialPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$400(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpenSocialScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mOpenSocialInfo:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;->access$200(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$OpenSocialInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPortalInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mPortalInfo:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mPortalInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getRegisterProfileTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterProfileURL()Ljava/lang/String;
    .locals 1

    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingTitle()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "setting"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingURL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "setting"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mSite:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportTitle()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "support"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportURL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "support"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getWebViewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "rule"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermURL()Ljava/lang/String;
    .locals 1

    const-string v0, "rule"

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getPortalInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mTitle:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mTitle:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getWebViewURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mWebView:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->mWebView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public isMaintenance()Z
    .locals 2

    invoke-virtual {p0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getMaintenanceFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
