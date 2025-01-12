.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private volatile i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private volatile p:Ljava/lang/Object;

.field private volatile q:Ljava/lang/Object;

.field private volatile r:Ljava/lang/Object;

.field private volatile s:Ljava/lang/Object;

.field private volatile t:Ljava/lang/Object;

.field private volatile u:Ljava/lang/Object;

.field private volatile v:Ljava/lang/Object;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private x:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    const/high16 v4, 0x100000

    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    :sswitch_0
    and-int v5, v3, v4

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    or-int/2addr v3, v4

    :cond_1
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    sget-object v6, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    goto/16 :goto_0

    :sswitch_a
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    goto/16 :goto_0

    :sswitch_b
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    goto/16 :goto_0

    :sswitch_c
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    goto/16 :goto_0

    :sswitch_d
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    goto/16 :goto_0

    :sswitch_e
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    goto/16 :goto_0

    :sswitch_f
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_11
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v6

    if-nez v6, :cond_2

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v5}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_2
    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    move v1, v2

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int p2, v3, v4

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    throw p1

    :cond_4
    and-int p1, v3, v4

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x42 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x5a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0xa0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xf8 -> :sswitch_9
        0x122 -> :sswitch_8
        0x12a -> :sswitch_7
        0x13a -> :sswitch_6
        0x142 -> :sswitch_5
        0x14a -> :sswitch_4
        0x150 -> :sswitch_3
        0x162 -> :sswitch_2
        0x16a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method public static F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method private J()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private K()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private L()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private M()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private N()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private O()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private P()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private Q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private R()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private S()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private static T()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    return-object v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    return p1
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    return p1
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    return p1
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    return p1
.end method

