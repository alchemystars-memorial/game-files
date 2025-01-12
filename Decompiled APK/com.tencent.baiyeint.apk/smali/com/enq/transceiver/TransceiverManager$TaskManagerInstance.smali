.class Lcom/enq/transceiver/TransceiverManager$TaskManagerInstance;
.super Ljava/lang/Object;
.source "TransceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/TransceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/enq/transceiver/TransceiverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/enq/transceiver/TransceiverManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/enq/transceiver/TransceiverManager;-><init>(Lcom/enq/transceiver/TransceiverManager$1;)V

    sput-object v0, Lcom/enq/transceiver/TransceiverManager$TaskManagerInstance;->INSTANCE:Lcom/enq/transceiver/TransceiverManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/enq/transceiver/TransceiverManager;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/TransceiverManager$TaskManagerInstance;->INSTANCE:Lcom/enq/transceiver/TransceiverManager;

    return-object v0
.end method
