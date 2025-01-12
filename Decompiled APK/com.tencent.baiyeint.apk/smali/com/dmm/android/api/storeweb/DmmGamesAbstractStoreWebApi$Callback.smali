.class public interface abstract Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;
.super Ljava/lang/Object;
.source "DmmGamesAbstractStoreWebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)V
.end method

.method public abstract onFailure(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;Lcom/dmm/games/android/volley/VolleyError;)V
.end method

.method public abstract onSuccess(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;Ljava/lang/String;)V
.end method
