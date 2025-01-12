.class public final Lcom/uqm/crashsight/protobuf/MapEntry;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/MapEntry$Builder;,
        Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile d:I


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iput-object p5, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    new-instance p3, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;)V

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    :try_start_0
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    invoke-static {p2, p1, p3}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;",
            "TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/uqm/crashsight/protobuf/MapEntry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v6
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/MapEntry;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object p0

    sget-object v0, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne p0, v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->isInitialized()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/MapEntry;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;B)V

    return-object v0
.end method

.method final d()Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    return-object v0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 4
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

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/MapEntry;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/MapEntry;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->d:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isInitialized()Z
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v0, v2, :cond_0

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;B)V

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 8

    new-instance v7, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZB)V

    return-object v7
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 8

    new-instance v7, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZB)V

    return-object v7
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->c:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry;->b:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
