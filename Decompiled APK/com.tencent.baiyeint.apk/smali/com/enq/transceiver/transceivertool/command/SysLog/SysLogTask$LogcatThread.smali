.class Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;
.super Ljava/lang/Thread;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatThread"
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private final lockObject:Ljava/lang/Object;

.field logClearCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field logCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field logcatPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

.field private type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;


# direct methods
.method constructor <init>(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;Ljava/lang/String;Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;)V
    .locals 3

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v1, "/system/bin/logcat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->base:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v2, "-b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-virtual {p3}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    const-string v2, "-s"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    const-string v0, "-c"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$300(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$300(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    const-string p1, "%s/logcat_%s.log"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$400(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$400(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u65e5\u5fd7\u7ebf\u7a0b[%s]\u5f00\u59cb\u6267\u884c[type=%s][filter=%s]"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v5}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5220\u9664\u6587\u4ef6[%s]\u5931\u8d25"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v2, v2, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "\u5220\u9664\u6587\u4ef6[%s]\u5931\u8d25"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v4, v6, [Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "\u521b\u5efa\u6587\u4ef6[%s]\u6210\u529f"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "\u5f00\u59cb\u91c7\u96c6[%s]\u65e5\u5fd7"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v11}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logClearCmdList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logCmdList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v10, "max_size"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x0

    move v0, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->isInterrupted()Z

    move-result v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v14, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->ready()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    const-string v15, "%s\n"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v14, v8, v6

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    array-length v8, v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    int-to-long v14, v8

    add-long/2addr v12, v14

    cmp-long v8, v12, v10

    if-ltz v8, :cond_6

    move v0, v6

    :cond_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v14, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->lockObject:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v4

    const-wide/16 v3, 0x12c

    :try_start_7
    invoke-virtual {v14, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    :goto_1
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :cond_4
    move-object/from16 v16, v4

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v4, v16

    const/4 v3, 0x3

    :cond_6
    const/4 v8, 0x2

    goto :goto_0

    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u505c\u6b62\u91c7\u96c6[%s]\u65e5\u5fd7"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v8}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "%s:done;"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v8}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v4, v16

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v4, v16

    goto/16 :goto_a

    :catch_0
    move-object/from16 v4, v16

    goto/16 :goto_6

    :catch_1
    move-object/from16 v4, v16

    goto/16 :goto_7

    :catch_2
    move-object/from16 v4, v16

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_a

    :catch_3
    move-object/from16 v16, v4

    goto :goto_6

    :catch_4
    move-object/from16 v16, v4

    goto/16 :goto_7

    :catch_5
    move-object/from16 v16, v4

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v4

    goto/16 :goto_a

    :catch_6
    move-object v2, v4

    goto :goto_6

    :catch_7
    move-object v2, v4

    goto/16 :goto_7

    :catch_8
    move-object v2, v4

    goto/16 :goto_8

    :cond_8
    :try_start_9
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u521b\u5efa\u6587\u4ef6[%s]\u5931\u8d25"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "%s:failed;"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v5}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v2, v4

    move-object v5, v2

    :goto_4
    if-eqz v4, :cond_9

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_a
    if-eqz v5, :cond_11

    :goto_5
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v4

    move-object v5, v2

    goto/16 :goto_a

    :catch_a
    move-object v2, v4

    move-object v5, v2

    :catch_b
    :goto_6
    :try_start_c
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u7ebf\u7a0b[%s]\u83b7\u53d6\u6700\u5927\u503c\u5931\u8d25"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "%s:failed;"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v9}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v4, :cond_b

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_c
    if-eqz v5, :cond_11

    goto :goto_5

    :catch_d
    move-object v2, v4

    move-object v5, v2

    :catch_e
    :goto_7
    :try_start_e
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u7ebf\u7a0b[%s]\u88ab\u4e2d\u65ad"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "%s:failed;"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v9}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v4, :cond_d

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_e
    if-eqz v5, :cond_11

    goto/16 :goto_5

    :catch_10
    move-object v2, v4

    move-object v5, v2

    :catch_11
    :goto_8
    :try_start_10
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u521b\u5efa\u6587\u4ef6[%s]\u5931\u8d25"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->logcatPath:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "%s:failed;"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v9}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v4, :cond_f

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    :catch_12
    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_10
    if-eqz v5, :cond_11

    goto/16 :goto_5

    :catch_13
    :cond_11
    :goto_9
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u65e5\u5fd7\u7ebf\u7a0b[%s]\u7ed3\u675f\u6267\u884c[type=%s][filter=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->type:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->filter:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$500(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->this$0:Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->access$500(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_12
    return-void

    :catchall_6
    move-exception v0

    :goto_a
    if-eqz v4, :cond_13

    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    :catch_14
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_14
    if-eqz v5, :cond_15

    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    :catch_15
    :cond_15
    throw v0
.end method
