.class final enum Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;
.super Ljava/lang/Enum;
.source "JWTServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/service/JWTServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0082\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u001b\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;",
        "",
        "jwtName",
        "",
        "javaName",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getJavaName",
        "()Ljava/lang/String;",
        "getJwtName",
        "HMAC_SHA512",
        "NONE",
        "OTHER",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

.field public static final Companion:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;

.field public static final enum HMAC_SHA512:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

.field public static final enum NONE:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

.field public static final enum OTHER:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;


# instance fields
.field private final javaName:Ljava/lang/String;

.field private final jwtName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    new-instance v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    const-string v2, "HMAC_SHA512"

    const/4 v3, 0x0

    const-string v4, "HS512"

    const-string v5, "HmacSHA512"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->HMAC_SHA512:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    const-string v2, "NONE"

    const/4 v3, 0x1

    const-string v4, "none"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->NONE:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    const-string v2, "OTHER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->OTHER:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->$VALUES:[Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    new-instance v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;

    invoke-direct {v0, v5}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->Companion:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->jwtName:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->$VALUES:[Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    return-object v0
.end method


# virtual methods
.method public final getJavaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->javaName:Ljava/lang/String;

    return-object v0
.end method

.method public final getJwtName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->jwtName:Ljava/lang/String;

    return-object v0
.end method
