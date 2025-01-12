.class final enum Lcom/gcore/abase/NetworkState;
.super Ljava/lang/Enum;
.source "NetworkStateChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gcore/abase/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gcore/abase/NetworkState;

.field public static final enum NotReachable:Lcom/gcore/abase/NetworkState;

.field public static final enum ReachableViaOthers:Lcom/gcore/abase/NetworkState;

.field public static final enum ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

.field public static final enum ReachableViaWiFi:Lcom/gcore/abase/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/gcore/abase/NetworkState;

    const-string v1, "NotReachable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gcore/abase/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    new-instance v1, Lcom/gcore/abase/NetworkState;

    const-string v3, "ReachableViaWWAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gcore/abase/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    new-instance v3, Lcom/gcore/abase/NetworkState;

    const-string v5, "ReachableViaWiFi"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gcore/abase/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    new-instance v5, Lcom/gcore/abase/NetworkState;

    const-string v7, "ReachableViaOthers"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gcore/abase/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gcore/abase/NetworkState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gcore/abase/NetworkState;->$VALUES:[Lcom/gcore/abase/NetworkState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gcore/abase/NetworkState;
    .locals 1

    const-class v0, Lcom/gcore/abase/NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gcore/abase/NetworkState;

    return-object p0
.end method

.method public static values()[Lcom/gcore/abase/NetworkState;
    .locals 1

    sget-object v0, Lcom/gcore/abase/NetworkState;->$VALUES:[Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, [Lcom/gcore/abase/NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gcore/abase/NetworkState;

    return-object v0
.end method
