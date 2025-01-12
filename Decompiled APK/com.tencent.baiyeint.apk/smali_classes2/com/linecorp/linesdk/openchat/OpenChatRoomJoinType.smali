.class public final enum Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;
.super Ljava/lang/Enum;
.source "OpenChatRoomJoinType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

.field public static final enum APPROVAL:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

.field public static final enum CODE:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

.field public static final enum NONE:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

.field public static final enum UNDEFINED:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->NONE:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    const-string v3, "APPROVAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->APPROVAL:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    new-instance v3, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    const-string v5, "CODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->CODE:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    new-instance v5, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    const-string v7, "UNDEFINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->UNDEFINED:Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    return-object v0
.end method
