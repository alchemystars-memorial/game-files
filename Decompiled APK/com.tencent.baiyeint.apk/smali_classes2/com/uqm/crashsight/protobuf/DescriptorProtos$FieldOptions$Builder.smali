.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->b:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->b:I

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_2
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->b:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->c:Z

    and-int/lit8 v1, v1, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d:I

    and-int/lit8 v1, v1, -0x5

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->e:Z

    and-int/lit8 v1, v1, -0x9

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f:Z

    and-int/lit8 v1, v1, -0x11

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->g:Z

    and-int/lit8 v0, v1, -0x21

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    :cond_0
    return-void
.end method

.method private f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->c:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->e:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->g:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->e()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_b
    :goto_1
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->b:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->c:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->e:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->f:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->g:Z

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_7

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a:I

    :cond_6
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->E()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->F()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->i:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object p1
.end method
