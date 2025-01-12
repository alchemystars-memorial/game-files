.class public interface abstract Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;
.super Ljava/lang/Object;
.source "DmmOlgIdResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$CheckUserErrorCode;,
        Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
    }
.end annotation


# virtual methods
.method public abstract getCallbackResponseBody()Ljava/lang/Object;
.end method

.method public abstract getCallbackStatusCode()I
.end method

.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorKind()Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
.end method

.method public abstract getOlgId()Ljava/lang/String;
.end method

.method public abstract isSuccess()Z
.end method
