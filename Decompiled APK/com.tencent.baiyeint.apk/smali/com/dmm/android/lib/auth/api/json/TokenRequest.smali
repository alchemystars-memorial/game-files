.class public abstract Lcom/dmm/android/lib/auth/api/json/TokenRequest;
.super Ljava/lang/Object;
.source "TokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$Password;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$ClientCredential;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$OneTimeCode;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken;,
        Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 \u000b2\u00020\u0001:\u0008\u0008\t\n\u000b\u000c\r\u000e\u000fB\u0019\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0007\u0082\u0001\u0007\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest;",
        "",
        "seen1",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "()V",
        "Administrator",
        "AuthorizationCode",
        "ClientCredential",
        "Companion",
        "ExchangeToken",
        "OneTimeCode",
        "Password",
        "RefreshToken",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$Password;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$ClientCredential;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$OneTimeCode;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken;",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest;->Companion:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;

    return-void
.end method

.method private constructor <init>()V
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

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/api/json/TokenRequest;-><init>()V

    return-void
.end method

.method public static final write$Self(Lcom/dmm/android/lib/auth/api/json/TokenRequest;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
