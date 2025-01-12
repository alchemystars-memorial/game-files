.class Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;
.super Ljava/lang/Object;
.source "DmmOlgIdReleaseAuthAgent.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;


# static fields
.field private static final AUTHENTICATION_PREFERENCE_NAME:Ljava/lang/String;

.field private static final ExtendTokenAutomatically:Ljava/lang/Boolean;

.field private static final IsIgnoreSSL:Ljava/lang/Boolean;

.field private static final PREFERENCE_KEY_NAME_USER_HASH:Ljava/lang/String; = "user_hash"

.field private static final TAG:Ljava/lang/String; = "DmmOlgIdReleaseAuthAgent"

.field private static sInstance:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->AUTHENTICATION_PREFERENCE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->IsIgnoreSSL:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->ExtendTokenAutomatically:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz p8, :cond_0

    sget-object v2, Lcom/dmm/android/lib/auth/WebPageOption;->SNS_AUTH_LINK:Lcom/dmm/android/lib/auth/WebPageOption;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p9, :cond_1

    sget-object v2, Lcom/dmm/android/lib/auth/WebPageOption;->MEMBER_REGISTRATION_LINK:Lcom/dmm/android/lib/auth/WebPageOption;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v14, Lcom/dmm/android/lib/auth/Config;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->IsIgnoreSSL:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v2, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->ExtendTokenAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v8, "com.dmm.android.lib.auth.AuthActivity"

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v13}, Lcom/dmm/android/lib/auth/Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/util/List;)V

    invoke-static {v14}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->init(Lcom/dmm/android/lib/auth/Config;)V

    new-instance v2, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-direct {v2, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;
    .locals 12

    const-class v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    :cond_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private saveUserHash(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->AUTHENTICATION_PREFERENCE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_hash"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clearUserHash()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->saveUserHash(Ljava/lang/String;)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAccessTokenExpirationDate()Ljava/util/Date;
    .locals 4

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenExpire()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getSecureId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/auth/DmmAuthData;->getSecureId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/auth/DmmAuthData;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUserHash()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->AUTHENTICATION_PREFERENCE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "user_hash"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbleUpdateAccessToken()Z
    .locals 8

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenExpire()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method public isAccessTokenExpired()Z
    .locals 6

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getTokenExpire()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method public isPublishedIntSession()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->getSecureId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logout()V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->logout()V

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->clearInstance()V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->resetCookieForLogout(Landroid/content/Context;)V

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->clearInstance()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->clearUserHash()V

    return-void
.end method

.method public publishIntSession(Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    new-instance v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;-><init>(Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;Lcom/dmm/android/api/DmmApiCallBack;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueSessionID(Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V

    return-void
.end method

.method public refreshUserHash()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->saveUserHash(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/dmm/android/util/Util;->createUserHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->saveUserHash(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startLoginActivity(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->FRAGMENT_TYPE:Ljava/lang/String;

    sget v2, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->FRAGMENT_TYPE_LOGIN:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0xee42a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startRegisterActivity(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->FRAGMENT_TYPE:Ljava/lang/String;

    sget v2, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->FRAGMENT_TYPE_REGISTER:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0xee42a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public updateAccessToken(Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->mDmmAuthSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    new-instance v1, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$2;-><init>(Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;Lcom/dmm/android/api/DmmApiCallBack;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->refreshAccessTokenIfNeeded(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    return-void
.end method
