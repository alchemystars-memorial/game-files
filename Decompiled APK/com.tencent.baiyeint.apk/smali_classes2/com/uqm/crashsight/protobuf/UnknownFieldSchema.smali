.class abstract Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            ")V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract a(Lcom/uqm/crashsight/protobuf/Reader;)Z
.end method

.method final a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->c()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;II)V

    return v2

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v3

    :cond_3
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->c()I

    move-result p2

    if-ne v3, p2, :cond_5

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V

    return v2

    :cond_7
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;IJ)V

    return v2

    :cond_8
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Object;)V
.end method

.method abstract e(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract f(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
