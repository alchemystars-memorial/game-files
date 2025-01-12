.class public interface abstract Lcom/dmm/games/android/volley/toolbox/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method
