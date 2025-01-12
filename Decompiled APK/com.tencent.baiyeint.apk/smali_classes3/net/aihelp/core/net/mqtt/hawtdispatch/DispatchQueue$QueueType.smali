.class public final enum Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
.super Ljava/lang/Enum;
.source "DispatchQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

.field public static final enum GLOBAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

.field public static final enum SERIAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

.field public static final enum THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    const-string v1, "GLOBAL_QUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->GLOBAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    const-string v3, "SERIAL_QUEUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->SERIAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    const-string v5, "THREAD_QUEUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    return-object v0
.end method
