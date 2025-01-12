.class public final Ld/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lf/a;

.field public b:Lf/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/a;->a:Lf/a;

    iput-object v0, p0, Ld/a;->b:Lf/b;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a;->b:Lf/b;

    iget-object v1, v0, Lf/b;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, v0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    iget-object v0, p0, Ld/a;->a:Lf/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, v0, Lf/a;->c:[B

    iput-object v1, v0, Lf/a;->a:[B

    const/4 v1, 0x0

    iput v1, v0, Lf/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    iget-object v0, p0, Ld/a;->b:Lf/b;

    iget-object v2, v0, Lf/b;->a:Ljava/io/OutputStream;

    iget-object v0, v0, Lf/b;->f:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Ld/a;->b:Lf/b;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lf/b;->write([BII)V

    iget-object p1, p0, Ld/a;->b:Lf/b;

    invoke-virtual {p1}, Lf/b;->a()V

    iget-object p1, p0, Ld/a;->b:Lf/b;

    invoke-virtual {p1}, Lf/b;->flush()V

    iget-object p1, p0, Ld/a;->a:Lf/a;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v0, p1, Lf/a;->b:I

    new-array v2, v0, [B

    iget-object v3, p1, Lf/a;->a:[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1

    throw v0

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