.method static synthetic j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v2, v4, :cond_4

    return v3

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    move v4, v0

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    if-eq v2, v4, :cond_9

    return v3

    :cond_9
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_d

    move v5, v0

    goto :goto_7

    :cond_d
    move v5, v3

    :goto_7
    if-eq v2, v5, :cond_e

    return v3

    :cond_e
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_f

    move v2, v0

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    if-eq v2, v5, :cond_10

    return v3

    :cond_10
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_9

    :cond_11
    move v2, v3

    :goto_9
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_12

    move v5, v0

    goto :goto_a

    :cond_12
    move v5, v3

    :goto_a
    if-eq v2, v5, :cond_13

    return v3

    :cond_13
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_14

    move v2, v0

    goto :goto_b

    :cond_14
    move v2, v3

    :goto_b
    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    if-eq v2, v5, :cond_15

    return v3

    :cond_15
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_16

    move v2, v0

    goto :goto_c

    :cond_16
    move v2, v3

    :goto_c
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_17

    move v5, v0

    goto :goto_d

    :cond_17
    move v5, v3

    :goto_d
    if-eq v2, v5, :cond_18

    return v3

    :cond_18
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_19

    move v2, v0

    goto :goto_e

    :cond_19
    move v2, v3

    :goto_e
    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    if-eq v2, v5, :cond_1a

    return v3

    :cond_1a
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_f

    :cond_1b
    move v2, v3

    :goto_f
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_1c

    move v5, v0

    goto :goto_10

    :cond_1c
    move v5, v3

    :goto_10
    if-eq v2, v5, :cond_1d

    return v3

    :cond_1d
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1e

    move v2, v0

    goto :goto_11

    :cond_1e
    move v2, v3

    :goto_11
    if-eqz v2, :cond_1f

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    if-eq v2, v5, :cond_1f

    return v3

    :cond_1f
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_20

    move v2, v0

    goto :goto_12

    :cond_20
    move v2, v3

    :goto_12
    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_21

    move v4, v0

    goto :goto_13

    :cond_21
    move v4, v3

    :goto_13
    if-eq v2, v4, :cond_22

    return v3

    :cond_22
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_23

    move v1, v0

    goto :goto_14

    :cond_23
    move v1, v3

    :goto_14
    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    :cond_24
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_25

    move v2, v0

    goto :goto_15

    :cond_25
    move v2, v3

    :goto_15
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_26

    move v5, v0

    goto :goto_16

    :cond_26
    move v5, v3

    :goto_16
    if-eq v2, v5, :cond_27

    return v3

    :cond_27
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_28

    move v2, v0

    goto :goto_17

    :cond_28
    move v2, v3

    :goto_17
    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    if-eq v2, v5, :cond_29

    return v3

    :cond_29
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_2a

    move v2, v0

    goto :goto_18

    :cond_2a
    move v2, v3

    :goto_18
    and-int/lit16 v5, v4, 0x100

    if-eqz v5, :cond_2b

    move v5, v0

    goto :goto_19

    :cond_2b
    move v5, v3

    :goto_19
    if-eq v2, v5, :cond_2c

    return v3

    :cond_2c
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_2d

    move v2, v0

    goto :goto_1a

    :cond_2d
    move v2, v3

    :goto_1a
    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    if-eq v2, v5, :cond_2e

    return v3

    :cond_2e
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_2f

    move v2, v0

    goto :goto_1b

    :cond_2f
    move v2, v3

    :goto_1b
    and-int/lit16 v5, v4, 0x200

    if-eqz v5, :cond_30

    move v5, v0

    goto :goto_1c

    :cond_30
    move v5, v3

    :goto_1c
    if-eq v2, v5, :cond_31

    return v3

    :cond_31
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_32

    move v2, v0

    goto :goto_1d

    :cond_32
    move v2, v3

    :goto_1d
    if-eqz v2, :cond_33

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    if-eq v2, v5, :cond_33

    return v3

    :cond_33
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_34

    move v2, v0

    goto :goto_1e

    :cond_34
    move v2, v3

    :goto_1e
    and-int/lit16 v5, v4, 0x400

    if-eqz v5, :cond_35

    move v5, v0

    goto :goto_1f

    :cond_35
    move v5, v3

    :goto_1f
    if-eq v2, v5, :cond_36

    return v3

    :cond_36
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_37

    move v2, v0

    goto :goto_20

    :cond_37
    move v2, v3

    :goto_20
    if-eqz v2, :cond_38

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    if-eq v2, v5, :cond_38

    return v3

    :cond_38
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_39

    move v2, v0

    goto :goto_21

    :cond_39
    move v2, v3

    :goto_21
    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_3a

    move v5, v0

    goto :goto_22

    :cond_3a
    move v5, v3

    :goto_22
    if-eq v2, v5, :cond_3b

    return v3

    :cond_3b
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_3c

    move v2, v0

    goto :goto_23

    :cond_3c
    move v2, v3

    :goto_23
    if-eqz v2, :cond_3d

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    if-eq v2, v5, :cond_3d

    return v3

    :cond_3d
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_3e

    move v2, v0

    goto :goto_24

    :cond_3e
    move v2, v3

    :goto_24
    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_3f

    move v5, v0

    goto :goto_25

    :cond_3f
    move v5, v3

    :goto_25
    if-eq v2, v5, :cond_40

    return v3

    :cond_40
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_41

    move v2, v0

    goto :goto_26

    :cond_41
    move v2, v3

    :goto_26
    if-eqz v2, :cond_42

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    if-eq v2, v5, :cond_42

    return v3

    :cond_42
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_43

    move v2, v0

    goto :goto_27

    :cond_43
    move v2, v3

    :goto_27
    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_44

    move v4, v0

    goto :goto_28

    :cond_44
    move v4, v3

    :goto_28
    if-eq v2, v4, :cond_45

    return v3

    :cond_45
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_46

    move v1, v0

    goto :goto_29

    :cond_46
    move v1, v3

    :goto_29
    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v3

    :cond_47
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_48

    move v2, v0

    goto :goto_2a

    :cond_48
    move v2, v3

    :goto_2a
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_49

    move v4, v0

    goto :goto_2b

    :cond_49
    move v4, v3

    :goto_2b
    if-eq v2, v4, :cond_4a

    return v3

    :cond_4a
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_4b

    move v1, v0

    goto :goto_2c

    :cond_4b
    move v1, v3

    :goto_2c
    if-eqz v1, :cond_4c

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v3

    :cond_4c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v2, 0x8000

    and-int v4, v1, v2

    if-eqz v4, :cond_4d

    move v4, v0

    goto :goto_2d

    :cond_4d
    move v4, v3

    :goto_2d
    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_4e

    move v5, v0

    goto :goto_2e

    :cond_4e
    move v5, v3

    :goto_2e
    if-eq v4, v5, :cond_4f

    return v3

    :cond_4f
    and-int/2addr v1, v2

    if-eqz v1, :cond_50

    move v1, v0

    goto :goto_2f

    :cond_50
    move v1, v3

    :goto_2f
    if-eqz v1, :cond_51

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v3

    :cond_51
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-eqz v4, :cond_52

    move v4, v0

    goto :goto_30

    :cond_52
    move v4, v3

    :goto_30
    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_53

    move v5, v0

    goto :goto_31

    :cond_53
    move v5, v3

    :goto_31
    if-eq v4, v5, :cond_54

    return v3

    :cond_54
    and-int/2addr v1, v2

    if-eqz v1, :cond_55

    move v1, v0

    goto :goto_32

    :cond_55
    move v1, v3

    :goto_32
    if-eqz v1, :cond_56

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v3

    :cond_56
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x20000

    and-int v4, v1, v2

    if-eqz v4, :cond_57

    move v4, v0

    goto :goto_33

    :cond_57
    move v4, v3

    :goto_33
    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_58

    move v5, v0

    goto :goto_34

    :cond_58
    move v5, v3

    :goto_34
    if-eq v4, v5, :cond_59

    return v3

    :cond_59
    and-int/2addr v1, v2

    if-eqz v1, :cond_5a

    move v1, v0

    goto :goto_35

    :cond_5a
    move v1, v3

    :goto_35
    if-eqz v1, :cond_5b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v3

    :cond_5b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x40000

    and-int v4, v1, v2

    if-eqz v4, :cond_5c

    move v4, v0

    goto :goto_36

    :cond_5c
    move v4, v3

    :goto_36
    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_5d

    move v5, v0

    goto :goto_37

    :cond_5d
    move v5, v3

    :goto_37
    if-eq v4, v5, :cond_5e

    return v3

    :cond_5e
    and-int/2addr v1, v2

    if-eqz v1, :cond_5f

    move v1, v0

    goto :goto_38

    :cond_5f
    move v1, v3

    :goto_38
    if-eqz v1, :cond_60

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v3

    :cond_60
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x80000

    and-int v4, v1, v2

    if-eqz v4, :cond_61

    move v4, v0

    goto :goto_39

    :cond_61
    move v4, v3

    :goto_39
    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_62

    move v5, v0

    goto :goto_3a

    :cond_62
    move v5, v3

    :goto_3a
    if-eq v4, v5, :cond_63

    return v3

    :cond_63
    and-int/2addr v1, v2

    if-eqz v1, :cond_64

    move v1, v0

    goto :goto_3b

    :cond_64
    move v1, v3

    :goto_3b
    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    return v3

    :cond_65
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v3

    :cond_66
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v3

    :cond_67
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->I()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->I()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    return v3

    :cond_68
    return v0
