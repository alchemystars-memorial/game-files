.class public Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;
.super Ljava/lang/Object;
.source "DmmOlgIdCookieUtil.java"


# static fields
.field private static final COOKIE_ADULT_URL:Ljava/lang/String; = "dmm.co.jp"

.field protected static final COOKIE_DEBUG_LEVEL_KEY:Ljava/lang/String; = "debug-level"

.field protected static final COOKIE_DMM_APP_KEY:Ljava/lang/String; = "dmm_app"

.field private static final COOKIE_DOMAIN_ADULT:Ljava/lang/String; = ".dmm.co.jp"

.field private static final COOKIE_DOMAIN_GENERAL:Ljava/lang/String; = ".dmm.com"

.field public static final COOKIE_DVAL:Ljava/lang/String; = "DVAL"

.field public static final COOKIE_SECUREID:Ljava/lang/String; = "secid"

.field protected static final COOKIE_SP_DECLARED_AGE_CHECK_KEY:Ljava/lang/String; = "sp_decleared_age_check"

.field public static final COOKIE_UNIQUEID:Ljava/lang/String; = "dmm_app_uid"

.field private static final COOKIE_URL:Ljava/lang/String; = "dmm.com"

.field private static final PATTERN_GET_COOKIE_VALUE:Ljava/util/regex/Pattern;

.field private static final isUseCookieSyncManager:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->isUseCookieSyncManager:Z

    const-string v0, "([^=;\\s]*)=([^;]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->PATTERN_GET_COOKIE_VALUE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCookieValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " domain="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p0, "; secure"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_1

    const-string p0, "; httpOnly"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static postCookieProcess()V
    .locals 1

    sget-boolean v0, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->isUseCookieSyncManager:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    return-void
.end method

.method protected static preCookieProcess(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sget-boolean v1, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->isUseCookieSyncManager:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-object v0
.end method

.method private static removeAllCookies(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->preCookieProcess(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :goto_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->postCookieProcess()V

    return-void
.end method

.method public static resetCookieForLogout(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->removeAllCookies(Landroid/content/Context;)V

    return-void
.end method

.method protected static setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->preCookieProcess(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-static {p2, p3, p4, p5, p6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->createCookieValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->postCookieProcess()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setCookie(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookieForSandbox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookieForService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setCookieForSandbox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->removeAllCookies(Landroid/content/Context;)V

    const-string v1, "dmm.com"

    const-string v2, "DVAL"

    const-string v4, ".dmm.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "DVAL"

    const-string v11, ".dmm.co.jp"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object/from16 v10, p2

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.co.jp"

    const-string v2, "dmm_app"

    const-string v3, "1"

    const-string v4, ".dmm.co.jp"

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "debug-level"

    const-string v10, "0"

    const-string v11, ".dmm.co.jp"

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.co.jp"

    const-string/jumbo v2, "sp_decleared_age_check"

    const-string v3, "1"

    const-string v4, ".dmm.co.jp"

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static setCookieForService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->removeAllCookies(Landroid/content/Context;)V

    const-string v1, "dmm.com"

    const-string v2, "dmm_app_uid"

    const-string v4, ".dmm.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "dmm_app_uid"

    const-string v11, ".dmm.co.jp"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object v10, p1

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.com"

    const-string v2, "secid"

    const-string v4, ".dmm.com"

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "secid"

    const-string v11, ".dmm.co.jp"

    move-object/from16 v10, p2

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.com"

    const-string v2, "secid"

    const-string v4, ".dmm.com"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "secid"

    const-string v11, ".dmm.co.jp"

    const/4 v12, 0x1

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.co.jp"

    const-string v2, "dmm_app"

    const-string v3, "1"

    const-string v4, ".dmm.co.jp"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v8, "dmm.co.jp"

    const-string v9, "debug-level"

    const-string v10, "0"

    const-string v11, ".dmm.co.jp"

    const/4 v12, 0x0

    invoke-static/range {v7 .. v13}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "dmm.co.jp"

    const-string/jumbo v2, "sp_decleared_age_check"

    const-string v3, "1"

    const-string v4, ".dmm.co.jp"

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
