.class public abstract Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;
.super Ljava/lang/Object;
.source "DMMOpenAPICallback.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/api/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/dmm/android/lib/auth/api/HttpCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDMMOpenAPICallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DMMOpenAPICallback.kt\ncom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,62:1\n100#2:63\n100#2:66\n32#3:64\n32#3:67\n80#4:65\n80#4:68\n*E\n*S KotlinDebug\n*F\n+ 1 DMMOpenAPICallback.kt\ncom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback\n*L\n40#1:63\n48#1:66\n40#1:64\n48#1:67\n40#1:65\n48#1:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008 \u0018\u0000 \u0013*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0013B\u0019\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\"\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0012R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
        "T",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        "Lcom/dmm/android/lib/auth/api/HttpCallback;",
        "type",
        "",
        "([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V",
        "clazz",
        "Ljava/lang/Class;",
        "onFailure",
        "",
        "error",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;",
        "onResponse",
        "response",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "onSuccess",
        "model",
        "(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback$Companion;

.field private static final RESPONSE_CODE_SUCCESS:I


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->Companion:Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback$Companion;

    return-void
.end method

.method public varargs constructor <init>([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->clazz:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V
.end method

.method public onResponse(Lcom/dmm/android/lib/auth/api/HttpResponse;)V
    .locals 8

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpStatus;->Companion:Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->clazz:Ljava/lang/Class;

    const-class v1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;-><init>(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;)V

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onSuccess(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/Json$Default;->parseToJsonElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v1, Lkotlinx/serialization/StringFormat;

    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const-class v3, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    if-eqz v2, :cond_6

    :try_start_1
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v2, v0}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json$Default;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->clazz:Ljava/lang/Class;

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Ljava/lang/reflect/Type;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v0, p1}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onSuccess(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    const-class v2, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->getReason()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V

    return-void

    :cond_3
    sget-object v0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;->Companion:Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage$Companion;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage$Companion;->getErrorMessage(Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;->getReason()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->copy$default(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->copy$default(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;ILjava/lang/Object;)Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not found Response"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Error: Status Code -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpResponse;->getResponseCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
