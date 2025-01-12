.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
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
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum FULL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL5:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XXS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v1, "XXS"

    const/4 v2, 0x0

    const-string v3, "xxs"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XXS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v3, "XS"

    const/4 v4, 0x1

    const-string v5, "xs"

    invoke-direct {v1, v3, v4, v5}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v5, "SM"

    const/4 v6, 0x2

    const-string v7, "sm"

    invoke-direct {v3, v5, v6, v7}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v7, "MD"

    const/4 v8, 0x3

    const-string v9, "md"

    invoke-direct {v5, v7, v8, v9}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v9, "LG"

    const/4 v10, 0x4

    const-string v11, "lg"

    invoke-direct {v7, v9, v10, v11}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v11, "XL"

    const/4 v12, 0x5

    const-string v13, "xl"

    invoke-direct {v9, v11, v12, v13}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v13, "XXL"

    const/4 v14, 0x6

    const-string v15, "xxl"

    invoke-direct {v11, v13, v14, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "XL3"

    const/4 v14, 0x7

    const-string v12, "3xl"

    invoke-direct {v13, v15, v14, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "XL4"

    const/16 v14, 0x8

    const-string v10, "4xl"

    invoke-direct {v12, v15, v14, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "XL5"

    const/16 v14, 0x9

    const-string v8, "5xl"

    invoke-direct {v10, v15, v14, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL5:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    new-instance v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "FULL"

    const/16 v14, 0xa

    const-string v6, "full"

    invoke-direct {v8, v15, v14, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->FULL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

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

    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->value:Ljava/lang/String;

    return-object v0
.end method
