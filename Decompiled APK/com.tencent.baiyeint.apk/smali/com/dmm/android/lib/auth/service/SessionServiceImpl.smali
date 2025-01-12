.class public final Lcom/dmm/android/lib/auth/service/SessionServiceImpl;
.super Ljava/lang/Object;
.source "SessionServiceImpl.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/service/SessionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/service/SessionServiceImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/SessionServiceImpl;",
        "Lcom/dmm/android/lib/auth/service/SessionService;",
        "preferences",
        "Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;",
        "issueSessionIdApi",
        "Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;",
        "(Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;)V",
        "getSessionID",
        "Lcom/dmm/android/lib/auth/model/SessionID;",
        "issueSessionID",
        "",
        "userId",
        "",
        "accessToken",
        "listener",
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
        "save",
        "response",
        "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/service/SessionServiceImpl$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final issueSessionIdApi:Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;

.field private final preferences:Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->Companion:Lcom/dmm/android/lib/auth/service/SessionServiceImpl$Companion;

    const-string v0, "SessionServiceImpl"

    const-string v1, "SessionServiceImpl::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issueSessionIdApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->issueSessionIdApi:Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$save(Lcom/dmm/android/lib/auth/service/SessionServiceImpl;Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->save(Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V

    return-void
.end method

.method private final save(Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;->getSecureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;->putSecureId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;->putUniqueId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSessionID()Lcom/dmm/android/lib/auth/model/SessionID;
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;->getSecureId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->preferences:Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/dmm/android/lib/auth/model/SessionID;

    invoke-direct {v1, v0, v2}, Lcom/dmm/android/lib/auth/model/SessionID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public issueSessionID(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
    .locals 3

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->issueSessionIdApi:Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;

    new-instance v1, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;

    invoke-direct {v1, p0, p3, v2}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;-><init>(Lcom/dmm/android/lib/auth/service/SessionServiceImpl;Lcom/dmm/android/lib/auth/listener/SessionEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    check-cast v1, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->issueSessionId(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method
