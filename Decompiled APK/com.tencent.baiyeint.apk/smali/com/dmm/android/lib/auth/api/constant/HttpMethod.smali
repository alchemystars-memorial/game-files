.class public final enum Lcom/dmm/android/lib/auth/api/constant/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/api/constant/HttpMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/constant/HttpMethod;",
        "",
        "doOutput",
        "",
        "doInput",
        "(Ljava/lang/String;IZZ)V",
        "getDoInput",
        "()Z",
        "getDoOutput",
        "GET",
        "POST",
        "PUT",
        "DELETE",
        "PATCH",
        "OPTIONS",
        "HEAD",
        "TRACE",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum DELETE:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum GET:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum HEAD:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum OPTIONS:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum PATCH:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum POST:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum PUT:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

.field public static final enum TRACE:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;


# instance fields
.field private final doInput:Z

.field private final doOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->GET:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "POST"

    invoke-direct {v1, v2, v4, v4, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->POST:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v4

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "PUT"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->PUT:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->DELETE:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "PATCH"

    const/4 v5, 0x4

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->PATCH:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "OPTIONS"

    const/4 v5, 0x5

    invoke-direct {v1, v2, v5, v3, v3}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->OPTIONS:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "HEAD"

    const/4 v5, 0x6

    invoke-direct {v1, v2, v5, v3, v3}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->HEAD:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    new-instance v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    const-string v2, "TRACE"

    const/4 v5, 0x7

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->TRACE:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->$VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->doOutput:Z

    iput-boolean p4, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->doInput:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/api/constant/HttpMethod;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/api/constant/HttpMethod;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->$VALUES:[Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public final getDoInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->doInput:Z

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->doOutput:Z

    return v0
.end method
