.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Ljava/lang/Object;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
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
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->g:I

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->o:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->p:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->r:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->t:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->u:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->g:I

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->p:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->q:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->r:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->s:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->t:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->u:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_2
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->g:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 4

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d:Z

    and-int/lit8 v1, v1, -0x5

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->e:Z

    and-int/lit8 v1, v1, -0x9

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f:Z

    and-int/lit8 v1, v1, -0x11

    const/4 v3, 0x1

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->g:I

    and-int/lit8 v1, v1, -0x21

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->h:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->i:Z

    and-int/lit16 v1, v1, -0x81

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->j:Z

    and-int/lit16 v1, v1, -0x101

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->k:Z

    and-int/lit16 v1, v1, -0x201

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->l:Z

    and-int/lit16 v1, v1, -0x401

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->m:Z

    and-int/lit16 v1, v1, -0x801

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->n:Z

    and-int/lit16 v1, v1, -0x1001

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->o:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x2001

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->p:Ljava/lang/Object;

    and-int/lit16 v1, v1, -0x4001

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->q:Ljava/lang/Object;

    const v2, -0x8001

    and-int/2addr v1, v2

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->r:Ljava/lang/Object;

    const v2, -0x10001

    and-int/2addr v1, v2

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->s:Ljava/lang/Object;

    const v2, -0x20001

    and-int/2addr v1, v2

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->t:Ljava/lang/Object;

    const v2, -0x40001

    and-int/2addr v1, v2

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->u:Ljava/lang/Object;

    const v0, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->e:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->i:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->j:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->k:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->l:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->m:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->n:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->p:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->z()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->q:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->A()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->r:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_11
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->B()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->C()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->D()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->u:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    :cond_14
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x100001

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    goto :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->e()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_1

    :cond_16
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_19
    :goto_1
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 5

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->e:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->f:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->g:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->h:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->i:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->j:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x100

    :cond_8
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->k:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x200

    :cond_9
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->l:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x400

    :cond_a
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->m:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x800

    :cond_b
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->n:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v1, v1, 0x1000

    :cond_c
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_d

    or-int/lit16 v1, v1, 0x2000

    :cond_d
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->o:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_e

    or-int/lit16 v1, v1, 0x4000

    :cond_e
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->p:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x8000

    and-int v4, v2, v3

    if-eqz v4, :cond_f

    or-int/2addr v1, v3

    :cond_f
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->q:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x10000

    and-int v4, v2, v3

    if-eqz v4, :cond_10

    or-int/2addr v1, v3

    :cond_10
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->r:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x20000

    and-int v4, v2, v3

    if-eqz v4, :cond_11

    or-int/2addr v1, v3

    :cond_11
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->s:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x40000

    and-int v4, v2, v3

    if-eqz v4, :cond_12

    or-int/2addr v1, v3

    :cond_12
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->t:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    or-int/2addr v1, v3

    :cond_13
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->u:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_15

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a:I

    :cond_14
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_15
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

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

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->A()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->B()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->w:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->v:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->c()Z

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method
