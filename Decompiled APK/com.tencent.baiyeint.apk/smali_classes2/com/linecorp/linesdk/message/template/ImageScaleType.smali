.class final enum Lcom/linecorp/linesdk/message/template/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/template/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/template/ImageScaleType;

.field public static final enum CONTAIN:Lcom/linecorp/linesdk/message/template/ImageScaleType;

.field public static final enum COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;


# instance fields
.field private serverKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const-string v1, "COVER"

    const/4 v2, 0x0

    const-string v3, "cover"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/message/template/ImageScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    new-instance v1, Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const-string v3, "CONTAIN"

    const/4 v4, 0x1

    const-string v5, "contain"

    invoke-direct {v1, v3, v4, v5}, Lcom/linecorp/linesdk/message/template/ImageScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/template/ImageScaleType;->CONTAIN:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/message/template/ImageScaleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/message/template/ImageScaleType;->$VALUES:[Lcom/linecorp/linesdk/message/template/ImageScaleType;

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

    iput-object p3, p0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/template/ImageScaleType;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/template/ImageScaleType;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/template/ImageScaleType;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->$VALUES:[Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/template/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/template/ImageScaleType;

    return-object v0
.end method


# virtual methods
.method public getServerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->serverKey:Ljava/lang/String;

    return-object v0
.end method
