.class public Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "TransferFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;-><init>()V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkFileGDPR(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getExFileDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/enq/transceiver/TransceiverManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method private checkFileSize(JJ)Z
    .locals 0

    cmp-long p3, p3, p1

    if-ltz p3, :cond_1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private compressFile(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    :goto_1
    invoke-virtual {v5, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-virtual {v2, p2, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p3, :cond_1

    move-object p2, v5

    goto :goto_2

    :cond_1
    move-object p2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v5, p2

    :goto_3
    move-object p2, v2

    goto :goto_7

    :catch_1
    move-object v5, p2

    :catch_2
    move-object p2, v2

    goto :goto_4

    :catch_3
    move-object v5, p2

    :catch_4
    move-object p2, v2

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v5, p2

    goto :goto_7

    :catch_5
    move-object v5, p2

    :goto_4
    :try_start_5
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_6
    move-object v5, p2

    :goto_5
    :try_start_7
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_4

    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    :goto_6
    return v0

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz p2, :cond_6

    :try_start_9
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_8

    :catch_7
    move-exception p2

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :goto_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_a
    throw p1
.end method

.method private getFileListOrderByTimeDesc(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    invoke-direct {p1, v1, v2}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;-><init>(Ljava/io/File;Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$1;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    invoke-direct {v5, v4, v2}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;-><init>(Ljava/io/File;Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$1;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method private getFileSize(Ljava/util/ArrayList;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;",
            ">;I)J"
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-lt p2, v0, :cond_1

    sget v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXNUM:I

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    if-ge v0, p2, :cond_1

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 6

    const-string v0, "maxFileSize"

    const-string v1, "maxFileNum"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "logPath"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v5, "authCode"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v5, "authCodes"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v5, "destName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v3, "bucket"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->COS_DEFAULT_BUCKET:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v5, "tdm-binary"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v4, :cond_b

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXNUM:I

    if-le v2, v3, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXNUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXNUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_d

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXSIZE:I

    if-le v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXSIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_DEFAUT_MAXSIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return v4

    :cond_11
    :goto_2
    return v3
.end method

.method public executeTask()V
    .locals 36

    move-object/from16 v1, p0

    const-string v2, "authCode"

    const-string v3, "/"

    const-string v4, "destName"

    const-string v5, "logPath"

    const-string v6, "event_total_time"

    const-string v7, "event_code"

    const-string v8, "Taskid=%d End "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v11, v12, :cond_0

    sget-object v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v11}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v11

    iput v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    goto :goto_0

    :cond_0
    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    if-ne v11, v12, :cond_1

    sget-object v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v11}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v11

    iput v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    goto :goto_0

    :cond_1
    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    if-ne v11, v12, :cond_17

    :goto_0
    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    iget-wide v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v14

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v15

    const-string v2, "Taskid=%d Begin,Current status is %d "

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v3, v14

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v3, v15

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->name:Ljava/lang/String;

    aput-object v11, v3, v13

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->type:Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v11, v3, v12

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v3, v12

    const-string v11, "Taskid=%d Detail: \ntaskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->executeCount:I

    add-int/2addr v2, v15

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->executeCount:I

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->executeCount:I

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-le v2, v3, :cond_2

    :try_start_1
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Discard: it has run %d times"

    new-array v4, v13, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v14

    iget v5, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->executeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_9

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->checkParamValid()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_3

    :try_start_3
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Failed: CheckParamValid fail"

    new-array v4, v15, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->checkFileGDPR(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_4

    :try_start_5
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Failed: checkFileGDPR fail"

    new-array v4, v15, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PRIVATE_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :try_start_6
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v3, "filename"

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v3, "client_path"

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v3, "server_path"

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v3, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v11

    iget-object v11, v11, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v3, "client_addr"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v11

    iget-object v11, v11, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v11, :cond_5

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/enq/transceiver/TransceiverManager;->getExFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v11, :cond_6

    :try_start_9
    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: Can not find log file:%s"

    new-array v5, v13, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v14

    aput-object v2, v5, v15

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_NO_FILE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :try_start_a
    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v13, "maxFileNum"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v1, v2}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->getFileListOrderByTimeDesc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v19, :cond_7

    :try_start_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    iget-object v15, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v14, "%s %s %d %d"

    move-object/from16 v22, v13

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    aput-object v23, v13, v21

    invoke-static/range {v19 .. v19}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x1

    aput-object v23, v13, v20

    invoke-static/range {v19 .. v19}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v17, 0x2

    aput-object v23, v13, v17

    invoke-static/range {v19 .. v19}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x3

    aput-object v19, v13, v18

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v13, v22

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    :try_start_c
    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    move-object/from16 v13, v16

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v26, v12

    check-cast v26, Ljava/lang/String;

    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v24, v12

    check-cast v24, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v12, :cond_8

    :try_start_d
    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: Get src filelist is empty: %s"

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v11, v5

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILELIST_EMPTY:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    :try_start_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_b

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v12, "authCodes"

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v12, ";;"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v12, v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-ge v12, v11, :cond_9

    :try_start_f
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: maxFileNum=%d,authcode.size=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v5, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v5, v12

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x2

    aput-object v3, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    const/4 v12, 0x0

    :goto_2
    :try_start_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-ge v12, v14, :cond_a

    if-ge v12, v11, :cond_a

    add-int/lit8 v14, v12, 0x1

    :try_start_11
    aget-object v15, v3, v14

    move-object/from16 v16, v3

    const-string v3, "%s_%d"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v28, v6

    move/from16 v19, v11

    const/4 v11, 0x2

    :try_start_12
    new-array v6, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v24, v6, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v20, 0x1

    aput-object v11, v6, v20

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;

    invoke-static {v6}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;->access$000(Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask$UploadFileInfo;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v11, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v12

    new-instance v15, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;

    move-object/from16 v22, v4

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->name:Ljava/lang/String;

    move-object/from16 v23, v13

    move/from16 v25, v14

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    const-string v33, "log"

    move-object/from16 v27, v5

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskScene:Ljava/lang/String;

    move-object/from16 v29, v15

    move-object/from16 v30, v4

    move-wide/from16 v31, v13

    move-object/from16 v34, v11

    move-object/from16 v35, v5

    invoke-direct/range {v29 .. v35}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4, v15}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v5, "Taskid=%d add task: logPath=%s,destName=%s"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v11, 0x1

    aput-object v6, v12, v11

    const/4 v6, 0x2

    aput-object v3, v12, v6

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v3, v16

    move/from16 v11, v19

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    move/from16 v12, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v28

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v28

    goto/16 :goto_9

    :cond_a
    move-object/from16 v28, v6

    :try_start_13
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v28

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v5, v28

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v5, v28

    goto/16 :goto_8

    :cond_b
    move-object v5, v6

    move v4, v11

    :try_start_14
    invoke-direct {v1, v2, v4}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->getFileSize(Ljava/util/ArrayList;I)J

    move-result-wide v11

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string v13, "filesize"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v13, "maxFileSize"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v13, v6

    invoke-direct {v1, v11, v12, v13, v14}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->checkFileSize(JJ)Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Failed: Src filesize is not ok: %d,%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v4, v14

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v4, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    :try_start_15
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/enq/transceiver/TransceiverManager;->getExFileDir()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "%s/ENQSDK/zipfiles/"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v12, v11

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_e
    const-string v3, "%sENQSDK/zipfiles/"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v12, v11

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_f
    const-string v6, "%s%s"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    const/4 v3, 0x1

    aput-object v24, v12, v3

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->compressFile(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    if-eq v2, v4, :cond_10

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: Compress zip file %s"

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v3, v11, v6

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_10
    :try_start_16
    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: Can not find zip file %s"

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v3, v11, v6

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_COMPRESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    :try_start_17
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    sget v4, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->FILE_COMPRESS_MAXSIZE:I

    move-wide v15, v11

    int-to-long v11, v4

    invoke-direct {v1, v13, v14, v11, v12}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->checkFileSize(JJ)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Failed: compressed filesize is not ok: %d"

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v11, v6

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_FILE_SIZE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_12
    :try_start_18
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string v4, "method"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_13

    const-string/jumbo v2, "tdm-binary"

    :cond_13
    move-object/from16 v27, v2

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v22

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v27}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->upload2Tdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    const-string/jumbo v6, "upload_time"

    sub-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_14

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    :goto_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_14
    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_15

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Fail:response is null(timeout) "

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Faild:remote cos server error(reporter invalid/auth fail/parse fail) "

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :goto_5
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_16
    :goto_6
    :try_start_19
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Failed: can not getExFileDir"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v5, v6

    :goto_7
    move-object v2, v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v5, v6

    :goto_8
    move-object v2, v0

    :goto_9
    :try_start_1a
    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    iput v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const-string v4, "Taskid=%d Fail:\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v6, v11

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_4
    move-exception v0

    goto :goto_7

    :goto_b
    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v4, v11

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_17
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
