.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private builderParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

.field private isClean:Z

.field private meAsParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "TBuilderType;>.BuilderParentImpl;"
        }
    .end annotation
.end field

.field private unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method protected constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->builderParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    return-void
.end method

.method static synthetic access$900(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private setUnknownFieldsInternal(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method


# virtual methods
.method public addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->d(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->builderParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->e(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->meAsParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->meAsParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->meAsParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;

    return-object v0
.end method

.method public getRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Z

    move-result p1

    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end method

.method protected internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected internalGetMutableMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->isClean:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected markClean()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->isClean:Z

    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected onBuilt()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->builderParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->markClean()V

    :cond_0
    return-void
.end method

.method protected final onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->builderParent:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->isClean:Z

    :cond_0
    return-void
.end method

.method public setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsInternal(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected setUnknownFieldsProto3(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsInternal(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    return-object p1
.end method
