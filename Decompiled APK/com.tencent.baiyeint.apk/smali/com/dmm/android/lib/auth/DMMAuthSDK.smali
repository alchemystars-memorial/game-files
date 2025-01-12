.class public final Lcom/dmm/android/lib/auth/DMMAuthSDK;
.super Ljava/lang/Object;
.source "DMMAuthSDK.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 82\u00020\u0001:\u00018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00062\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*H\u0007J\u0014\u0010+\u001a\u00020\'2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010,H\u0007J\u0016\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00102\u0006\u0010)\u001a\u00020/J\u0016\u00100\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00102\u0006\u0010)\u001a\u00020/J\u0016\u00101\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00102\u0006\u0010)\u001a\u00020/J\u0006\u00102\u001a\u00020\'J\u0014\u00103\u001a\u00020\'2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*H\u0007J\u0015\u00104\u001a\u00020\'2\u0006\u00105\u001a\u000206H\u0000\u00a2\u0006\u0002\u00087R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0008R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0008R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\"\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0008R\u0013\u0010$\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0008\u00a8\u00069"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/DMMAuthSDK;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "cookieService",
        "Lcom/dmm/android/lib/auth/service/CookieService;",
        "idToken",
        "Lcom/dmm/android/lib/auth/model/IDToken;",
        "getIdToken",
        "()Lcom/dmm/android/lib/auth/model/IDToken;",
        "isAuthorized",
        "",
        "()Z",
        "refreshToken",
        "getRefreshToken",
        "sessionService",
        "Lcom/dmm/android/lib/auth/service/SessionService;",
        "tokenExpire",
        "",
        "getTokenExpire",
        "()Ljava/lang/Integer;",
        "tokenModel",
        "Lcom/dmm/android/lib/auth/model/AccessToken;",
        "getTokenModel",
        "()Lcom/dmm/android/lib/auth/model/AccessToken;",
        "tokenScope",
        "getTokenScope",
        "tokenService",
        "Lcom/dmm/android/lib/auth/service/TokenService;",
        "tokenType",
        "getTokenType",
        "userId",
        "getUserId",
        "issueAccessToken",
        "",
        "authCode",
        "listener",
        "Lcom/dmm/android/lib/auth/listener/TokenEventListener;",
        "issueSessionID",
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
        "launchLoginScreen",
        "isGeneral",
        "Lcom/dmm/android/lib/auth/AuthenticationListener;",
        "launchLoginScreenForIntent",
        "launchRegisterScreen",
        "logout",
        "refreshAccessTokenIfNeeded",
        "setDMMSession",
        "sessionID",
        "Lcom/dmm/android/lib/auth/model/SessionID;",
        "setDMMSession$app_prodRelease",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;

.field public static final KEY_COMPLETE_CONTINUES_LOGIN:Ljava/lang/String; = "complete_continues_login"

.field public static final KEY_DMM_AUTH_CODE:Ljava/lang/String; = "dmm_auth_code"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

.field private final sessionService:Lcom/dmm/android/lib/auth/service/SessionService;

.field private final tokenService:Lcom/dmm/android/lib/auth/service/TokenService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->Companion:Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;

    const-string v0, "DMMAuthSDK"

    const-string v1, "DMMAuthSDK::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideTokenService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/TokenService;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->tokenService:Lcom/dmm/android/lib/auth/service/TokenService;

    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideSessionService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/SessionService;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->sessionService:Lcom/dmm/android/lib/auth/service/SessionService;

    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

    return-void
.end method

