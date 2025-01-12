.class public final Lcom/dmm/android/lib/auth/model/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/model/AccessToken;",
        "",
        "token",
        "",
        "type",
        "expire",
        "",
        "scope",
        "idToken",
        "Lcom/dmm/android/lib/auth/model/IDToken;",
        "refreshToken",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)V",
        "getExpire",
        "()I",
        "getIdToken",
        "()Lcom/dmm/android/lib/auth/model/IDToken;",
        "getRefreshToken",
        "()Ljava/lang/String;",
        "getScope",
        "getToken",
        "getType",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final expire:I

.field private final idToken:Lcom/dmm/android/lib/auth/model/IDToken;

.field private final refreshToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idToken"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    iput p3, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    iput-object p4, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    iput-object p5, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    iput-object p6, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/model/AccessToken;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/model/AccessToken;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/dmm/android/lib/auth/model/AccessToken;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)Lcom/dmm/android/lib/auth/model/AccessToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/dmm/android/lib/auth/model/IDToken;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)Lcom/dmm/android/lib/auth/model/AccessToken;
    .locals 8

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idToken"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/model/AccessToken;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/dmm/android/lib/auth/model/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dmm/android/lib/auth/model/IDToken;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/model/AccessToken;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/model/AccessToken;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    iget v1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

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

.method public final getExpire()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    return v0
.end method

.method public final getIdToken()Lcom/dmm/android/lib/auth/model/IDToken;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessToken(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->expire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->idToken:Lcom/dmm/android/lib/auth/model/IDToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/model/AccessToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
