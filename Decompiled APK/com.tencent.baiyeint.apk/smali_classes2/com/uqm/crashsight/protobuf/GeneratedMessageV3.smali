.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage;
.source "CrashSight"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtensionDescriptorRetriever;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;
    }
.end annotation


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/uqm/crashsight/protobuf/ExtensionLite;)Lcom/uqm/crashsight/protobuf/Extension;
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->checkNotLite(Lcom/uqm/crashsight/protobuf/ExtensionLite;)Lcom/uqm/crashsight/protobuf/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected static canUseUnsafe()Z
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkNotLite(Lcom/uqm/crashsight/protobuf/ExtensionLite;)Lcom/uqm/crashsight/protobuf/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/uqm/crashsight/protobuf/Extension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ExtensionLite;->a()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Extension;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static emptyBooleanList()Lcom/uqm/crashsight/protobuf/Internal$BooleanList;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->d()Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/uqm/crashsight/protobuf/Internal$DoubleList;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->d()Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/uqm/crashsight/protobuf/Internal$FloatList;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->d()Lcom/uqm/crashsight/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d()Lcom/uqm/crashsight/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/uqm/crashsight/protobuf/Internal$LongList;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/LongArrayList;->d()Lcom/uqm/crashsight/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->setAlwaysUseFieldBuildersForTesting(Z)V

    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

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

    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getFieldRaw(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static maybeSerializeBooleanEntryTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/Boolean;",
            "TV;>;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_0
    return-void
.end method

.method protected static mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$BooleanList;)Lcom/uqm/crashsight/protobuf/Internal$BooleanList;
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$BooleanList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal$BooleanList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$DoubleList;)Lcom/uqm/crashsight/protobuf/Internal$DoubleList;
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$DoubleList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal$DoubleList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$FloatList;)Lcom/uqm/crashsight/protobuf/Internal$FloatList;
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$FloatList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal$FloatList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$LongList;)Lcom/uqm/crashsight/protobuf/Internal$LongList;
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$LongList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal$LongList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static newBooleanList()Lcom/uqm/crashsight/protobuf/Internal$BooleanList;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method protected static newDoubleList()Lcom/uqm/crashsight/protobuf/Internal$DoubleList;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method protected static newFloatList()Lcom/uqm/crashsight/protobuf/Internal$FloatList;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method protected static newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method protected static newLongList()Lcom/uqm/crashsight/protobuf/Internal$LongList;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method

.method protected static parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    throw p0
.end method

.method protected static serializeBooleanMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/Boolean;",
            "TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/Boolean;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    return-void
.end method

.method protected static serializeIntegerMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/Integer;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    return-void
.end method

.method protected static serializeLongMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/Long;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    return-void
.end method

.method private static serializeMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    return-void
.end method

.method static setAlwaysUseFieldBuildersForTesting(Z)V
    .locals 0

    sput-boolean p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method protected static writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method protected static writeStringNoTag(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getAllFieldsRaw()Ljava/util/Map;
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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getFieldRaw(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->d(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->memoizedSize:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Z

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

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

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

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

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

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

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
    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

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

.method protected makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method protected mergeFromAndMakeImmutableInternal(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method protected newBuilderForType(Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$1;

    invoke-direct {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$1;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;)V

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
.end method

.method protected newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method must be overridden by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->w()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p4, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/CodedInputStream;)Z

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result p1

    return p1
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/uqm/crashsight/protobuf/MessageLite;)V

    return-object v0
.end method

.method public writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/uqm/crashsight/protobuf/MessageReflection;->a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;Lcom/uqm/crashsight/protobuf/CodedOutputStream;Z)V

    return-void
.end method
