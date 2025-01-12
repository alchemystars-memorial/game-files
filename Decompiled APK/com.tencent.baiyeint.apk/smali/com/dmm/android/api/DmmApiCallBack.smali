.class public abstract Lcom/dmm/android/api/DmmApiCallBack;
.super Ljava/lang/Object;
.source "DmmApiCallBack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public abstract onFailed(Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;)V
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate()V
    .locals 0

    return-void
.end method

.method public abstract onSuccess()V
.end method
