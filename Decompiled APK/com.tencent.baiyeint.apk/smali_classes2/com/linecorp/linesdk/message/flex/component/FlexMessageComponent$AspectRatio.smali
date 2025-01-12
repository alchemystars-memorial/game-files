.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
.super Ljava/lang/Enum;
.source "FlexMessageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_16x9:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1_51x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1_91x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x2:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_20x13:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_2x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_3x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_3x4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_4x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_9x16:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v1, "RATIO_1x1"

    const/4 v2, 0x0

    const-string v3, "1:1"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v3, "RATIO_1_51x1"

    const/4 v4, 0x1

    const-string v5, "1.51:1"

    invoke-direct {v1, v3, v4, v5}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1_51x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v5, "RATIO_1_91x1"

    const/4 v6, 0x2

    const-string v7, "1.91:1"

    invoke-direct {v3, v5, v6, v7}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1_91x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v7, "RATIO_4x3"

    const/4 v8, 0x3

    const-string v9, "4:3"

    invoke-direct {v5, v7, v8, v9}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_4x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v9, "RATIO_16x9"

    const/4 v10, 0x4

    const-string v11, "16:9"

    invoke-direct {v7, v9, v10, v11}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_16x9:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v11, "RATIO_20x13"

    const/4 v12, 0x5

    const-string v13, "20:13"

    invoke-direct {v9, v11, v12, v13}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_20x13:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v13, "RATIO_2x1"

    const/4 v14, 0x6

    const-string v15, "2:1"

    invoke-direct {v11, v13, v14, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_2x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "RATIO_3x1"

    const/4 v14, 0x7

    const-string v12, "3:1"

    invoke-direct {v13, v15, v14, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_3x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "RATIO_3x4"

    const/16 v14, 0x8

    const-string v10, "3:4"

    invoke-direct {v12, v15, v14, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_3x4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "RATIO_9x16"

    const/16 v14, 0x9

    const-string v8, "9:16"

    invoke-direct {v10, v15, v14, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_9x16:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "RATIO_1x2"

    const/16 v14, 0xa

    const-string v6, "1:2"

    invoke-direct {v8, v15, v14, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x2:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    new-instance v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "RATIO_1x3"

    const/16 v14, 0xb

    const-string v4, "1:3"

    invoke-direct {v6, v15, v14, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

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

    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->value:Ljava/lang/String;

    return-object v0
.end method
