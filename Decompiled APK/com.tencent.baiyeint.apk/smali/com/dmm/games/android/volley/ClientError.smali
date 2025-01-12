.class public Lcom/dmm/games/android/volley/ClientError;
.super Lcom/dmm/games/android/volley/ServerError;
.source "ClientError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/games/android/volley/ServerError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dmm/games/android/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/games/android/volley/ServerError;-><init>(Lcom/dmm/games/android/volley/NetworkResponse;)V

    return-void
.end method
