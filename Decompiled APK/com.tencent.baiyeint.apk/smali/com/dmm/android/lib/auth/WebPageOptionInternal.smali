.class public final enum Lcom/dmm/android/lib/auth/WebPageOptionInternal;
.super Ljava/lang/Enum;
.source "WebPageOption.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/WebOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/WebPageOptionInternal;",
        ">;",
        "Lcom/dmm/android/lib/auth/WebOption;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/WebPageOptionInternal;",
        "",
        "Lcom/dmm/android/lib/auth/WebOption;",
        "key",
        "",
        "value",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getValue",
        "DARK_MODE",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/WebPageOptionInternal;

.field public static final enum DARK_MODE:Lcom/dmm/android/lib/auth/WebPageOptionInternal;


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    new-instance v8, Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    const-string v2, "DARK_MODE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "darkmode"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dmm/android/lib/auth/WebPageOptionInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->DARK_MODE:Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    sput-object v0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->$VALUES:[Lcom/dmm/android/lib/auth/WebPageOptionInternal;

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

    iput-object p3, p0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-string p3, "parts"

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/lib/auth/WebPageOptionInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/WebPageOptionInternal;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/WebPageOptionInternal;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->$VALUES:[Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/WebPageOptionInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/WebPageOptionInternal;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/WebPageOptionInternal;->value:Ljava/lang/String;

    return-object v0
.end method
