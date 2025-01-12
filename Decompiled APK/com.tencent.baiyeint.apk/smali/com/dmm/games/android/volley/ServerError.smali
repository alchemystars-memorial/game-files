.class public Lcom/dmm/games/android/volley/ServerError;
.super Lcom/dmm/games/android/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/games/android/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dmm/games/android/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/games/android/volley/VolleyError;-><init>(Lcom/dmm/games/android/volley/NetworkResponse;)V

    return-void
.end method
