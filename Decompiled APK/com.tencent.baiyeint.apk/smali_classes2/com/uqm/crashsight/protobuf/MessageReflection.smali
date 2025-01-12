.class Lcom/uqm/crashsight/protobuf/MessageReflection;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;,
        Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;,
        Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Message;",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v3

    check-cast v2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Message;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->d()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result p0

    :goto_2
    add-int/2addr v1, p0

    return v1
.end method

.method private static a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/CodedOutputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Message;",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result p3

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

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v1

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {p2, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Message;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    move v3, v5

    goto :goto_2

    :cond_3
    invoke-interface {p0, v2}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    sget v0, Lcom/uqm/crashsight/protobuf/WireFormat;->a:I

    if-ne p5, v0, :cond_9

    move-object p5, v3

    move-object v0, p5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_4

    sget v5, Lcom/uqm/crashsight/protobuf/WireFormat;->c:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->m()I

    move-result v1

    if-eqz v1, :cond_0

    instance-of v4, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    if-eqz v4, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    invoke-interface {p4, v0, p3, v1}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v5, Lcom/uqm/crashsight/protobuf/WireFormat;->d:I

    if-ne v4, v5, :cond_3

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->b()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p4, p0, p2, p5, v4}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, p5, v4}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    move-object p5, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    sget p3, Lcom/uqm/crashsight/protobuf/WireFormat;->b:I

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(I)V

    if-eqz p5, :cond_8

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    iget-object p0, v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {p4, p0}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/uqm/crashsight/protobuf/LazyField;

    iget-object p3, v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-direct {p1, p3, p2, p5}, Lcom/uqm/crashsight/protobuf/LazyField;-><init>(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V

    invoke-interface {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p4, p5, p2, p0, p1}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_2

    :cond_7
    if-eqz p5, :cond_8

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    :cond_8
    :goto_2
    return v2

    :cond_9
    invoke-static {p5}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    invoke-static {p5}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c

    instance-of v5, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    invoke-interface {p4, v5, p3, v4}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p3

    if-nez p3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v3, p3, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object p3, p3, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    if-nez p3, :cond_e

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v5, v6, :cond_b

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Message-typed extension lacked default instance: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a()Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;->a:Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;

    if-ne v5, v6, :cond_d

    invoke-virtual {p3, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p3

    move-object v7, v3

    move-object v3, p3

    move-object p3, v7

    goto :goto_4

    :cond_d
    :goto_3
    move-object p3, v3

    :cond_e
    :goto_4
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)I

    move-result v5

    if-ne v0, v5, :cond_f

    move v0, v1

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->q()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)I

    move-result v5

    if-ne v0, v5, :cond_10

    move v0, v2

    goto :goto_5

    :cond_10
    move v0, v1

    move v1, v2

    :goto_5
    if-eqz v1, :cond_12

    if-eqz p1, :cond_11

    invoke-virtual {p1, p5, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/CodedInputStream;)Z

    move-result p0

    return p0

    :cond_11
    invoke-virtual {p0, p5}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b(I)Z

    move-result p0

    return p0

    :cond_12
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result p2

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p3

    sget-object p5, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->n:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne p3, p5, :cond_16

    :cond_13
    :goto_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result p3

    if-lez p3, :cond_17

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object p5

    invoke-virtual {p5}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->k()Z

    move-result p5

    if-eqz p5, :cond_14

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p3

    invoke-interface {p4, v3, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_6

    :cond_14
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p5

    if-nez p5, :cond_15

    if-eqz p1, :cond_13

    invoke-virtual {p1, v4, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_6

    :cond_15
    invoke-interface {p4, v3, p5}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_6

    :cond_16
    :goto_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result p1

    if-lez p1, :cond_17

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v3}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, v3, p1}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_7

    :cond_17
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto :goto_9

    :cond_18
    sget-object p5, Lcom/uqm/crashsight/protobuf/MessageReflection$1;->a:[I

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, v2, :cond_1e

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1d

    const/4 p2, 0x3

    if-eq p5, p2, :cond_19

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v3}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p0

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->k()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p0

    goto :goto_8

    :cond_1a
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p2

    if-nez p2, :cond_1c

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v4, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    :cond_1b
    return v2

    :cond_1c
    move-object p0, p2

    goto :goto_8

    :cond_1d
    invoke-interface {p4, p0, p2, v3, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_1e
    invoke-interface {p4, p0, p2, v3, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;

    move-result-object p0

    :goto_8
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p4, v3, p0}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    goto :goto_9

    :cond_1f
    invoke-interface {p4, v3, p0}, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;

    :goto_9
    return v2
.end method

.method static a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Z
    .locals 5

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method static b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
