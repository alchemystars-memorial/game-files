.class Loauth/signpost/dmm/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loauth/signpost/dmm/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    iput-boolean p1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->closed:Z

    iput p1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    iput-object p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iput-object p3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->newline:[B

    iput p4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linemax:I

    iput-boolean p5, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->doPadding:Z

    return-void
.end method

.method private checkNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->closed:Z

    iget v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Loauth/signpost/dmm/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Loauth/signpost/dmm/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    iget-object v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Loauth/signpost/dmm/util/Base64$EncOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_8

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_1

    add-int/2addr v0, v2

    iput v0, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    return-void

    :cond_1
    move p2, v3

    :cond_2
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b2:I

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0}, Loauth/signpost/dmm/util/Base64$EncOutputStream;->checkNewline()V

    iget-object p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    shl-int/2addr v4, v1

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    iget p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    :cond_3
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v3, v0, 0x3

    sub-int/2addr p3, v3

    iput p3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-gtz v0, :cond_6

    iget p3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->leftover:I

    if-ne p3, v2, :cond_4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    goto :goto_1

    :cond_4
    if-ne p3, v1, :cond_5

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b0:I

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->b1:I

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-direct {p0}, Loauth/signpost/dmm/util/Base64$EncOutputStream;->checkNewline()V

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr p2, v3

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v5, p2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, v4, p2

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write(I)V

    iget p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Loauth/signpost/dmm/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    move v0, p3

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
