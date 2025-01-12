.class public final Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
.super Ljava/lang/Object;
.source "DMMOpenAPIResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$Companion;,
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB/\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;",
        "",
        "seen1",
        "",
        "resultCode",
        "responseId",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(ILjava/lang/String;)V",
        "getResponseId$annotations",
        "()V",
        "getResponseId",
        "()Ljava/lang/String;",
        "getResultCode$annotations",
        "getResultCode",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "$serializer",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$Companion;


# instance fields
.field private final responseId:Ljava/lang/String;

.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .param p2    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "result_code"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "response_id"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "response_id"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "result_code"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "responseId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;ILjava/lang/String;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->copy(ILjava/lang/String;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getResponseId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "response_id"
    .end annotation

    return-void
.end method

.method public static synthetic getResultCode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "result_code"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-object p0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
    .locals 1

    const-string v0, "responseId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    invoke-direct {v0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    iget v1, p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

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

.method public final getResponseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
