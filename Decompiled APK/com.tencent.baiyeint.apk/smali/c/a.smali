.class public final Lc/a;
.super Ljava/lang/Object;


# static fields
.field public static k:Lc/a;


# instance fields
.field public a:Ld/a;

.field public b:Ld/b;

.field public c:Ld/c;

.field public d:Ljava/nio/MappedByteBuffer;

.field public e:Landroid/os/HandlerThread;

.field public f:Landroid/os/Handler;

.field public g:Lc/a$a;

.field public volatile h:J

.field public final i:[B

.field public j:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a;->a:Ld/a;

    iput-object v0, p0, Lc/a;->b:Ld/b;

    iput-object v0, p0, Lc/a;->c:Ld/c;

    iput-object v0, p0, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    iput-object v0, p0, Lc/a;->e:Landroid/os/HandlerThread;

    iput-object v0, p0, Lc/a;->f:Landroid/os/Handler;

    new-instance v0, Lc/a$a;

    invoke-direct {v0, p0}, Lc/a$a;-><init>(Lc/a;)V

    iput-object v0, p0, Lc/a;->g:Lc/a$a;

    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lc/a;->h:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a;->i:[B

    const v0, 0x25800

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a;->j:[B

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LOG-FLUSH"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/a;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/a;->d:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_1

    const-wide/16 v1, 0xc

    iput-wide v1, p0, Lc/a;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    sub-int/2addr v1, v2

    :try_start_2
    invoke-virtual {p0, v1}, Lc/a;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v2, "centauriComm<Log>"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "check and flush buffer error: <%s>%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lc/a;->a()V

    iget-object v0, p0, Lc/a;->c:Ld/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "flush buffer and write error: <%s>%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "centauriComm<Log>"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x25800

    move/from16 v3, p1

    if-le v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    new-array v3, v2, [B

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "__flush and write data size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "centauriComm<Log>"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "============mmap cache begin===========\r\n"

    invoke-virtual {v1, v0}, Lc/a;->d(Ljava/lang/String;)[B

    move-result-object v0

    const-string v6, "============mmap cache end=============\r\n"

    invoke-virtual {v1, v6}, Lc/a;->d(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, v1, Lc/a;->c:Ld/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v8, v2

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v7, v8, v9}, Ld/c;->b(J)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v11, v7, Ld/c;->a:Ljava/nio/channels/FileChannel;

    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    array-length v15, v0

    array-length v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/2addr v15, v2

    add-int/2addr v15, v4

    move v4, v2

    int-to-long v1, v15

    move-wide v15, v1

    :try_start_1
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, v7, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v7, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, v7, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, v7, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, v7, Ld/c;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write map time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sync time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v11

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lb/a;->b:Ljava/lang/String;

    sget v1, Le/b;->b:I

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Le/a;

    invoke-direct {v3, v0, v1}, Le/a;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move v4, v2

    :goto_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "cache log to file error: <%s>%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v1, p0

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    iget-object v3, v1, Lc/a;->j:[B

    invoke-virtual {v0, v3, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v10, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 v3, 0xc

    iput-wide v3, v1, Lc/a;->h:J

    iget-object v0, v1, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :goto_3
    return-void
.end method

.method public final d(Ljava/lang/String;)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lc/a;->a:Ld/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/a;->a([B)[B

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lc/a;->b:Ld/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ld/b;->a([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "centauriComm<Log>"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "process log error: <%s>%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc/a;->i:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e([B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iget-wide v1, p0, Lc/a;->h:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x19000

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc/a;->a()V

    :cond_0
    iget-object v0, p0, Lc/a;->d:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lc/a;->h:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/a;->h:J

    iget-object p1, p0, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const/4 v0, 0x0

    iget-wide v1, p0, Lc/a;->h:J

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
