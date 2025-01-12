.class public final enum Lcom/linecorp/linesdk/message/template/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/template/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;


# instance fields
.field private final serverKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/linecorp/linesdk/message/template/Type;

    const-string v1, "BUTTONS"

    const/4 v2, 0x0

    const-string v3, "buttons"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    new-instance v1, Lcom/linecorp/linesdk/message/template/Type;

    const-string v3, "CONFIRM"

    const/4 v4, 0x1

    const-string v5, "confirm"

    invoke-direct {v1, v3, v4, v5}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/template/Type;->CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

    new-instance v3, Lcom/linecorp/linesdk/message/template/Type;

    const-string v5, "CAROUSEL"

    const/4 v6, 0x2

    const-string v7, "carousel"

    invoke-direct {v3, v5, v6, v7}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/linecorp/linesdk/message/template/Type;->CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    new-instance v5, Lcom/linecorp/linesdk/message/template/Type;

    const-string v7, "IMAGE_CAROUSEL"

    const/4 v8, 0x3

    const-string v9, "image_carousel"

    invoke-direct {v5, v7, v8, v9}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/linecorp/linesdk/message/template/Type;->IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/linecorp/linesdk/message/template/Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/linecorp/linesdk/message/template/Type;->$VALUES:[Lcom/linecorp/linesdk/message/template/Type;

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

    iput-object p3, p0, Lcom/linecorp/linesdk/message/template/Type;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/template/Type;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/template/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/template/Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/template/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->$VALUES:[Lcom/linecorp/linesdk/message/template/Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/template/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/template/Type;

    return-object v0
.end method


# virtual methods
.method public getServerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/message/template/Type;->serverKey:Ljava/lang/String;

    return-object v0
.end method
