.class public Lcom/gcore/gcloud/tasksystem/TaskSystem;
.super Ljava/lang/Object;
.source "TaskSystem.java"


# static fields
.field public static Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;

    invoke-direct {v0}, Lcom/gcore/gcloud/tasksystem/TaskSystem;-><init>()V

    sput-object v0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gcore/gcloud/tasksystem/TaskSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/enq/transceiver/TransceiverManager;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/enq/transceiver/TransceiverManager;->start()I

    return-void
.end method
