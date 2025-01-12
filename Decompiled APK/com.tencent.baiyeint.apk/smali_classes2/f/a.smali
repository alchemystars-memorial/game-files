.class public final Lf/a;
.super Ljava/io/OutputStream;


# instance fields
.field public a:[B

.field public b:I

.field public final c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [B

    iput-object v1, p0, Lf/a;->c:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lf/a;->a:[B

    return-void
.end method

.method public static a(III)V
    .locals 2

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arrayLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", offset: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", count: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    iget v0, p0, Lf/a;->b:I

    iget-object v1, p0, Lf/a;->a:[B

    add-int/2addr p1, v0

    array-length v2, v1

    if-gt p1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lf/a;->a:[B

    return-void
.end method

.method public final close()V
    .locals 0

    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lf/a;->a:[B

    iget v2, p0, Lf/a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final write(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lf/a;->b:I

    iget-object v1, p0, Lf/a;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a;->b(I)V

    :cond_0
    iget-object v0, p0, Lf/a;->a:[B

    iget v1, p0, Lf/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lf/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final write([BII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lf/a;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Lf/a;->b(I)V

    iget-object v0, p0, Lf/a;->a:[B

    iget v1, p0, Lf/a;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lf/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lf/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
