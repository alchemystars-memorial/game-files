.class public Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
.super Ljava/lang/Object;
.source "DmmOlgIdSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;,
        Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;,
        Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x29cf17fc1c4e6599L


# instance fields
.field private mApplicationID:Ljava/lang/String;

.field private mAuthenticationClientID:Ljava/lang/String;

.field private mAuthenticationClientSecret:Ljava/lang/String;

.field private mAuthenticationConnectionTimeout:I

.field private mAuthenticationIsRegistrationLink:Z

.field private mAuthenticationIsSnsLink:Z

.field private mAuthenticationReadTimeout:I

.field private mAuthenticationSecretKey:Ljava/lang/String;

.field private mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mEmulator:Z

.field private mEnvironment:Ljava/lang/String;

.field private mIsAdult:Z

.field private mIsSandbox:Z

.field private mOAuthSignaturePublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationConnectionTimeout:I

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationReadTimeout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsSnsLink:Z

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsRegistrationLink:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsSandbox:Z

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsAdult:Z

    const-string v0, "developmentMode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsSandbox:Z

    const-string v0, "isEmulator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEmulator:Z

    const-string v0, "environment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "stg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "prod"

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    :goto_1
    const-string v0, "oauthSignaturePublicKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mOAuthSignaturePublicKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->loadKey()V

    invoke-direct {p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->initialize(Ljava/util/Map;)V

    return-void
.end method

.method private initialize(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getApplicationID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mApplicationID:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getConsumerSecret()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerSecret:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientID:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientSecret()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientSecret:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationSecretKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationConnectionTimeout()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationConnectionTimeout()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationConnectionTimeout:I

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationReadTimeout()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationReadTimeout()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationReadTimeout:I

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsSnsLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsSnsLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsSnsLink:Z

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsRegistrationLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsRegistrationLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsRegistrationLink:Z

    :cond_3
    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->validate()V

    return-void
.end method

.method private loadKey()V
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsSandbox:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConfigurationKey:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;

    :goto_0
    return-void
.end method

.method private validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mApplicationID:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsSandbox:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEmulator:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientID:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string v1, "Authentication Client ID is not set, check your Configuration XML."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEmulator:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientSecret:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string v1, "Authentication Client Secret is not set, check your Configuration XML."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string v1, "Consumer Secret is not set, check your Configuration XML."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string v1, "Consumer Key is not set, check your Configuration XML."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string v1, "Application ID is not set, check your Configuration XML."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getApplicationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mApplicationID:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationClientID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientID:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationClientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationConnectionTimeout:I

    return v0
.end method

.method public getAuthenticationIsRegistration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsRegistrationLink:Z

    return v0
.end method

.method public getAuthenticationIsSnsLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationIsSnsLink:Z

    return v0
.end method

.method public getAuthenticationReadTimeout()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationReadTimeout:I

    return v0
.end method

.method public getAuthenticationSecretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mAuthenticationSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthSignaturePublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mOAuthSignaturePublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsAdult:Z

    return v0
.end method

.method public isDevelop()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmulator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEmulator:Z

    return v0
.end method

.method public isEmulatorProductionBuild()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isSandbox()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEmulator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduction()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    const-string v1, "prod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSandbox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mIsSandbox:Z

    return v0
.end method

.method public isStaging()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->mEnvironment:Ljava/lang/String;

    const-string/jumbo v1, "stg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
