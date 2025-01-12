.class public final enum Lcom/linecorp/linesdk/SendMessageResponse$Status;
.super Ljava/lang/Enum;
.source "SendMessageResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/SendMessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/SendMessageResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/SendMessageResponse$Status;

.field public static final enum DISCARDED:Lcom/linecorp/linesdk/SendMessageResponse$Status;

.field public static final enum OK:Lcom/linecorp/linesdk/SendMessageResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/SendMessageResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;->OK:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    new-instance v1, Lcom/linecorp/linesdk/SendMessageResponse$Status;

    const-string v3, "DISCARDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/SendMessageResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/SendMessageResponse$Status;->DISCARDED:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/SendMessageResponse$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/SendMessageResponse$Status;->$VALUES:[Lcom/linecorp/linesdk/SendMessageResponse$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/SendMessageResponse$Status;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/SendMessageResponse$Status;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/SendMessageResponse$Status;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;->$VALUES:[Lcom/linecorp/linesdk/SendMessageResponse$Status;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/SendMessageResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/SendMessageResponse$Status;

    return-object v0
.end method
