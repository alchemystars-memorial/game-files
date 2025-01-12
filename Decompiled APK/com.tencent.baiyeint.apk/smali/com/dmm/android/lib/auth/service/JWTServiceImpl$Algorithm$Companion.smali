.class public final Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;
.super Ljava/lang/Object;
.source "JWTServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJWTServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JWTServiceImpl.kt\ncom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;",
        "",
        "()V",
        "getType",
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;",
        "jwtName",
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

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType(Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;
    .locals 5

    const-string v0, "jwtName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->values()[Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->getJwtName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->OTHER:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    :goto_2
    return-object v3
.end method
