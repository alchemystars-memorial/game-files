.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->c:Ljava/lang/Object;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->c:Ljava/lang/Object;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->c:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    :cond_2
    throw p1
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->d:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    or-int/lit8 v1, v1, 0x2

    :cond_2
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->e:I

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    or-int/lit8 v1, v1, 0x4

    :cond_3
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onBuilt()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->d:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->e:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onChanged()V

    :cond_6
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->aa()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->ab()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method
