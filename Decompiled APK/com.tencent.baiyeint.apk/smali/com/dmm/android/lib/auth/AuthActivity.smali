.class public final Lcom/dmm/android/lib/auth/AuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;,
        Lcom/dmm/android/lib/auth/AuthActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthActivity.kt\ncom/dmm/android/lib/auth/AuthActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,517:1\n203#2:518\n*E\n*S KotlinDebug\n*F\n+ 1 AuthActivity.kt\ncom/dmm/android/lib/auth/AuthActivity\n*L\n338#1:518\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 D2\u00020\u0001:\u0002DEB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&H\u0003J\u0008\u0010\'\u001a\u00020#H\u0002J\u0008\u0010(\u001a\u00020#H\u0002J\u001e\u0010)\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020#0+H\u0002J\u0010\u0010,\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020\u001fH\u0002J\u0018\u00100\u001a\u00020#2\u0006\u00101\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u001fH\u0002J\u0010\u00102\u001a\u00020#2\u0006\u00103\u001a\u00020\u001fH\u0002J\u0010\u00104\u001a\u00020#2\u0006\u0010/\u001a\u00020\u001fH\u0002J\u0010\u00105\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u001fH\u0002J\u0010\u00106\u001a\u00020#2\u0006\u00107\u001a\u000208H\u0002J\u0008\u00109\u001a\u00020#H\u0016J\u0012\u0010:\u001a\u00020#2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0014J\u0008\u0010=\u001a\u00020#H\u0014J\u0012\u0010>\u001a\u00020#2\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0014J\u0008\u0010A\u001a\u00020#H\u0014J\u0008\u0010B\u001a\u00020\u0006H\u0016J\u0008\u0010C\u001a\u00020#H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00068B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R+\u0010\u0015\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00068B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/AuthActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "authenticationType",
        "Lcom/dmm/android/lib/auth/AuthenticationType;",
        "browserOpened",
        "",
        "calledOnNewIntent",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "getConfig",
        "()Lcom/dmm/android/lib/auth/Config;",
        "customTabOpened",
        "<set-?>",
        "forceLaunchWebView",
        "getForceLaunchWebView",
        "()Z",
        "setForceLaunchWebView",
        "(Z)V",
        "forceLaunchWebView$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "isGeneral",
        "setGeneral",
        "isGeneral$delegate",
        "launchWebType",
        "Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "toolbar",
        "Lcom/google/android/material/appbar/MaterialToolbar;",
        "uriHostAuth",
        "",
        "webView",
        "Lcom/dmm/android/lib/auth/view/AuthWebView;",
        "cancelByUser",
        "",
        "continuesLogin",
        "uri",
        "Landroid/net/Uri;",
        "dismissProgress",
        "finishCompletely",
        "handleDeeplink",
        "loginProcess",
        "Lkotlin/Function0;",
        "isSkipAutoLogin",
        "issueAccessToken",
        "launchBrowser",
        "url",
        "launchCustomTabs",
        "packageName",
        "launchWebView",
        "path",
        "launchWebViewFirst",
        "matchLogin",
        "notifyCancelAndFinish",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onResume",
        "onSupportNavigateUp",
        "showProgress",
        "Companion",
        "LaunchWebType",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/dmm/android/lib/auth/AuthActivity$Companion;

.field public static final KEY_AUTHENTICATION_REQUEST:Ljava/lang/String; = "authentication_request"

.field public static final KEY_FORCE_LAUNCH_WEB_VIEW:Ljava/lang/String; = "force_launch_web_view"

.field private static final PARAMETER_AUTO_LOGIN:Ljava/lang/String; = "skip_auto_login"

.field private static final PARAMETER_CODE:Ljava/lang/String; = "code"

.field private static final PARAMETER_PATH:Ljava/lang/String; = "path"

.field private static final PROGRESS_COMPLETE:I = 0x64

.field private static final URI_HOST_CONTINUE:Ljava/lang/String; = "authsdk-continue"


# instance fields
.field private authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

.field private browserOpened:Z

.field private calledOnNewIntent:Z

.field private customTabOpened:Z

.field private final forceLaunchWebView$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final isGeneral$delegate:Lkotlin/properties/ReadWriteProperty;

.field private launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

