.class public Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;
.super Ljava/lang/Object;
.source "DmmAuthResult.java"


# instance fields
.field private error:Lcom/dmm/android/lib/auth/model/HttpError;

.field private responseId:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/dmm/android/lib/auth/model/HttpError;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->error:Lcom/dmm/android/lib/auth/model/HttpError;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->error:Lcom/dmm/android/lib/auth/model/HttpError;

    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->responseId:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->resultCode:Ljava/lang/String;

    return-void
.end method
