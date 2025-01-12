.class public final Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIErrorKt;
.super Ljava/lang/Object;
.source "DMMOpenAPIError.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "convertToApiError",
        "Lcom/dmm/android/lib/auth/model/ApiError;",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final convertToApiError(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)Lcom/dmm/android/lib/auth/model/ApiError;
    .locals 5

    const-string v0, "$this$convertToApiError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/model/ApiError;

    new-instance v1, Lcom/dmm/android/lib/auth/model/ApiError$Header;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->getResultCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getHeader()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse$Header;->getResponseId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/model/ApiError$Header;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/dmm/android/lib/auth/model/ApiError$Body;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;->getBody()Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError$Body;->getValidationErrors()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/dmm/android/lib/auth/model/ApiError$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/lib/auth/model/ApiError;-><init>(Lcom/dmm/android/lib/auth/model/ApiError$Header;Lcom/dmm/android/lib/auth/model/ApiError$Body;)V

    return-object v0
.end method
