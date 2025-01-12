.class public final enum Lcom/linecorp/linesdk/LineApiResponseCode;
.super Ljava/lang/Enum;
.source "LineApiResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/LineApiResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v3, "CANCEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v3, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v5, "NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v5, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v7, "SERVER_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v7, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v9, "AUTHENTICATION_AGENT_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v9, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v11, "INTERNAL_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/linecorp/linesdk/LineApiResponseCode;->$VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->$VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/LineApiResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object v0
.end method