.end method

.method public final f()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x10

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    invoke-static {v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    invoke-static {v1, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    invoke-static {v1, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const/16 v1, 0x17

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/16 v1, 0x1b

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    const/16 v1, 0x24

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const/16 v1, 0x25

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x28

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x29

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_12

    const/16 v1, 0x2a

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    const/16 v1, 0x2c

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    const/16 v1, 0x2d

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    const/16 v1, 0x3e7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->H()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->A()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    move v1, v3

    :goto_4
    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v3

    :goto_5
    if-eqz v4, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    add-int/2addr v0, v4

    :cond_c
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_6

    :cond_d
    move v1, v3

    :goto_6
    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_7

    :cond_f
    move v1, v3

    :goto_7
    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_8

    :cond_11
    move v1, v3

    :goto_8
    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_9

    :cond_13
    move v1, v3

    :goto_9
    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_a

    :cond_15
    move v1, v3

    :goto_a
    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_b

    :cond_17
    move v1, v3

    :goto_b
    if-eqz v1, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_c

    :cond_19
    move v1, v3

    :goto_c
    if-eqz v1, :cond_1a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_d

    :cond_1b
    move v1, v3

    :goto_d
    if-eqz v1, :cond_1c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_e

    :cond_1d
    move v1, v3

    :goto_e
    if-eqz v1, :cond_1e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v4, 0x8000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_f

    :cond_1f
    move v1, v3

    :goto_f
    if-eqz v1, :cond_20

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_10

    :cond_21
    move v1, v3

    :goto_10
    if-eqz v1, :cond_22

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_23

    move v1, v2

    goto :goto_11

    :cond_23
    move v1, v3

    :goto_11
    if-eqz v1, :cond_24

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_12

    :cond_25
    move v1, v3

    :goto_12
    if-eqz v1, :cond_26

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2c

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v4, 0x80000

    and-int/2addr v1, v4

    if-eqz v1, :cond_27

    goto :goto_13

    :cond_27
    move v2, v3

    :goto_13
    if-eqz v2, :cond_28

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2d

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->I()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v1
.end method

.method public final j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    :cond_0
    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->T()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->T()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    return-object p1
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    return v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;ZB)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    invoke-static {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v2, 0x2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    invoke-static {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    invoke-virtual {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    invoke-virtual {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_3
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x10

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    invoke-virtual {p1, v4, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_5
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_6

    const/16 v2, 0x11

    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    invoke-virtual {p1, v2, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_6
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_7

    const/16 v2, 0x12

    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    invoke-virtual {p1, v2, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_7
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_8
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_9

    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_9
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_a
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_b

    const/16 v2, 0x1f

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_b
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_c

    const/16 v2, 0x24

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_d

    const/16 v2, 0x25

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    const/16 v2, 0x27

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_e
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_f
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    const/16 v2, 0x29

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_10
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_11

    const/16 v2, 0x2a

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_11
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    const/16 v2, 0x2c

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_12
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x3e7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_14
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
