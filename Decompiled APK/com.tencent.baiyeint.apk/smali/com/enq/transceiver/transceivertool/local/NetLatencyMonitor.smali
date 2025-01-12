.class public Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;,
        Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;,
        Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private _callback:Lcom/enq/transceiver/LocalTGPACallback;

.field private _contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contentListStr:Ljava/lang/String;

.field private _freq:I

.field private _ipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ipListStr:Ljava/lang/String;

.field private dateInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;",
            ">;"
        }
    .end annotation
.end field

.field private hasInit:Z

.field private isRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private timeout:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_ipList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_contentList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->timeout:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->dateInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_ipList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_contentList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->dateInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    return p0
.end method

.method static synthetic access$600(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)I
    .locals 0

    iget p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_freq:I

    return p0
.end method

.method static synthetic access$700(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Lcom/enq/transceiver/LocalTGPACallback;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_callback:Lcom/enq/transceiver/LocalTGPACallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)I
    .locals 0

    iget p0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->timeout:I

    return p0
.end method

.method public static getInstance()Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;
    .locals 1

    invoke-static {}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;->access$100()Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(ILjava/util/List;Ljava/util/List;Lcom/enq/transceiver/LocalTGPACallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/enq/transceiver/LocalTGPACallback;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->TAG:Ljava/lang/String;

    const-string p2, "repeat init"

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_freq:I

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_callback:Lcom/enq/transceiver/LocalTGPACallback;

    const/4 p1, 0x0

    move p4, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p4, v0, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_ipList:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "%s;"

    if-eqz p4, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_ipListStr:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_ipListStr:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_contentList:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_contentListStr:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->_contentListStr:Ljava/lang/String;

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    return-void
.end method

.method public start()Z
    .locals 3

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->TAG:Ljava/lang/String;

    const-string v2, "please init first"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "task is running"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->monitorThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;

    invoke-direct {v2, p0}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;-><init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->monitorThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return v1
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    const/4 v0, 0x1

    return v0
.end method
