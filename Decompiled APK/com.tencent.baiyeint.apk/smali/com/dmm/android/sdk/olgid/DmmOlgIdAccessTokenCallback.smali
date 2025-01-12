.class public interface abstract Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;
.super Ljava/lang/Object;
.source "DmmOlgIdAccessTokenCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;,
        Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;
    }
.end annotation


# virtual methods
.method public abstract onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V
.end method

.method public abstract onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
.end method
