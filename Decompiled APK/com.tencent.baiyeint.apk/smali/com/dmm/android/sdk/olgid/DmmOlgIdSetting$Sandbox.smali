.class final Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;
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
    name = "Sandbox"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appIdSandbox"

.field public static final CONSUMER_KEY:Ljava/lang/String; = "consumerKeySandbox"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "consumerSecretSandbox"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationID()Ljava/lang/String;
    .locals 1

    const-string v0, "appIdSandbox"

    return-object v0
.end method

.method public getAuthenticationClientId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationClientSecret()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationConnectionTimeout()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationIsRegistrationLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationIsSnsLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationReadTimeout()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationSecretKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    const-string v0, "consumerKeySandbox"

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    const-string v0, "consumerSecretSandbox"

    return-object v0
.end method