.field private progress:Landroid/widget/ProgressBar;

.field private toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

.field private uriHostAuth:Ljava/lang/String;

.field private webView:Lcom/dmm/android/lib/auth/view/AuthWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/dmm/android/lib/auth/AuthActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isGeneral"

    const-string v4, "isGeneral()Z"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    aput-object v2, v1, v5

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "forceLaunchWebView"

    const-string v4, "getForceLaunchWebView()Z"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/dmm/android/lib/auth/AuthActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/dmm/android/lib/auth/AuthActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/AuthActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/AuthActivity;->Companion:Lcom/dmm/android/lib/auth/AuthActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->isGeneral$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->NONE:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->forceLaunchWebView$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$cancelByUser(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->cancelByUser()V

    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->dismissProgress()V

    return-void
.end method

.method public static final synthetic access$finishCompletely(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishCompletely()V

    return-void
.end method

.method public static final synthetic access$getConfig$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/Config;
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/view/AuthWebView;
    .locals 1

    iget-object p0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez p0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$issueAccessToken(Lcom/dmm/android/lib/auth/AuthActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->issueAccessToken(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$notifyCancelAndFinish(Lcom/dmm/android/lib/auth/AuthActivity;Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method public static final synthetic access$setWebView$p(Lcom/dmm/android/lib/auth/AuthActivity;Lcom/dmm/android/lib/auth/view/AuthWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    return-void
.end method

.method public static final synthetic access$showProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->showProgress()V

    return-void
.end method

.method private final cancelByUser()V
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->USER_OPERATION:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method private final continuesLogin(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->isSkipAutoLogin(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/service/CookieService;->renewalCookie()V

    :cond_0
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REDIRECT_PATH:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->matchLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebView(Ljava/lang/String;)V

    sget-object p1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebView(Ljava/lang/String;)V

    sget-object p1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchBrowser(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/dmm/android/lib/auth/CustomTabsResolver;->INSTANCE:Lcom/dmm/android/lib/auth/CustomTabsResolver;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "packageManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/CustomTabsResolver;->findSupportedCustomTabsBrowser(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "it.activityInfo.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Uri.parse(continueURL).toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchCustomTabs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final dismissProgress()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->progress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progress"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private final finishCompletely()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method private final getConfig()Lcom/dmm/android/lib/auth/Config;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    return-object v0
.end method

.method private final getForceLaunchWebView()Z
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->forceLaunchWebView$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final handleDeeplink(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->uriHostAuth:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v2, "uriHostAuth"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez p1, :cond_2

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->setVisibility(I)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p2, "authsdk-continue"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->continuesLogin(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_4
    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->UNKNOWN_HOST:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method private final isGeneral()Z
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->isGeneral$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isSkipAutoLogin(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "skip_auto_login"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final issueAccessToken(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideTokenService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/TokenService;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;

    invoke-direct {v1, p0}, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;-><init>(Lcom/dmm/android/lib/auth/AuthActivity;)V

    check-cast v1, Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    invoke-interface {v0, p1, v1}, Lcom/dmm/android/lib/auth/service/TokenService;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    :cond_0
    return-void
.end method

.method private final launchBrowser(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-nez v0, :cond_0

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->browserOpened:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishCompletely()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->browserOpened:Z

    invoke-virtual {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebViewFirst(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final launchCustomTabs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-nez v0, :cond_0

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->customTabOpened:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishCompletely()V

    return-void

    :cond_1
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-static {p0}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getNight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDay()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->customTabOpened:Z

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private final launchWebView(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    const-string/jumbo v1, "webView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v3}, Lcom/dmm/android/lib/auth/view/AuthWebView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const-string/jumbo v4, "toolbar"

    if-lt v0, v3, :cond_b

    invoke-static {p0}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getNight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setBackgroundColor(I)V

    :cond_5
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getNightIcon()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setBackgroundColor(I)V

    :cond_9
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDayIcon()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setBackgroundColor(I)V

    :cond_d
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDayIcon()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez v3, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    :cond_f
    :goto_1
    new-instance v0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v4

    new-instance v5, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;

    invoke-direct {v5, p0}, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;-><init>(Lcom/dmm/android/lib/auth/AuthActivity;)V

    check-cast v5, Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    invoke-direct {v0, v3, v4, v5}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;-><init>(Landroid/content/Context;Lcom/dmm/android/lib/auth/Config;Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;)V

    new-instance v3, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;

    invoke-direct {v3, p0}, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;-><init>(Lcom/dmm/android/lib/auth/AuthActivity;)V

    iget-object v4, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez v4, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v4, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    check-cast v3, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v3}, Lcom/dmm/android/lib/auth/view/AuthWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v3, "webView.settings"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final launchWebViewFirst(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-nez v0, :cond_0

    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void

    :cond_0
    sget-object v0, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/service/CookieService;->renewalCookie()V

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebView(Ljava/lang/String;)V

    return-void
.end method

.method private final matchLogin(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(https?)://(dev-|stg-)*accounts\\.dmm\\.(com|co\\.jp)/app/service/login/password(=.*|\\?.*|$)$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private final notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->notifyCancel(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishCompletely()V

    return-void
.end method

.method private final setForceLaunchWebView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->forceLaunchWebView$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setGeneral(Z)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->isGeneral$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->progress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progress"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->cancelByUser()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/dmm/android/lib/auth/R$layout;->activity_dmm_auth_sdk:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->setContentView(I)V

    sget p1, Lcom/dmm/android/lib/auth/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.progress_bar)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->progress:Landroid/widget/ProgressBar;

    sget p1, Lcom/dmm/android/lib/auth/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.toolbar)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget p1, Lcom/dmm/android/lib/auth/R$id;->auth_web_view:I

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.auth_web_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dmm/android/lib/auth/view/AuthWebView;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->webView:Lcom/dmm/android/lib/auth/view/AuthWebView;

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string/jumbo v0, "toolbar"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/dmm/android/lib/auth/AuthActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/lib/auth/AuthActivity$onCreate$1;-><init>(Lcom/dmm/android/lib/auth/AuthActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/Config;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "configRedirect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->uriHostAuth:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authentication_request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    check-cast p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/AuthenticationRequest;->getAuthenticationType()Lcom/dmm/android/lib/auth/AuthenticationType;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->setGeneral(Z)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "force_launch_web_view"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->setForceLaunchWebView(Z)V

    :cond_4
    return-void

    :catch_0
    sget-object p1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REDIRECT_URI:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->customTabOpened:Z

    iput-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->browserOpened:Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/AuthActivity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/AuthActivity$onNewIntent$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/dmm/android/lib/auth/AuthActivity$onNewIntent$$inlined$let$lambda$1;-><init>(Landroid/net/Uri;Lcom/dmm/android/lib/auth/AuthActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->handleDeeplink(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;-><init>(Landroid/net/Uri;Lcom/dmm/android/lib/auth/AuthActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/dmm/android/lib/auth/AuthActivity;->handleDeeplink(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-nez v0, :cond_2

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->notifyCancelAndFinish(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void

    :cond_2
    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->isGeneral()Z

    move-result v1

    invoke-static {p0}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dmm/android/lib/auth/AuthActivityKt;->generateUrl(Lcom/dmm/android/lib/auth/AuthenticationType;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    sget-object v2, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->NONE:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/dmm/android/lib/auth/AuthActivity;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    sget-object v2, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebViewFirst(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getSessionSharing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebViewFirst(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-void

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getForceLaunchWebView()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebViewFirst(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchBrowser(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->BROWSER:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    :goto_0
    return-void

    :cond_6
    sget-object v1, Lcom/dmm/android/lib/auth/CustomTabsResolver;->INSTANCE:Lcom/dmm/android/lib/auth/CustomTabsResolver;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "packageManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/dmm/android/lib/auth/CustomTabsResolver;->findSupportedCustomTabsBrowser(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "it.activityInfo.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchCustomTabs(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->CUSTOM_TABS:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->getForceLaunchWebView()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebViewFirst(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->launchBrowser(Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->BROWSER:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    :goto_1
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->calledOnNewIntent:Z

    goto :goto_2

    :cond_a
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity;->launchWebType:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    sget-object v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->cancelByUser()V

    :cond_b
    :goto_2
    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/AuthActivity;->finishCompletely()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    return v0
.end method
