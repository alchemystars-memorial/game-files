.class public abstract Lcom/dmm/android/lib/auth/model/HttpError;
.super Ljava/lang/Object;
.source "HttpError.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/model/HttpError$ServerError;,
        Lcom/dmm/android/lib/auth/model/HttpError$InternalError;,
        Lcom/dmm/android/lib/auth/model/HttpError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u000b2\u00020\u0001:\u0003\u000b\u000c\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0002\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "Ljava/io/Serializable;",
        "()V",
        "errorCode",
        "",
        "getErrorCode",
        "()I",
        "logMessage",
        "",
        "getLogMessage",
        "()Ljava/lang/String;",
        "Companion",
        "InternalError",
        "ServerError",
        "Lcom/dmm/android/lib/auth/model/HttpError$ServerError;",
        "Lcom/dmm/android/lib/auth/model/HttpError$InternalError;",
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
.field public static final API_ERROR:I = 0x2715

.field public static final CONNECTION_FAILED:I = 0x2711

.field public static final Companion:Lcom/dmm/android/lib/auth/model/HttpError$Companion;

.field public static final ERR_EXCEPTION:I = 0x2712

.field public static final ERR_JSON_EXCEPTION:I = 0x2714

.field public static final ERR_TIMEOUT_EXCEPTION:I = 0x2713

.field public static final NETWORK_ERROR_CODE:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/model/HttpError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/model/HttpError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/model/HttpError;->Companion:Lcom/dmm/android/lib/auth/model/HttpError$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/model/HttpError;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getLogMessage()Ljava/lang/String;
.end method
