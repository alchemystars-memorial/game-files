.class final Lcom/uqm/crashsight/protobuf/ExtensionSchemaLite;
.super Lcom/uqm/crashsight/protobuf/ExtensionSchema;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object p1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite;I)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->e()I

    move-result v0

    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lcom/uqm/crashsight/protobuf/ExtensionSchemaLite$1;->a:[I

    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Type cannot be packed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

    invoke-static {v0, p3, p1, p5, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    :goto_0
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->n:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result p1

    iget-object p3, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object p3, p3, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

    invoke-interface {p3, p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;->a(I)Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {v0, p1, p5, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    sget-object p6, Lcom/uqm/crashsight/protobuf/ExtensionSchemaLite$1;->a:[I

    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_e
    iget-object p6, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_f
    iget-object p6, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_10
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->m()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_11
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_14
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_15
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_16
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_17
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_18
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :pswitch_19
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_1a
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1b
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_1c
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1d
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1e
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :pswitch_1f
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_1
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/uqm/crashsight/protobuf/ExtensionSchemaLite$1;->a:[I

    iget-object p3, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_2
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_3
    return-object p5

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ByteString;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/BinaryReader;->a(Ljava/nio/ByteBuffer;Z)Lcom/uqm/crashsight/protobuf/BinaryReader;

    move-result-object p1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, v0, p1, p3}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p2, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/MessageLite;)Z
    .locals 0

    instance-of p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    return p1
.end method

.method final b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->d()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method final c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    return-void
.end method
