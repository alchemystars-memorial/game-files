.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
.super Ljava/lang/Enum;
.source "FlexMessageComponent.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum FILLER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "BOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v3, "BUTTON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v5, "FILLER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->FILLER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v7, "ICON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v9, "IMAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v11, "SEPARATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v13, "SPACER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    new-instance v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v15, "TEXT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    return-object v0
.end method
