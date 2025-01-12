.class public Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;
.super Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;
.source "DmmSandboxLoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse$JsonKey;
    }
.end annotation


# instance fields
.field private mAppAutoLoginToken:Ljava/lang/String;

.field private mAutoLoginToken:Ljava/lang/String;

.field private mErrorUrl:Ljava/lang/String;

.field private mGrade:Ljava/lang/String;

.field private mLoginDevice:Ljava/lang/String;

.field private mMemberId:Ljava/lang/String;

.field private mSecureId:Ljava/lang/String;

.field private mSendMailFlag:Ljava/lang/String;

.field private mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;-><init>(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->parseData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private parseData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "memberId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mMemberId:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "uniqueId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mUniqueId:Ljava/lang/String;

    :cond_1
    const-string v0, "secureId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mSecureId:Ljava/lang/String;

    :cond_2
    const-string v0, "autoLoginToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mAutoLoginToken:Ljava/lang/String;

    :cond_3
    const-string v0, "sendMailFlg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mSendMailFlag:Ljava/lang/String;

    :cond_4
    const-string v0, "loginDevice"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mLoginDevice:Ljava/lang/String;

    :cond_5
    const-string v0, "appToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mAppAutoLoginToken:Ljava/lang/String;

    :cond_6
    const-string/jumbo v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mErrorUrl:Ljava/lang/String;

    :cond_7
    const-string v0, "grade"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mGrade:Ljava/lang/String;

    :cond_8
    return-void
.end method


# virtual methods
.method public getAppAutoLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mAppAutoLoginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mAutoLoginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mErrorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mGrade:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mLoginDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mSecureId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendMailFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mSendMailFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method
