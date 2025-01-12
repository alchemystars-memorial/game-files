.class public final Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;
.super Lcom/dmm/android/lib/auth/service/CertificateResult;
.source "CertificateResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/service/CertificateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;",
        "Lcom/dmm/android/lib/auth/service/CertificateResult;",
        "throwable",
        "",
        "(Ljava/lang/Throwable;)V",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/service/CertificateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->copy(Ljava/lang/Throwable;)Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(Ljava/lang/Throwable;)Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;
    .locals 1

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
