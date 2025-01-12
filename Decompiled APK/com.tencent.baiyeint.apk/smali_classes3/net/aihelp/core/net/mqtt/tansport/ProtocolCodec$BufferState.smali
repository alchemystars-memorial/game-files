.class public final enum Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
.super Ljava/lang/Enum;
.source "ProtocolCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

.field public static final enum EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

.field public static final enum FULL:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

.field public static final enum NOT_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

.field public static final enum WAS_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    const-string v3, "WAS_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->WAS_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    new-instance v3, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    const-string v5, "NOT_EMPTY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->NOT_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    new-instance v5, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    const-string v7, "FULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->FULL:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->$VALUES:[Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->$VALUES:[Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    invoke-virtual {v0}, [Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object v0
.end method