.method private final getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->tokenService:Lcom/dmm/android/lib/auth/service/TokenService;

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/service/TokenService;->load()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Lcom/dmm/android/lib/auth/Config;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->Companion:Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;

    invoke-virtual {v0, p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;->init(Lcom/dmm/android/lib/auth/Config;)V

    return-void
.end method

.method public static synthetic issueAccessToken$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method

.method public static synthetic issueSessionID$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Lcom/dmm/android/lib/auth/listener/SessionEventListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueSessionID(Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V

    return-void
.end method

.method public static synthetic refreshAccessTokenIfNeeded$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Lcom/dmm/android/lib/auth/listener/TokenEventListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->refreshAccessTokenIfNeeded(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getIdToken()Lcom/dmm/android/lib/auth/model/IDToken;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getIdToken()Lcom/dmm/android/lib/auth/model/IDToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTokenExpire()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getExpire()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTokenScope()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getScope()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTokenType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getIdToken()Lcom/dmm/android/lib/auth/model/IDToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/IDToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isAuthorized()Z
    .locals 2

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenModel()Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public final issueAccessToken(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueAccessToken$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 1

    const-string v0, "authCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->tokenService:Lcom/dmm/android/lib/auth/service/TokenService;

    invoke-interface {v0, p1, p2}, Lcom/dmm/android/lib/auth/service/TokenService;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method

.method public final issueSessionID()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueSessionID$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Lcom/dmm/android/lib/auth/listener/SessionEventListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final issueSessionID(Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getUserId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string/jumbo v4, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u30ad\u30e3\u30f3\u30bb\u30eb"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    sget-object v0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NO_USER_ID:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    if-eqz v2, :cond_7

    sget-object v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    sget-object v0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->sessionService:Lcom/dmm/android/lib/auth/service/SessionService;

    invoke-interface {v2, v0, v1, p1}, Lcom/dmm/android/lib/auth/service/SessionService;->issueSessionID(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V

    return-void
.end method

.method public final launchLoginScreen(ZLcom/dmm/android/lib/auth/AuthenticationListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p2}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->observe(Lcom/dmm/android/lib/auth/AuthenticationListener;)V

    iget-object p2, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    const-class v2, Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    sget-object v2, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-direct {v1, p1, v2}, Lcom/dmm/android/lib/auth/AuthenticationRequest;-><init>(ZLcom/dmm/android/lib/auth/AuthenticationType;)V

    check-cast v1, Ljava/io/Serializable;

    const-string p1, "authentication_request"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final launchLoginScreenForIntent(ZLcom/dmm/android/lib/auth/AuthenticationListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p2}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->observe(Lcom/dmm/android/lib/auth/AuthenticationListener;)V

    iget-object p2, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    const-class v2, Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    sget-object v2, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-direct {v1, p1, v2}, Lcom/dmm/android/lib/auth/AuthenticationRequest;-><init>(ZLcom/dmm/android/lib/auth/AuthenticationType;)V

    check-cast v1, Ljava/io/Serializable;

    const-string p1, "authentication_request"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "force_launch_web_view"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final launchRegisterScreen(ZLcom/dmm/android/lib/auth/AuthenticationListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p2}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->observe(Lcom/dmm/android/lib/auth/AuthenticationListener;)V

    iget-object p2, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->context:Landroid/content/Context;

    const-class v2, Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    sget-object v2, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-direct {v1, p1, v2}, Lcom/dmm/android/lib/auth/AuthenticationRequest;-><init>(ZLcom/dmm/android/lib/auth/AuthenticationType;)V

    check-cast v1, Ljava/io/Serializable;

    const-string p1, "authentication_request"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final logout()V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->tokenService:Lcom/dmm/android/lib/auth/service/TokenService;

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/service/TokenService;->revokeAccessToken()V

    return-void
.end method

.method public final refreshAccessTokenIfNeeded()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->refreshAccessTokenIfNeeded$default(Lcom/dmm/android/lib/auth/DMMAuthSDK;Lcom/dmm/android/lib/auth/listener/TokenEventListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final refreshAccessTokenIfNeeded(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->tokenService:Lcom/dmm/android/lib/auth/service/TokenService;

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/service/TokenService;->refreshAccessToken(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method

.method public final setDMMSession$app_prodRelease(Lcom/dmm/android/lib/auth/model/SessionID;)V
    .locals 1

    const-string v0, "sessionID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/DMMAuthSDK;->cookieService:Lcom/dmm/android/lib/auth/service/CookieService;

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/service/CookieService;->setDMMSession(Lcom/dmm/android/lib/auth/model/SessionID;)V

    return-void
.end method
