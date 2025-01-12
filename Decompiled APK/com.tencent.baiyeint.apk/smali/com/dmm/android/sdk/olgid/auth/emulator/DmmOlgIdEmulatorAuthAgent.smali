.class public Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;
.super Ljava/lang/Object;
.source "DmmOlgIdEmulatorAuthAgent.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent$Preference;
    }
.end annotation


# static fields
.field protected static sInstance:Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;
    .locals 2

    const-class v0, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    invoke-direct {v1, p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    :cond_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getInstance()Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;
    .locals 2

    const-class v0, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->sInstance:Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent$Preference;->NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private sendEmptySuccess(Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/DmmApiCallBack;->onSuccess()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserHash()V
    .locals 0

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessTokenExpirationDate()Ljava/util/Date;
    .locals 5

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9fa52400L

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecureId()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emulator_secure_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emulator_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserHash()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isAbleUpdateAccessToken()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAccessTokenExpired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getSecureId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPublishedIntSession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logout()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->saveSecureId(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->saveUniqueId(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->clearInstance()V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->resetCookieForLogout(Landroid/content/Context;)V

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->clearInstance()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public publishIntSession(Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->sendEmptySuccess(Lcom/dmm/android/api/DmmApiCallBack;)V

    return-void
.end method

.method public refreshUserHash()V
    .locals 0

    return-void
.end method

.method public saveSecureId(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulator_secure_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUniqueId(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulator_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startLoginActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public startRegisterActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public updateAccessToken(Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->sendEmptySuccess(Lcom/dmm/android/api/DmmApiCallBack;)V

    return-void
.end method
