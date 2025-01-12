.class public interface abstract Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;
.super Ljava/lang/Object;
.source "DmmGameStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V
.end method

.method public abstract onFailure(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/games/android/volley/VolleyError;)V
.end method

.method public abstract onSuccess(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;)V
.end method
