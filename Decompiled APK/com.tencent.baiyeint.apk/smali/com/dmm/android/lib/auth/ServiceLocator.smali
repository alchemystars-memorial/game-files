.class public final Lcom/dmm/android/lib/auth/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/ServiceLocator;",
        "",
        "()V",
        "provideCookieService",
        "Lcom/dmm/android/lib/auth/service/CookieService;",
        "context",
        "Landroid/content/Context;",
        "provideSessionService",
        "Lcom/dmm/android/lib/auth/service/SessionService;",
        "provideTokenService",
        "Lcom/dmm/android/lib/auth/service/TokenService;",
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
.field public static final INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/ServiceLocator;-><init>()V

    sput-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/service/CookieServiceImpl;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/service/CookieServiceImpl;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/dmm/android/lib/auth/service/CookieService;

    return-object v0
.end method

.method public final provideSessionService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/SessionService;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/dmm/android/lib/auth/api/HttpClient;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/dmm/android/lib/auth/api/HttpClient;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;

    invoke-direct {v1, p1}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    new-instance p1, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;

    invoke-direct {p1, v0, v1}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;-><init>(Lcom/dmm/android/lib/auth/pref/SessionIdPreferences;Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/SessionService;

    return-object p1
.end method

.method public final provideTokenService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/TokenService;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/dmm/android/lib/auth/pref/TokenPreferences;

    invoke-direct {v2, p1}, Lcom/dmm/android/lib/auth/pref/TokenPreferences;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;-><init>()V

    new-instance v1, Lcom/dmm/android/lib/auth/service/CookieServiceImpl;

    invoke-direct {v1, p1}, Lcom/dmm/android/lib/auth/service/CookieServiceImpl;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/dmm/android/lib/auth/api/HttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p1, v3, v4, v5}, Lcom/dmm/android/lib/auth/api/HttpClient;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;

    invoke-direct {v5, p1}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    new-instance v6, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;

    invoke-direct {v6, p1}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    new-instance p1, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    move-object v3, v0

    check-cast v3, Lcom/dmm/android/lib/auth/service/JWTService;

    move-object v4, v1

    check-cast v4, Lcom/dmm/android/lib/auth/service/CookieService;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;-><init>(Lcom/dmm/android/lib/auth/pref/TokenPreferences;Lcom/dmm/android/lib/auth/service/JWTService;Lcom/dmm/android/lib/auth/service/CookieService;Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/TokenService;

    return-object p1
.end method
