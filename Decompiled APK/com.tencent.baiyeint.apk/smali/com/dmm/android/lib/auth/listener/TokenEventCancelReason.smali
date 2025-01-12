.class public final enum Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;
.super Ljava/lang/Enum;
.source "TokenEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
        "",
        "(Ljava/lang/String;I)V",
        "NETWORK_INTERRUPT",
        "NO_ACCESS_TOKEN",
        "NO_REFRESH_TOKEN",
        "USER_OPERATION",
        "NO_REDIRECT_URI",
        "NO_REDIRECT_PATH",
        "NO_AUTH_CODE",
        "REQUEST_IS_NULL",
        "UNKNOWN_HOST",
        "FAIL_LOAD_PREFERENCE",
        "TOKEN_IS_IN_PERIOD",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum FAIL_LOAD_PREFERENCE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NO_AUTH_CODE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NO_REDIRECT_PATH:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NO_REDIRECT_URI:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum NO_REFRESH_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum TOKEN_IS_IN_PERIOD:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum UNKNOWN_HOST:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

.field public static final enum USER_OPERATION:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NETWORK_INTERRUPT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NO_ACCESS_TOKEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_ACCESS_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NO_REFRESH_TOKEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REFRESH_TOKEN:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "USER_OPERATION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->USER_OPERATION:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NO_REDIRECT_URI"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REDIRECT_URI:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NO_REDIRECT_PATH"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_REDIRECT_PATH:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "NO_AUTH_CODE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NO_AUTH_CODE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "REQUEST_IS_NULL"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->REQUEST_IS_NULL:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "UNKNOWN_HOST"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->UNKNOWN_HOST:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "FAIL_LOAD_PREFERENCE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->FAIL_LOAD_PREFERENCE:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    const-string v2, "TOKEN_IS_IN_PERIOD"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->TOKEN_IS_IN_PERIOD:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->$VALUES:[Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->$VALUES:[Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    return-object v0
.end method
