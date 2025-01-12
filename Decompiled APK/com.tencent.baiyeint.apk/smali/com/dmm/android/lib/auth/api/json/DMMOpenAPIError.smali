.class public final Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;
.super Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;
.source "DMMOpenAPIError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;,
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Companion;,
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001a\u001b\u001cB-\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        "seen1",
        "",
        "header",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;",
        "body",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;)V",
        "getBody",
        "()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;",
        "getHeader",
        "()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "$serializer",
        "Body",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Companion;


# instance fields
.field private final body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

.field private final header:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->header:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "body"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "header"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;)V
    .locals 1

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->header:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->copy(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;->write$Self(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    return-object v0
.end method

.method public final copy(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;
    .locals 1

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    invoke-direct {v0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;-><init>(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

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

.method public final getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    return-object v0
.end method

.method public getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->header:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMMOpenAPIError(header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->body:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
