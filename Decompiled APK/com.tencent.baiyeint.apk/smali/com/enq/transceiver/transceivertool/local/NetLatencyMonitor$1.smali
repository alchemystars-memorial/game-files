.class Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;


# direct methods
.method constructor <init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$400(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;

    iget-object v7, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-direct {v6, v7, v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;-><init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v6}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$300(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v2, v3, v7}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$detectRtt;-><init>(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$500(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$600(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    move v2, v0

    :goto_3
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$400(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$200(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$reportData;->getRtt()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Lcom/enq/transceiver/LocalTGPACallback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor$1;->this$0:Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->access$700(Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;)Lcom/enq/transceiver/LocalTGPACallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/enq/transceiver/LocalTGPACallback;->notifyTGPAInfo([J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method
