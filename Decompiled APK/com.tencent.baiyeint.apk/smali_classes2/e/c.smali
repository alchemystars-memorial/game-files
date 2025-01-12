.class public final Le/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJ)V
    .locals 0

    iput-object p1, p0, Le/c;->a:Ljava/lang/String;

    iput-wide p2, p0, Le/c;->b:J

    iput p4, p0, Le/c;->c:I

    iput-wide p5, p0, Le/c;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Le/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Le/b;->c(Ljava/io/File;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Le/b;->b(Ljava/io/File;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    long-to-double v1, v1

    iget-wide v5, p0, Le/c;->b:J

    long-to-double v5, v5

    cmpl-double v1, v1, v5

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v5, v0

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    array-length v7, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-ge v2, v7, :cond_7

    aget-object v8, v0, v2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "centauriLog.mmap"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v1, :cond_4

    sub-long v9, v5, v9

    iget v11, p0, Le/c;->c:I

    mul-int/lit8 v11, v11, 0x18

    mul-int/lit16 v11, v11, 0xe10

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_4

    invoke-static {v8}, Le/b;->b(Ljava/io/File;)J

    move-result-wide v9

    div-long/2addr v9, v3

    div-long/2addr v9, v3

    iget-wide v11, p0, Le/c;->d:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5

    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-void
.end method
