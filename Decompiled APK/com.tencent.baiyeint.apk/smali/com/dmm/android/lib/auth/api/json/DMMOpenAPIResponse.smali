.class public abstract Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;
.super Ljava/lang/Object;
.source "DMMOpenAPIResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;,
        Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u0000 \u000c2\u00020\u0001:\u0002\u000c\rB\u0019\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        "",
        "seen1",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "()V",
        "header",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;",
        "getHeader",
        "()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;",
        "Companion",
        "Header",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;->Companion:Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "output"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serialDesc"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;
.end method
