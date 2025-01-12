.class public final enum Lcom/dmm/android/lib/auth/Config$WebColorScheme;
.super Ljava/lang/Enum;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebColorScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/Config$WebColorScheme;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/Config$WebColorScheme;",
        "",
        "(Ljava/lang/String;I)V",
        "isDarkMode",
        "",
        "isNightMode",
        "DAY",
        "NIGHT",
        "DAY_NIGHT",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/Config$WebColorScheme;

.field public static final enum DAY:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

.field public static final enum DAY_NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

.field public static final enum NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    new-instance v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    const-string v2, "DAY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/Config$WebColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->DAY:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    const-string v2, "NIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/Config$WebColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    const-string v2, "DAY_NIGHT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/Config$WebColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->DAY_NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->$VALUES:[Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/Config$WebColorScheme;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/Config$WebColorScheme;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->$VALUES:[Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/Config$WebColorScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    return-object v0
.end method


# virtual methods
.method public final isDarkMode(Z)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    sget-object v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/dmm/android/lib/auth/Config$WebColorScheme;->DAY_NIGHT:Lcom/dmm/android/lib/auth/Config$WebColorScheme;

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
