.class public abstract Lcom/dmm/android/lib/auth/api/NetworkException;
.super Ljava/lang/Exception;
.source "NetworkException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$NotConnectNetworkException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$ConnectionTimeoutException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$ReadTimeoutException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$FailedSendException;,
        Lcom/dmm/android/lib/auth/api/NetworkException$NotFoundResponse;,
        Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0008\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0008\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/NetworkException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "code",
        "",
        "message",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V",
        "getCode",
        "()Ljava/lang/String;",
        "toString",
        "ConnectionTimeoutException",
        "FailedConnectException",
        "FailedSendException",
        "IllegalParameterException",
        "NotConnectNetworkException",
        "NotFoundResponse",
        "ReadTimeoutException",
        "UnknownException",
        "Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$NotConnectNetworkException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$ConnectionTimeoutException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$ReadTimeoutException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$FailedSendException;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$NotFoundResponse;",
        "Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/NetworkException;->code:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/lib/auth/api/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/NetworkException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/NetworkException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/NetworkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/NetworkException;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
