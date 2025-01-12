.class public interface abstract Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;
.super Ljava/lang/Object;
.source "DmmPaymentCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/lang/String;)V
.end method

.method public abstract onClose(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;)V
.end method
