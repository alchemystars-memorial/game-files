.class public final Lcom/dmm/android/lib/auth/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/AuthenticationRequest;",
        "Ljava/io/Serializable;",
        "isGeneral",
        "",
        "authenticationType",
        "Lcom/dmm/android/lib/auth/AuthenticationType;",
        "(ZLcom/dmm/android/lib/auth/AuthenticationType;)V",
        "getAuthenticationType",
        "()Lcom/dmm/android/lib/auth/AuthenticationType;",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field private final authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

.field private final isGeneral:Z


# direct methods
.method public constructor <init>(ZLcom/dmm/android/lib/auth/AuthenticationType;)V
    .locals 1

    const-string v0, "authenticationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    iput-object p2, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/AuthenticationRequest;ZLcom/dmm/android/lib/auth/AuthenticationType;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/AuthenticationRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/AuthenticationRequest;->copy(ZLcom/dmm/android/lib/auth/AuthenticationType;)Lcom/dmm/android/lib/auth/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    return v0
.end method

.method public final component2()Lcom/dmm/android/lib/auth/AuthenticationType;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    return-object v0
.end method

.method public final copy(ZLcom/dmm/android/lib/auth/AuthenticationType;)Lcom/dmm/android/lib/auth/AuthenticationRequest;
    .locals 1

    const-string v0, "authenticationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    invoke-direct {v0, p1, p2}, Lcom/dmm/android/lib/auth/AuthenticationRequest;-><init>(ZLcom/dmm/android/lib/auth/AuthenticationType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    iget-boolean v1, p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

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

.method public final getAuthenticationType()Lcom/dmm/android/lib/auth/AuthenticationType;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isGeneral()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationRequest(isGeneral="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->isGeneral:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", authenticationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/AuthenticationRequest;->authenticationType:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
