.class final enum Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;
.super Ljava/lang/Enum;
.source "SslTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/SslTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ClientAuth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

.field public static final enum NEED:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

.field public static final enum NONE:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

.field public static final enum WANT:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    const-string v1, "WANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->WANT:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    const-string v3, "NEED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->NEED:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    new-instance v3, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->NONE:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->$VALUES:[Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->$VALUES:[Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/tansport/SslTransport$ClientAuth;

    return-object v0
.end method
