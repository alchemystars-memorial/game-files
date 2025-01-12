.class final enum Lcom/gcore/abase/DetailNetworkState;
.super Ljava/lang/Enum;
.source "NetworkStateChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gcore/abase/DetailNetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gcore/abase/DetailNetworkState;

.field public static final enum NotReachable:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaOthers:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

.field public static final enum Reserve1:Lcom/gcore/abase/DetailNetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/gcore/abase/DetailNetworkState;

    const-string v1, "NotReachable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    new-instance v1, Lcom/gcore/abase/DetailNetworkState;

    const-string v3, "Reserve1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gcore/abase/DetailNetworkState;->Reserve1:Lcom/gcore/abase/DetailNetworkState;

    new-instance v3, Lcom/gcore/abase/DetailNetworkState;

    const-string v5, "ReachableViaWiFi"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

    new-instance v5, Lcom/gcore/abase/DetailNetworkState;

    const-string v7, "ReachableViaOthers"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gcore/abase/DetailNetworkState;->ReachableViaOthers:Lcom/gcore/abase/DetailNetworkState;

    new-instance v7, Lcom/gcore/abase/DetailNetworkState;

    const-string v9, "ReachableViaWWAN_UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

    new-instance v9, Lcom/gcore/abase/DetailNetworkState;

    const-string v11, "ReachableViaWWAN_2G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

    new-instance v11, Lcom/gcore/abase/DetailNetworkState;

    const-string v13, "ReachableViaWWAN_3G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

    new-instance v13, Lcom/gcore/abase/DetailNetworkState;

    const-string v15, "ReachableViaWWAN_4G"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

    new-instance v15, Lcom/gcore/abase/DetailNetworkState;

    const-string v14, "ReachableViaWWAN_5G"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/gcore/abase/DetailNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/gcore/abase/DetailNetworkState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/gcore/abase/DetailNetworkState;->$VALUES:[Lcom/gcore/abase/DetailNetworkState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gcore/abase/DetailNetworkState;
    .locals 1

    const-class v0, Lcom/gcore/abase/DetailNetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gcore/abase/DetailNetworkState;

    return-object p0
.end method

.method public static values()[Lcom/gcore/abase/DetailNetworkState;
    .locals 1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->$VALUES:[Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, [Lcom/gcore/abase/DetailNetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gcore/abase/DetailNetworkState;

    return-object v0
.end method
