.class public final Lcom/dmm/android/lib/auth/api/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\n0\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u001b\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\n0\tH\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003JO\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u001a\u0008\u0002\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\n0\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\u0006\u0010 \u001a\u00020\u001dJ\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR#\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "",
        "request",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "responseCode",
        "",
        "responseMessage",
        "",
        "header",
        "",
        "",
        "body",
        "(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V",
        "getBody",
        "()Ljava/lang/String;",
        "getHeader",
        "()Ljava/util/Map;",
        "getRequest",
        "()Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "getResponseCode",
        "()I",
        "getResponseMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "isSuccess",
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
.field private final body:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final request:Lcom/dmm/android/lib/auth/api/HttpRequest;

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/api/HttpRequest;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    iput p2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    iput-object p5, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/api/HttpResponse;Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/dmm/android/lib/auth/api/HttpResponse;->copy(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/api/HttpRequest;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dmm/android/lib/auth/api/HttpResponse;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/lib/auth/api/HttpResponse;-><init>(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/api/HttpResponse;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    iget v1, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

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

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    return-object v0
.end method

.method public final getRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccess()Z
    .locals 2

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpStatus;->Companion:Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;

    iget v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponse(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpResponse;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
