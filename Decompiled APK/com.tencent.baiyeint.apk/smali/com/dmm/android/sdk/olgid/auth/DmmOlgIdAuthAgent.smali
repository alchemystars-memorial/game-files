.class public interface abstract Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
.super Ljava/lang/Object;
.source "DmmOlgIdAuthAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent$Creator;
    }
.end annotation


# virtual methods
.method public abstract clearUserHash()V
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAccessTokenExpirationDate()Ljava/util/Date;
.end method

.method public abstract getSecureId()Ljava/lang/String;
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public abstract getUserHash()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract isAbleUpdateAccessToken()Z
.end method

.method public abstract isAccessTokenExpired()Z
.end method

.method public abstract isLoggedIn()Z
.end method

.method public abstract isPublishedIntSession()Z
.end method

.method public abstract logout()V
.end method

.method public abstract publishIntSession(Lcom/dmm/android/api/DmmApiCallBack;)V
.end method

.method public abstract refreshUserHash()V
.end method

.method public abstract startLoginActivity(Landroid/app/Activity;)V
.end method

.method public abstract startRegisterActivity(Landroid/app/Activity;)V
.end method

.method public abstract updateAccessToken(Lcom/dmm/android/api/DmmApiCallBack;)V
.end method
