.class public final Ld/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/nio/channels/FileChannel;

.field public b:Ljava/nio/MappedByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/c;->a:Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open log file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lb/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "centauriComm<Log>"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lb/a;->a:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ld/c;->a:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b(J)J
    .locals 11

    const-string v0, "centauriComm<Log>"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Ld/c;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "get file channel size error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb/a;->m()V

    invoke-virtual {p0}, Ld/c;->a()V

    move-wide v3, v1

    :goto_0
    sget v5, Le/b;->a:I

    mul-int/lit16 v5, v5, 0x400

    mul-int/lit16 v5, v5, 0x400

    int-to-long v5, v5

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "size to write: %d, channel size: %d, limit: %d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr p1, v3

    sub-long/2addr p1, v5

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    const-string p1, "should refresh file name"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb/a;->m()V

    invoke-virtual {p0}, Ld/c;->a()V

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method
