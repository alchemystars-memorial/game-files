.class final Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/uqm/crashsight/protobuf/BinaryReader;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final a:Z

.field private final b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader;-><init>(B)V

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/BinaryReader$1;->a:[I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_1
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_4
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->s()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_9
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->j()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->k()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :pswitch_10
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz v0, :cond_3

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int v1, v2, v0

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sget-object v3, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-object p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LazyStringList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne p1, p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p2

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq p2, v3, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int v3, v1, v2

    if-gt v0, v3, :cond_1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    :try_start_0
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    :try_start_0
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    iget p2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    throw p1
.end method

.method private v()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-eq v1, v0, :cond_8

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->x()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_0
    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return v0

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private w()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-eq v1, v0, :cond_b

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->x()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    move v1, v0

    :goto_3
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-wide v2

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private x()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private y()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private z()J
    .locals 9

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    :goto_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge p1, v2, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne p1, v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_4

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_a

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v2, :cond_d

    move v2, v3

    goto :goto_3

    :cond_d
    move v2, v1

    :goto_3
    if-eqz v2, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_c

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_5

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int v4, v2, v3

    if-gt v0, v4, :cond_5

    add-int/2addr v3, v0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    :try_start_0
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    return-void

    :catchall_0
    move-exception p1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    throw p1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    check-cast p1, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_7

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    :goto_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    :goto_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    :cond_f
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    return v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    check-cast p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_b
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_c

    move v3, v1

    goto :goto_3

    :cond_c
    move v3, v2

    :goto_3
    if-eqz v3, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_b

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_e
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    check-cast p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_b
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_c

    move v3, v1

    goto :goto_3

    :cond_c
    move v3, v2

    :goto_3
    if-eqz v3, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_b

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_e
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final d()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_12

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v0, v1

    if-gt v2, v0, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return v3

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    if-ne v1, v2, :cond_7

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->f:I

    return v3

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_9

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_9

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return v3

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    const/16 v0, 0x8

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_b

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return v3

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_c
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v0, v1

    const/16 v4, 0xa

    if-lt v0, v4, :cond_e

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_e

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v0, v1

    if-ltz v1, :cond_d

    iput v6, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_1

    :cond_e
    :goto_2
    if-ge v2, v4, :cond_11

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    aget-byte v0, v1, v0

    if-gez v0, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    return v3

    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_12
    :goto_4
    return v2
.end method

.method public final e()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_b
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_c

    move v3, v1

    goto :goto_3

    :cond_c
    move v3, v2

    :goto_3
    if-eqz v3, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_b

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_e
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final f()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    :goto_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge p1, v2, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->j()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne p1, v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_4

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_a

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v2, :cond_d

    move v2, v3

    goto :goto_3

    :cond_d
    move v2, v1

    :goto_3
    if-eqz v2, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_c

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_7

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    :goto_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    :goto_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    :cond_f
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final h()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v1

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v1, v4, :cond_4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_e

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_e
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_6

    :cond_f
    move v0, v3

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v1, :cond_10

    move v1, v2

    goto :goto_7

    :cond_10
    move v1, v3

    :goto_7
    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v1

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v1, v4, :cond_e

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_12
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final j()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final k()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final l(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final l()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->r()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_7

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_6

    add-int/2addr v2, v0

    :goto_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_f

    add-int/2addr v2, v0

    :goto_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_e

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-void

    :cond_f
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final o()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_0
    if-ltz v0, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->b:[B

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-object v1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result p1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    add-int/2addr v2, p1

    :goto_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge p1, v2, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->s()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne p1, v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_4

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    if-ltz v0, :cond_a

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    add-int/2addr v2, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v2, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->s()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v2, :cond_d

    move v2, v3

    goto :goto_3

    :cond_d
    move v2, v1

    :goto_3
    if-eqz v2, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v2

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v2, v4, :cond_c

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void
.end method

.method public final p()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final q()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    if-ne v0, v3, :cond_a

    move v3, v1

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    if-eq v3, v4, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final r()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->y()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final s()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->z()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final t()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->v()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final u()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method
