.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;",
        ">",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object p0
.end method


# virtual methods
.method protected final G()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->k()Z

    move-result v0

    return v0
.end method

.method protected final H()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->l()I

    move-result v0

    return v0
.end method

.method protected final I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$800(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$800(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getRepeatedFieldCount(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    return-void
.end method

.method protected parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v1, p2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v3

    new-instance v4, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-direct {v4, p2}, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;-><init>(Lcom/uqm/crashsight/protobuf/FieldSet;)V

    move-object v0, p1

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;I)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldProto3(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result p1

    return p1
.end method
