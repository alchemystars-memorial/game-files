.class public final Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/HttpRequestBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006J\u000e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;",
        "",
        "url",
        "Ljava/net/URL;",
        "(Ljava/net/URL;)V",
        "body",
        "",
        "header",
        "",
        "method",
        "Lcom/dmm/android/lib/auth/api/constant/HttpMethod;",
        "accept",
        "",
        "type",
        "Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;",
        "value",
        "authorization",
        "authorizationBasic",
        "token",
        "authorizationBearer",
        "build",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "contentType",
        "charset",
        "key",
        "Lcom/dmm/android/lib/auth/api/constant/HttpHeader;",
        "host",
        "Companion",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_BASIC:Ljava/lang/String; = "Basic "

.field public static final AUTHORIZATION_BEARER:Ljava/lang/String; = "Bearer "

.field public static final CONTENT_TYPE_CHARSET:Ljava/lang/String; = "; charset="

.field public static final Companion:Lcom/dmm/android/lib/auth/api/HttpRequestBuilder$Companion;


# instance fields
.field private body:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->Companion:Lcom/dmm/android/lib/auth/api/HttpRequestBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->url:Ljava/net/URL;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body:Ljava/lang/String;

    return-void
.end method

.method public static synthetic contentType$default(Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->Accept:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    invoke-virtual {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V

    return-void
.end method

.method public final authorization(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->Authorization:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    invoke-virtual {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V

    return-void
.end method

.method public final authorizationBasic(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->authorization(Ljava/lang/String;)V

    return-void
.end method

.method public final authorizationBearer(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->authorization(Ljava/lang/String;)V

    return-void
.end method

.method public final body(Ljava/lang/String;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body:Ljava/lang/String;

    return-void
.end method

.method public final build()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 5

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->ContentLength:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body:Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/HttpRequest;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->url:Ljava/net/URL;

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header:Ljava/util/Map;

    iget-object v3, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->method:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/dmm/android/lib/auth/api/HttpRequest;-><init>(Ljava/net/URL;Lcom/dmm/android/lib/auth/api/constant/HttpMethod;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HttpMethod is undefined. Make sure to call HttpRequestBuilder.method(HttpMethod)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final contentType(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType(Ljava/lang/String;)V

    return-void
.end method

.method public final contentType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->ContentType:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    invoke-virtual {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V

    return-void
.end method

.method public final header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final host(Ljava/lang/String;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->Host:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    invoke-virtual {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->header(Lcom/dmm/android/lib/auth/api/constant/HttpHeader;Ljava/lang/String;)V

    return-void
.end method

.method public final method(Lcom/dmm/android/lib/auth/api/constant/HttpMethod;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->method:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    return-void
.end method
