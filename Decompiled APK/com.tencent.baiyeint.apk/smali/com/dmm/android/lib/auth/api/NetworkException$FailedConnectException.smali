.class public final Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;
.super Lcom/dmm/android/lib/auth/api/NetworkException;
.source "NetworkException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/NetworkException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedConnectException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException;",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "005"

    const-string/jumbo v1, "\u63a5\u7d9a\u304c\u5931\u6557\u3057\u307e\u3057\u305f"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/dmm/android/lib/auth/api/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    :cond_0
    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
