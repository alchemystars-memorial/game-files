.class public final enum Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;
.super Ljava/lang/Enum;
.source "SessionEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;",
        "",
        "(Ljava/lang/String;I)V",
        "NETWORK_INTERRUPT",
        "NO_ACCESS_TOKEN",
        "NO_USER_ID",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

.field public static final enum NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

.field public static final enum NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

.field public static final enum NO_USER_ID:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    new-instance v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    const-string v2, "NETWORK_INTERRUPT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    const-string v2, "NO_ACCESS_TOKEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    const-string v2, "NO_USER_ID"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NO_USER_ID:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->$VALUES:[Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->$VALUES:[Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    return-object v0
.end method
