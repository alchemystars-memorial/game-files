.class public final enum Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;
.super Ljava/lang/Enum;
.source "CONNACK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/codec/CONNACK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_ACCEPTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_REFUSED_BAD_USERNAME_OR_PASSWORD:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_REFUSED_IDENTIFIER_REJECTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_REFUSED_NOT_AUTHORIZED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_REFUSED_SERVER_UNAVAILABLE:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

.field public static final enum CONNECTION_REFUSED_UNACCEPTED_PROTOCOL_VERSION:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v1, "CONNECTION_ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_ACCEPTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v3, "CONNECTION_REFUSED_UNACCEPTED_PROTOCOL_VERSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_REFUSED_UNACCEPTED_PROTOCOL_VERSION:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    new-instance v3, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v5, "CONNECTION_REFUSED_IDENTIFIER_REJECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_REFUSED_IDENTIFIER_REJECTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    new-instance v5, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v7, "CONNECTION_REFUSED_SERVER_UNAVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_REFUSED_SERVER_UNAVAILABLE:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    new-instance v7, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v9, "CONNECTION_REFUSED_BAD_USERNAME_OR_PASSWORD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_REFUSED_BAD_USERNAME_OR_PASSWORD:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    new-instance v9, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const-string v11, "CONNECTION_REFUSED_NOT_AUTHORIZED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_REFUSED_NOT_AUTHORIZED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    const/4 v11, 0x6

    new-array v11, v11, [Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->$VALUES:[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->$VALUES:[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-object v0
.end method
