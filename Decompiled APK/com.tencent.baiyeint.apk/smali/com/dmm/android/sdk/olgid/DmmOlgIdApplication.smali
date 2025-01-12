.class public abstract Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;
.super Landroid/app/Application;
.source "DmmOlgIdApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getApplicationID()Ljava/lang/String;
.end method

.method protected getBuildEnvironment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getClientID()Ljava/lang/String;
.end method

.method protected abstract getClientSecret()Ljava/lang/String;
.end method

.method protected abstract getConfigurationXMLResourceID()I
.end method

.method protected abstract getConnectionTimeout()Ljava/lang/String;
.end method

.method protected abstract getConsumerKey()Ljava/lang/String;
.end method

.method protected abstract getConsumerSecret()Ljava/lang/String;
.end method

.method protected getDevelopmentMode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIsRegistrationLink()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "true"

    return-object v0
.end method

.method protected getIsSnsLink()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "true"

    return-object v0
.end method

.method protected getOauthSignaturePublicKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getReadTimeout()Ljava/lang/String;
.end method

.method protected abstract getRedirectURL()Ljava/lang/String;
.end method

.method protected abstract getSecretKey()Ljava/lang/String;
.end method

.method protected isEmulator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isUseConfigurationXML()Z
.end method

.method public onCreate()V
    .locals 21

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->isUseConfigurationXML()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getConfigurationXMLResourceID()I

    move-result v0

    const-string v1, "NATIVE"

    const-string v2, "3.3.3"

    move-object/from16 v3, p0

    invoke-static {v3, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getApplicationID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getConsumerKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getConsumerSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getClientID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getClientSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getSecretKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getRedirectURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getConnectionTimeout()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getReadTimeout()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getIsSnsLink()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getIsRegistrationLink()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getBuildEnvironment()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getDevelopmentMode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->getOauthSignaturePublicKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdApplication;->isEmulator()Z

    move-result v18

    const-string v19, "NATIVE"

    const-string v20, "3.3.3"

    invoke-static/range {v3 .. v20}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
