.class Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "detectRtt"
.end annotation


# instance fields
.field private _ctx:Ljava/lang/String;

.field private _ip:Ljava/lang/String;

.field private _mapIndex:Ljava/lang/String;

.field private _port:Ljava/lang/String;

.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;


# direct methods
.method public constructor <init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_port:Ljava/lang/String;

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ctx:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p1, p4

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "%s:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_mapIndex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "Exception:"

    :try_start_0
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_port:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ip:Ljava/lang/String;

    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_port:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ctx:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x400

    new-array v4, v3, [B

    iget-object v5, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ctx:Ljava/lang/String;

    const-string v6, "*#9527#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ctx:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_0

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_ctx:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->generateBytesFromString(Ljava/lang/String;)[B

    move-result-object v2

    :cond_0
    array-length v5, v2

    if-nez v5, :cond_1

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v6, "contentBytes generate error"

    invoke-static {v5, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v2

    invoke-direct {v5, v2, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$500(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$800(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$400(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->_mapIndex:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;

    sub-long v10, v8, v6

    invoke-virtual {v4, v10, v11}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->refreshRttInfo(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    :goto_1
    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$600(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)I

    move-result v4

    int-to-long v10, v4

    sub-long/2addr v8, v6

    sub-long/2addr v10, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v10, v6

    if-lez v4, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
