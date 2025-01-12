.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

.field private l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d:I

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->e:I

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->f:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->j:Ljava/lang/Object;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->e:I

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->j:Ljava/lang/Object;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 4

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->c:I

    and-int/lit8 v1, v1, -0x3

    const/4 v3, 0x1

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d:I

    and-int/lit8 v1, v1, -0x5

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->e:I

    and-int/lit8 v1, v1, -0x9

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->f:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x11

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->g:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x21

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->h:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->i:I

    and-int/lit16 v1, v1, -0x81

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->j:Ljava/lang/Object;

    and-int/lit16 v0, v1, -0x101

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->g()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_2
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->e:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    return-object p0
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->c:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->d:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->e:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->f:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->h:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->i:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_8

    or-int/lit16 v1, v1, 0x100

    :cond_8
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->j:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    :goto_0
    or-int/lit16 v1, v1, 0x200

    :cond_a
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method private c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->l:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->c:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->i:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->j:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_a
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->m()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->n()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method
