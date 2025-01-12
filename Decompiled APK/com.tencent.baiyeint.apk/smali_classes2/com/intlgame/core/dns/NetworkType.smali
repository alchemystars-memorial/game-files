.class public final enum Lcom/intlgame/core/dns/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/core/dns/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_NONE:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_WIRED:Lcom/intlgame/core/dns/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    new-instance v1, Lcom/intlgame/core/dns/NetworkType;

    const-string v3, "NETWORK_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_NONE:Lcom/intlgame/core/dns/NetworkType;

    new-instance v3, Lcom/intlgame/core/dns/NetworkType;

    const-string v5, "NETWORK_WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

    new-instance v5, Lcom/intlgame/core/dns/NetworkType;

    const-string v7, "NETWORK_2G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/intlgame/core/dns/NetworkType;->NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

    new-instance v7, Lcom/intlgame/core/dns/NetworkType;

    const-string v9, "NETWORK_3G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/intlgame/core/dns/NetworkType;->NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

    new-instance v9, Lcom/intlgame/core/dns/NetworkType;

    const-string v11, "NETWORK_4G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/intlgame/core/dns/NetworkType;->NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

    new-instance v11, Lcom/intlgame/core/dns/NetworkType;

    const-string v13, "NETWORK_5G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/intlgame/core/dns/NetworkType;->NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

    new-instance v13, Lcom/intlgame/core/dns/NetworkType;

    const-string v15, "NETWORK_WIRED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIRED:Lcom/intlgame/core/dns/NetworkType;

    new-instance v15, Lcom/intlgame/core/dns/NetworkType;

    const-string v14, "NETWORK_MOBILE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/intlgame/core/dns/NetworkType;->NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/intlgame/core/dns/NetworkType;

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

    sput-object v14, Lcom/intlgame/core/dns/NetworkType;->$VALUES:[Lcom/intlgame/core/dns/NetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/core/dns/NetworkType;
    .locals 1

    const-class v0, Lcom/intlgame/core/dns/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/core/dns/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/core/dns/NetworkType;
    .locals 1

    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->$VALUES:[Lcom/intlgame/core/dns/NetworkType;

    invoke-virtual {v0}, [Lcom/intlgame/core/dns/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/core/dns/NetworkType;

    return-object v0
.end method
