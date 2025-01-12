.class public final enum Lcom/linecorp/linesdk/message/flex/action/Action$Type;
.super Ljava/lang/Enum;
.source "Action.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/action/Action$Type;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum CAMERA:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum CAMERAROLL:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum DATETIMEPICKER:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum LOCATION:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum MESSAGE:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum POSTBACK:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "POSTBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->POSTBACK:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v3, "MESSAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->MESSAGE:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v3, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v5, "URI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v5, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v7, "DATETIMEPICKER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->DATETIMEPICKER:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v7, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v9, "CAMERA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERA:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v9, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v11, "CAMERAROLL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERAROLL:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    new-instance v11, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v13, "LOCATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->LOCATION:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    return-object v0
.end method
