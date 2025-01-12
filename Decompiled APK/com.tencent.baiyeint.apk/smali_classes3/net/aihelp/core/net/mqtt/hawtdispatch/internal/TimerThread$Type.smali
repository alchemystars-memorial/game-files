.class final enum Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;
.super Ljava/lang/Enum;
.source "TimerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

.field public static final enum ABSOLUTE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

.field public static final enum RELATIVE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

.field public static final enum SHUTDOWN:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    const-string v1, "RELATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->RELATIVE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    const-string v3, "ABSOLUTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->ABSOLUTE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    const-string v5, "SHUTDOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->SHUTDOWN:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    return-object v0
.end method
