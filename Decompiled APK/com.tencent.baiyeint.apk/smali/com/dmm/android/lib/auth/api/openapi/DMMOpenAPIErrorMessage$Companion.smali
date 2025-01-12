.class public final Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage$Companion;
.super Ljava/lang/Object;
.source "DMMOpenAPIErrorMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage$Companion;",
        "",
        "()V",
        "getErrorMessage",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;",
        "code",
        "",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrorMessage(Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;->valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIErrorMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
