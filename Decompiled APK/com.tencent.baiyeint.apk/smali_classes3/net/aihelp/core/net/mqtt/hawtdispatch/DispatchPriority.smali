.class public final enum Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;
.super Ljava/lang/Enum;
.source "DispatchPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field public static final enum DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field public static final enum HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field public static final enum LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    const-string v5, "LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->$VALUES:[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    return-object v0
.end method
