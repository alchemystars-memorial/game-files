.class public final enum Lcom/linecorp/linesdk/message/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/Type;

.field public static final enum AUDIO:Lcom/linecorp/linesdk/message/Type;

.field public static final enum FLEX:Lcom/linecorp/linesdk/message/Type;

.field public static final enum IMAGE:Lcom/linecorp/linesdk/message/Type;

.field public static final enum LOCATION:Lcom/linecorp/linesdk/message/Type;

.field public static final enum TEMPLATE:Lcom/linecorp/linesdk/message/Type;

.field public static final enum TEXT:Lcom/linecorp/linesdk/message/Type;

.field public static final enum VIDEO:Lcom/linecorp/linesdk/message/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->TEXT:Lcom/linecorp/linesdk/message/Type;

    new-instance v1, Lcom/linecorp/linesdk/message/Type;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/message/Type;->IMAGE:Lcom/linecorp/linesdk/message/Type;

    new-instance v3, Lcom/linecorp/linesdk/message/Type;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/message/Type;->VIDEO:Lcom/linecorp/linesdk/message/Type;

    new-instance v5, Lcom/linecorp/linesdk/message/Type;

    const-string v7, "AUDIO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/message/Type;->AUDIO:Lcom/linecorp/linesdk/message/Type;

    new-instance v7, Lcom/linecorp/linesdk/message/Type;

    const-string v9, "LOCATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/linecorp/linesdk/message/Type;->LOCATION:Lcom/linecorp/linesdk/message/Type;

    new-instance v9, Lcom/linecorp/linesdk/message/Type;

    const-string v11, "TEMPLATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/linecorp/linesdk/message/Type;->TEMPLATE:Lcom/linecorp/linesdk/message/Type;

    new-instance v11, Lcom/linecorp/linesdk/message/Type;

    const-string v13, "FLEX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/linecorp/linesdk/message/Type;->FLEX:Lcom/linecorp/linesdk/message/Type;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/linecorp/linesdk/message/Type;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/linecorp/linesdk/message/Type;->$VALUES:[Lcom/linecorp/linesdk/message/Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/Type;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->$VALUES:[Lcom/linecorp/linesdk/message/Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method
