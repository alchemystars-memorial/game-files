.class Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderAdapter"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/Message$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;->a:Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object p0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_1

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz v0, :cond_1

    invoke-interface {p4, v0}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_1
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/Message$Builder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object p0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;
    .locals 1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->b:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    instance-of p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->c:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1

    :cond_1
    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->a:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$BuilderAdapter;->a:Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {v0, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_1

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method
