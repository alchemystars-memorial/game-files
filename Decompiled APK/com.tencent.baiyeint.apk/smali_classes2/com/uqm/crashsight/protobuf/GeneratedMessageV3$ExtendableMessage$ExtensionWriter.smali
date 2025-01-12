.class public Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private synthetic d:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;Z)V
    .locals 1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->d:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->d:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->j()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    :cond_0
    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;ZB)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p1

    const/high16 v0, 0x20000000

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    instance-of v0, v0, Lcom/uqm/crashsight/protobuf/LazyField$LazyEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    check-cast v0, Lcom/uqm/crashsight/protobuf/LazyField$LazyEntry;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LazyField$LazyEntry;->a()Lcom/uqm/crashsight/protobuf/LazyField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LazyField;->c()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {p2, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    :goto_1
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_3
    return-void
.end method
