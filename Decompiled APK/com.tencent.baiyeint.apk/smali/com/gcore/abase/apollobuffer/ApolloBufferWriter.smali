.class public Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;
.super Ljava/lang/Object;
.source "ApolloBufferWriter.java"


# instance fields
.field private bs:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public GetBufferData()[B
    .locals 4

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public GetByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public Reserve(I)V
    .locals 3

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public Write(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Reserve(I)V

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Write(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Reserve(I)V

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Write(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Reserve(I)V

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Write(Lcom/gcore/abase/apollobuffer/ApolloBufferBase;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;->Encode(Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;)Z

    :cond_0
    return-void
.end method

.method public Write(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(B)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Z)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(S)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(J)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/gcore/abase/apollobuffer/ApolloBufferBase;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Lcom/gcore/abase/apollobuffer/ApolloBufferBase;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write([B)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, [Z

    if-eqz v0, :cond_a

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, [I

    if-eqz v0, :cond_c

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, [J

    if-eqz v0, :cond_d

    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_d
    instance-of v0, p1, [F

    if-eqz v0, :cond_e

    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_e
    instance-of v0, p1, [D

    if-eqz v0, :cond_f

    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_10
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/util/List;)V

    goto :goto_0

    :cond_11
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/util/Collection;)V

    goto :goto_0

    :cond_12
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_13

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/util/Map;)V

    goto :goto_0

    :cond_13
    const-string p1, "ABase"

    const-string v0, "ApolloBufferWriter Write Unknown Type"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public Write(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [B

    :cond_1
    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write([B)V

    return-void
.end method

.method public Write(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public Write(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    if-eqz p1, :cond_1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public Write(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    :cond_1
    return-void
.end method

.method public Write(S)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Reserve(I)V

    iget-object v0, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Write(Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(B)V

    return-void
.end method

.method public Write([B)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write([BI)V

    return-void
.end method

.method public Write([BI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    array-length p2, p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    invoke-virtual {p0, p2}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Reserve(I)V

    iget-object v1, p0, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/gcore/abase/apollobuffer/ApolloBufferWriter;->Write(I)V

    :goto_0
    return-void
.end method
