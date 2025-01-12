.class public final Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;
.super Ljava/lang/Object;
.source "TokenResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/json/TokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$Companion;,
        Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 +2\u00020\u0001:\u0002*+B_\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JI\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001J\t\u0010)\u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u0012R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u0012R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0010\u001a\u0004\u0008\u001d\u0010\u0012\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;",
        "",
        "seen1",
        "",
        "accessToken",
        "",
        "tokenType",
        "expiresIn",
        "refreshToken",
        "scope",
        "idToken",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAccessToken$annotations",
        "()V",
        "getAccessToken",
        "()Ljava/lang/String;",
        "getExpiresIn$annotations",
        "getExpiresIn",
        "()I",
        "getIdToken$annotations",
        "getIdToken",
        "getRefreshToken$annotations",
        "getRefreshToken",
        "getScope$annotations",
        "getScope",
        "getTokenType$annotations",
        "getTokenType",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$Companion;


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresIn:I

.field private final idToken:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final tokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->Companion:Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "access_token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "token_type"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "expires_in"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "refresh_token"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "scope"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "id_token"
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

    and-int/lit8 p8, p1, 0x1

    if-eqz p8, :cond_5

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_4

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_3

    iput p4, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iput-object p5, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    iput-object p6, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    iput-object p7, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "scope"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "expires_in"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string/jumbo p2, "token_type"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "access_token"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    iput p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    iput-object p4, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    iput-object p6, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAccessToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "access_token"
    .end annotation

    return-void
.end method

.method public static synthetic getExpiresIn$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "expires_in"
    .end annotation

    return-void
.end method

.method public static synthetic getIdToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "id_token"
    .end annotation

    return-void
.end method

.method public static synthetic getRefreshToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "refresh_token"
    .end annotation

    return-void
.end method

.method public static synthetic getScope$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "scope"
    .end annotation

    return-void
.end method

.method public static synthetic getTokenType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "token_type"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v3, 0x3

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x4

    iget-object v3, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v1, 0x5

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;
    .locals 8

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    iget v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

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

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresIn()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    return v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

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

    const-string v1, "Body(accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->expiresIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->idToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
