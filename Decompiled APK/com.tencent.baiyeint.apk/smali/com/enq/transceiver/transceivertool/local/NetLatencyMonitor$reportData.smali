.class Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "reportData"
.end annotation


# instance fields
.field private _dataTime:J

.field private _ip:Ljava/lang/String;

.field private _rtt:J

.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;


# direct methods
.method public constructor <init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->_ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRtt()J
    .locals 4

    iget-wide v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->_dataTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->_rtt:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public refreshRttInfo(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->_dataTime:J

    iput-wide p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->_rtt:J

    return-void
.end method
