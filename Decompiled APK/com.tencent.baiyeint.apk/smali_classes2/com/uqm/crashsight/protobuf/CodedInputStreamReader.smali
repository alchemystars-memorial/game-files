.class final Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Reader;


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iput-object p0, p1, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d:Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d:Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d:Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

    return-object p0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 3
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

    sget-object v0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader$1;->a:[I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_1
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_2
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_3
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_4
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_5
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_6
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_9
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_a
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_b
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v2, :cond_a

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_c
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_d
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_e
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v2, :cond_d

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_f
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_10
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
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

.method private a(Ljava/util/List;Z)V
    .locals 3
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LazyStringList;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_0
    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    if-eqz p2, :cond_5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_8
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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iget v1, v1, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a:I

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iget v2, v2, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v0

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iget v3, v2, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a:I

    invoke-interface {p1, v1, p0, p2}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    iget p2, p1, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a:I

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

    :try_start_0
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

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

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

    throw p1
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 2
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v0

    iget-object v2, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d()Z

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

    invoke-direct {p0, v4, v5, p3}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    throw p1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->w()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
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

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 2
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    return v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final f()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c()F

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 3
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

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 2
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

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

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

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final j()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
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

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result v0

    return v0

    :cond_0
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final l()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 3
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

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final o()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final p()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/IntArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final q()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_1

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
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result v0

    if-lt v0, v1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->z()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final r()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->o()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final s()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->q()I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a:Lcom/uqm/crashsight/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->r()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method
