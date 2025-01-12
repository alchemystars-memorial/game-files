.class public final enum Lcom/enq/transceiver/transceivertool/constant/TaskStatus;
.super Ljava/lang/Enum;
.source "TaskStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/enq/transceiver/transceivertool/constant/TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

.field public static final enum UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;


# instance fields
.field private key:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v1, "TODO"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v3, "DOING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v5, "REDO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v5, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v7, "DISCARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v9, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v11, "DONE"

    const/4 v12, 0x5

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    new-instance v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const-string v13, "UPLOAD"

    const/4 v14, 0x6

    const/16 v15, 0xb

    invoke-direct {v11, v13, v14, v15}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/enq/transceiver/transceivertool/constant/TaskStatus;
    .locals 1

    const-class v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    return-object p0
.end method

.method public static values()[Lcom/enq/transceiver/transceivertool/constant/TaskStatus;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, [Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
