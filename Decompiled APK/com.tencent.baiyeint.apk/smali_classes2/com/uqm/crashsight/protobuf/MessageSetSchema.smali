.class final Lcom/uqm/crashsight/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MessageLite;

.field private final b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->c:Z

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-void
.end method

.method static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageSetSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            ")",
            "Lcom/uqm/crashsight/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/MessageSetSchema;-><init>(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v3

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->c()I

    move-result v4

    sget v6, Lcom/uqm/crashsight/protobuf/WireFormat;->a:I

    if-eq v4, v6, :cond_4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v4

    invoke-virtual {v1, p3, v5, v4}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v4

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :goto_0
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result v8

    if-eq v8, v5, :cond_8

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->c()I

    move-result v8

    sget v9, Lcom/uqm/crashsight/protobuf/WireFormat;->c:I

    if-ne v8, v9, :cond_5

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result v4

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {v1, p3, v6, v4}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_5
    sget v9, Lcom/uqm/crashsight/protobuf/WireFormat;->d:I

    if-ne v8, v9, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V

    goto :goto_0

    :cond_6
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v7

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Reader;->c()I

    move-result v5

    sget v8, Lcom/uqm/crashsight/protobuf/WireFormat;->b:I

    if-ne v5, v8, :cond_b

    if-eqz v7, :cond_a

    if-eqz v6, :cond_9

    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ByteString;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0, v2, v4, v7}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_b
    :try_start_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/Object;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->d()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget p3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    sget v3, Lcom/uqm/crashsight/protobuf/WireFormat;->a:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    iget-object v3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object p3

    iget-object v2, v8, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object v2, v8, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    invoke-static {p2, v4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v6, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v6}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v7

    invoke-static {v6}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v6

    iget-object v7, v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget-object v6, v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v7, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    invoke-static {p2, v4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget-object v3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-static {p2, v4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget p3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    iget-object v6, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    iget-object v7, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {v2, v6, v7, p3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    goto :goto_2

    :cond_7
    :goto_3
    sget v7, Lcom/uqm/crashsight/protobuf/WireFormat;->b:I

    if-eq v6, v7, :cond_8

    invoke-static {v6, p2, v4, p4, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {p3, v5}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p3

    invoke-virtual {v1, p3, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->j()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->e(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->m()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->b:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->d:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)V

    return-void
.end method
