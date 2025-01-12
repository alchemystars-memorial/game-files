.class public final enum Lcom/enq/transceiver/transceivertool/constant/SceneID;
.super Ljava/lang/Enum;
.source "SceneID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/enq/transceiver/transceivertool/constant/SceneID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum DEFAULT:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum LOGIN_LOAD:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum MAIN_UI:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum NO_SET:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum PLAYING:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum SCENE_LOAD:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum SCENE_LOAD_WAIT:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum START:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum UPDATE:Lcom/enq/transceiver/transceivertool/constant/SceneID;

.field public static final enum WATCH_MODE:Lcom/enq/transceiver/transceivertool/constant/SceneID;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v1, "NO_SET"

    const/4 v2, 0x0

    const-string v3, "-1"

    invoke-direct {v0, v1, v2, v3}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/enq/transceiver/transceivertool/constant/SceneID;->NO_SET:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v1, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    const-string v5, "0"

    invoke-direct {v1, v3, v4, v5}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/enq/transceiver/transceivertool/constant/SceneID;->DEFAULT:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v3, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v5, "START"

    const/4 v6, 0x2

    const-string v7, "1"

    invoke-direct {v3, v5, v6, v7}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/enq/transceiver/transceivertool/constant/SceneID;->START:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v5, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v7, "UPDATE"

    const/4 v8, 0x3

    const-string v9, "2"

    invoke-direct {v5, v7, v8, v9}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/enq/transceiver/transceivertool/constant/SceneID;->UPDATE:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v7, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v9, "LOGIN_LOAD"

    const/4 v10, 0x4

    const-string v11, "3"

    invoke-direct {v7, v9, v10, v11}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/enq/transceiver/transceivertool/constant/SceneID;->LOGIN_LOAD:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v9, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v11, "MAIN_UI"

    const/4 v12, 0x5

    const-string v13, "4"

    invoke-direct {v9, v11, v12, v13}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/enq/transceiver/transceivertool/constant/SceneID;->MAIN_UI:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v11, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v13, "SCENE_LOAD"

    const/4 v14, 0x6

    const-string v15, "5"

    invoke-direct {v11, v13, v14, v15}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/enq/transceiver/transceivertool/constant/SceneID;->SCENE_LOAD:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v13, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v15, "SCENE_LOAD_WAIT"

    const/4 v14, 0x7

    const-string v12, "6"

    invoke-direct {v13, v15, v14, v12}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/enq/transceiver/transceivertool/constant/SceneID;->SCENE_LOAD_WAIT:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v12, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v15, "PLAYING"

    const/16 v14, 0x8

    const-string v10, "7"

    invoke-direct {v12, v15, v14, v10}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/enq/transceiver/transceivertool/constant/SceneID;->PLAYING:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    new-instance v10, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const-string v15, "WATCH_MODE"

    const/16 v14, 0x9

    const-string v8, "8"

    invoke-direct {v10, v15, v14, v8}, Lcom/enq/transceiver/transceivertool/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/enq/transceiver/transceivertool/constant/SceneID;->WATCH_MODE:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/enq/transceiver/transceivertool/constant/SceneID;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/enq/transceiver/transceivertool/constant/SceneID;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/SceneID;

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

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/constant/SceneID;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/enq/transceiver/transceivertool/constant/SceneID;
    .locals 1

    const-class v0, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/enq/transceiver/transceivertool/constant/SceneID;

    return-object p0
.end method

.method public static values()[Lcom/enq/transceiver/transceivertool/constant/SceneID;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/SceneID;->$VALUES:[Lcom/enq/transceiver/transceivertool/constant/SceneID;

    invoke-virtual {v0}, [Lcom/enq/transceiver/transceivertool/constant/SceneID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/enq/transceiver/transceivertool/constant/SceneID;

    return-object v0
.end method


# virtual methods
.method public getSceneID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/constant/SceneID;->id:Ljava/lang/String;

    return-object v0
.end method
