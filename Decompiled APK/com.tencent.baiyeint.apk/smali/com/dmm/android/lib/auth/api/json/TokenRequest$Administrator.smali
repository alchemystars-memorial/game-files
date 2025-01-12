.class public final Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;
.super Lcom/dmm/android/lib/auth/api/json/TokenRequest;
.source "TokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/json/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Administrator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$Companion;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0081\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB1\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest;",
        "seen1",
        "",
        "userId",
        "",
        "scope",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getScope$annotations",
        "()V",
        "getScope",
        "()Ljava/lang/String;",
        "getUserId$annotations",
        "getUserId",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "administrator"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$Companion;


# instance fields
.field private final scope:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->Companion:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "scope"
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

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lcom/dmm/android/lib/auth/api/json/TokenRequest;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "scope"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string/jumbo p2, "user_id"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dmm/android/lib/auth/api/json/TokenRequest;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getScope$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "scope"
    .end annotation

    return-void
.end method

.method public static synthetic getUserId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "user_id"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/TokenRequest;->write$Self(Lcom/dmm/android/lib/auth/api/json/TokenRequest;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;

    invoke-direct {v0, p1, p2}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

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

.method public final getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

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

    const-string v1, "Administrator(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
