.class final Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;
.super Ljava/lang/Object;
.source "DmmOlgIdSetting.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Production"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final AUTHENTICATION_CLIENT_ID:Ljava/lang/String; = "authenticationClientId"

.field public static final AUTHENTICATION_CLIENT_SECRET:Ljava/lang/String; = "authenticationClientSecret"

.field public static final AUTHENTICATION_CONNECTION_TIMEOUT:Ljava/lang/String; = "authenticationConnectionTimeout"

.field public static final AUTHENTICATION_IS_REGISTRATION_LINK:Ljava/lang/String; = "authenticationIsRegistrationLink"

.field public static final AUTHENTICATION_IS_SNS_LINK:Ljava/lang/String; = "authenticationIsSnsLink"

.field public static final AUTHENTICATION_READ_TIMEOUT:Ljava/lang/String; = "authenticationReadTimeout"

.field public static final AUTHENTICATION_SECRET_KEY:Ljava/lang/String; = "authenticationSecretKey"

.field public static final CONSUMER_KEY:Ljava/lang/String; = "consumerKey"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "consumerSecret"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationID()Ljava/lang/String;
    .locals 1

    const-string v0, "appId"

    return-object v0
.end method

.method public getAuthenticationClientId()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationClientId"

    return-object v0
.end method

.method public getAuthenticationClientSecret()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationClientSecret"

    return-object v0
.end method

.method public getAuthenticationConnectionTimeout()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationConnectionTimeout"

    return-object v0
.end method

.method public getAuthenticationIsRegistrationLink()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationIsRegistrationLink"

    return-object v0
.end method

.method public getAuthenticationIsSnsLink()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationIsSnsLink"

    return-object v0
.end method

.method public getAuthenticationReadTimeout()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationReadTimeout"

    return-object v0
.end method

.method public getAuthenticationSecretKey()Ljava/lang/String;
    .locals 1

    const-string v0, "authenticationSecretKey"

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    const-string v0, "consumerKey"

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    const-string v0, "consumerSecret"

    return-object v0
.end method
