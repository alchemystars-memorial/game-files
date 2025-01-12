.class public final Lcom/dmm/android/lib/auth/service/TokenServiceImpl;
.super Ljava/lang/Object;
.source "TokenServiceImpl.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/service/TokenService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/service/TokenServiceImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u001f\u001a\u00020\u000eH\u0016J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/TokenServiceImpl;",
        "Lcom/dmm/android/lib/auth/service/TokenService;",
        "preferences",
        "Lcom/dmm/android/lib/auth/pref/TokenPreferences;",
        "jwtService",
        "Lcom/dmm/android/lib/auth/service/JWTService;",
        "cookieService",
        "Lcom/dmm/android/lib/auth/service/CookieService;",
        "tokenApi",
        "Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;",
        "revokeTokenApi",
        "Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;",
        "(Lcom/dmm/android/lib/auth/pref/TokenPreferences;Lcom/dmm/android/lib/auth/service/JWTService;Lcom/dmm/android/lib/auth/service/CookieService;Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;)V",
        "clearLocalData",
        "",
        "exchangeAccessToken",
        "accessToken",
        "",
        "listener",
        "Lcom/dmm/android/lib/auth/listener/TokenEventListener;",
        "issueAccessToken",
        "authCode",
        "load",
        "Lcom/dmm/android/lib/auth/model/AccessToken;",
        "needRefresh",
        "",
        "expireTime",
        "",
        "currentTimeMillis",
        "",
        "refreshAccessToken",
        "revokeAccessToken",
        "save",
        "response",
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
        "Companion",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/dmm/android/lib/auth/service/TokenServiceImpl$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

.field private final jwtService:Lcom/dmm/android/lib/auth/service/JWTService;

.field private final preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

.field private final revokeTokenApi:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;

.field private final tokenApi:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->Companion:Lcom/dmm/android/lib/auth/service/TokenServiceImpl$Companion;

    const-string v0, "TokenServiceImpl"

    const-string v1, "TokenServiceImpl::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/pref/TokenPreferences;Lcom/dmm/android/lib/auth/service/JWTService;Lcom/dmm/android/lib/auth/service/CookieService;Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwtService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookieService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revokeTokenApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->jwtService:Lcom/dmm/android/lib/auth/service/JWTService;

    iput-object p3, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

    iput-object p4, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->tokenApi:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;

    iput-object p5, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->revokeTokenApi:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;

    return-void
.end method

.method public static final synthetic access$clearLocalData(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->clearLocalData()V

    return-void
.end method

.method public static final synthetic access$exchangeAccessToken(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->exchangeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method

.method public static final synthetic access$getJwtService$p(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)Lcom/dmm/android/lib/auth/service/JWTService;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->jwtService:Lcom/dmm/android/lib/auth/service/JWTService;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$save(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->save(Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V

    return-void
.end method

.method private final clearLocalData()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->clear()V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/service/CookieService;->renewalCookie()V

    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5185\u90e8\u30c7\u30fc\u30bf\u524a\u9664\u5b8c\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final exchangeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-object p1, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "access_token\u6587\u5b57\u5217\u304c\u7a7a\u3067\u3059"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {p2, p1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->tokenApi:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;

    new-instance v2, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$exchangeAccessToken$1;

    new-array v1, v1, [Lcom/dmm/android/lib/auth/api/json/TokenResponse;

    invoke-direct {v2, p0, p2, v1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$exchangeAccessToken$1;-><init>(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/listener/TokenEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v2, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v0, p1, v2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->exchangeToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method

.method private final save(Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putAccessToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putAccessTokenType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getExpiresIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putAccessTokenExpire(I)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putAccessTokenScope(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getIdToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putIdToken(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->putRefreshToken(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 3

    const-string v0, "authCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_AUTH_CODE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {p2, p1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->tokenApi:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;

    new-instance v2, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;

    new-array v1, v1, [Lcom/dmm/android/lib/auth/api/json/TokenResponse;

    invoke-direct {v2, p0, p2, v1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;-><init>(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/listener/TokenEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v2, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v0, p1, v2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method

.method public load()Lcom/dmm/android/lib/auth/model/AccessToken;
    .locals 9

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getIdToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->jwtService:Lcom/dmm/android/lib/auth/service/JWTService;

    invoke-interface {v2, v0}, Lcom/dmm/android/lib/auth/service/JWTService;->parseIdToken(Ljava/lang/String;)Lcom/dmm/android/lib/auth/model/IDToken;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-object v7, v1

    :goto_0
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getAccessTokenType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getAccessTokenExpire()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getAccessTokenScope()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getRefreshToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/dmm/android/lib/auth/model/AccessToken;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/dmm/android/lib/auth/model/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final needRefresh(IJ)Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "calender"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xa

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expireDate\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public refreshAccessToken(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 5

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->load()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->FAIL_LOAD_PREFERENCE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getExpire()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->needRefresh(IJ)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getExpire()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "\u30c8\u30fc\u30af\u30f3\u6709\u52b9\u671f\u9593\u306b\u7336\u4e88\u304c\u3042\u308b\u305f\u3081\u30ea\u30d5\u30ec\u30c3\u30b7\u30e5\u3057\u307e\u305b\u3093\u3067\u3057\u305f\u3002(%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(this, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->TOKEN_IS_IN_PERIOD:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    if-eqz v2, :cond_6

    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "refresh_token\u6587\u5b57\u5217\u304c\u7a7a\u3067\u3059"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REFRESH_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->tokenApi:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;

    new-instance v2, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$refreshAccessToken$1;

    new-array v3, v3, [Lcom/dmm/android/lib/auth/api/json/TokenResponse;

    invoke-direct {v2, p0, p1, v3}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$refreshAccessToken$1;-><init>(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/listener/TokenEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v2, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v1, v0, v2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->refreshToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method

.method public revokeAccessToken()V
    .locals 6

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_4

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->revokeTokenApi:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;

    new-instance v3, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$revokeAccessToken$1;

    new-array v5, v4, [Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;

    invoke-direct {v3, v5}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$revokeAccessToken$1;-><init>([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v3, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v2, v0, v3}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->revokeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->revokeTokenApi:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;

    new-instance v2, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$revokeAccessToken$2;

    new-array v3, v4, [Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;

    invoke-direct {v2, v3}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$revokeAccessToken$2;-><init>([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v2, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v0, v1, v2}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->revokeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->clearLocalData()V

    return-void

    :cond_4
    :goto_2
    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "refresh_token\u304c\u7a7a\u3067\u3059"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_3
    sget-object v0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "access_token\u304c\u7a7a\u3067\u3059"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
