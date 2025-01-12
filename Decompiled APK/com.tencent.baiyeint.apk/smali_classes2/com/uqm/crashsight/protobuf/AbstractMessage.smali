.class public abstract Lcom/uqm/crashsight/protobuf/AbstractMessage;
.super Lcom/uqm/crashsight/protobuf/AbstractMessageLite;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;,
        Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;
    }
.end annotation


# instance fields
.field protected memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedSize:I

    return-void
.end method

.method private static compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->toByteString(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->toByteString(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static compareFields(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->l:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v3, Ljava/util/List;

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_6
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->compareMapField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private static compareMapField(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->convertMapEntryListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->convertMapEntryListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static convertMapEntryListToMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uqm/crashsight/protobuf/Message;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    invoke-interface {v1, v3}, Lcom/uqm/crashsight/protobuf/Message;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v1, v2}, Lcom/uqm/crashsight/protobuf/Message;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_2
    invoke-interface {v1, v3}, Lcom/uqm/crashsight/protobuf/Message;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected static hashBoolean(Z)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method protected static hashEnum(Lcom/uqm/crashsight/protobuf/Internal$EnumLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p0

    return p0
.end method

.method protected static hashEnumList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->hashEnum(Lcom/uqm/crashsight/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected static hashFields(ILjava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p0, p0, 0x25

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v2

    add-int/2addr p0, v2

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 p0, p0, 0x35

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->hashMapField(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v2, v3, :cond_1

    mul-int/lit8 p0, p0, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    mul-int/lit8 p0, p0, 0x35

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/util/List;)I

    move-result v0

    goto :goto_1

    :cond_2
    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Lcom/uqm/crashsight/protobuf/Internal$EnumLite;)I

    move-result v0

    goto :goto_1

    :cond_3
    return p0
.end method

.method protected static hashLong(J)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static hashMapField(Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->convertMapEntryListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->a(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method private static toByteString(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->compareFields(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMemoizedSerializedSize()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getOneofFieldDescriptor() is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasOneof() is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedHashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedHashCode:I

    :cond_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Z

    move-result v0

    return v0
.end method

.method protected newBuilderForType(Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder is not supported for this type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method newUninitializedMessageException()Lcom/uqm/crashsight/protobuf/UninitializedMessageException;
    .locals 1

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    return-object v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/AbstractMessage;->memoizedSize:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TextFormat;->a()Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/CodedOutputStream;Z)V

    return-void
.end method
