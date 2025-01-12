.class public final enum Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
.super Ljava/lang/Enum;
.source "FlexBubbleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

.field public static final enum LEFT_TO_RIGHT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

.field public static final enum RIGHT_TO_LEFT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    const-string v3, "ltr"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->LEFT_TO_RIGHT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    new-instance v1, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    const-string v3, "RIGHT_TO_LEFT"

    const/4 v4, 0x1

    const-string v5, "rtl"

    invoke-direct {v1, v3, v4, v5}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->RIGHT_TO_LEFT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->$VALUES:[Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->$VALUES:[Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->value:Ljava/lang/String;

    return-object v0
.end method
