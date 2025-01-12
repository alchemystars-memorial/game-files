.class public Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;
.super Lcom/dmm/games/android/volley/DefaultRetryPolicy;
.source "DmmOlgIdRetryPolicy.java"


# static fields
.field public static final RETRY_COUNT:I = 0x3

.field public static final TIMEOUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x7530

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/dmm/games/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method


# virtual methods
.method public retry(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/VolleyError;
        }
    .end annotation

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    iget v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/dmm/games/android/volley/DefaultRetryPolicy;->retry(Lcom/dmm/games/android/volley/VolleyError;)V

    return-void
.end method
