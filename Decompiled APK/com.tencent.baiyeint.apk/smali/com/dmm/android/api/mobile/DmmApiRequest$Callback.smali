.class public interface abstract Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;
.super Ljava/lang/Object;
.source "DmmApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/mobile/DmmApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onParserError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
.end method

.method public abstract onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V
.end method
