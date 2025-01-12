.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    :cond_2
    throw p1
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    :cond_0
    return-void
.end method

.method private d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a:I

    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->Y()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->Z()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method
