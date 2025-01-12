.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/ObjectCodec;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec;
.source "ObjectCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec;-><init>()V

    return-void
.end method

.method private static createIOException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/ObjectCodec;->createIOException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
