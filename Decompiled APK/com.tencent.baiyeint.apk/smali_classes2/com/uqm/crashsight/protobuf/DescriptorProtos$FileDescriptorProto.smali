.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private e:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

.field private m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

.field private volatile n:Ljava/lang/Object;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    sget-object v1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_17

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x10

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x10

    :cond_3
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x8

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x8

    :cond_6
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto/16 :goto_0

    :sswitch_5
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v5

    :cond_7
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    :cond_8
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    goto/16 :goto_0

    :sswitch_6
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v5

    :cond_9
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    :cond_a
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_b
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    or-int/lit16 v3, v3, 0x80

    :cond_c
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_d
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_e
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_f

    new-instance v5, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x4

    :cond_f
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_e
    move v1, v2

    goto/16 :goto_0

    :goto_4
    if-nez v4, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

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

    :goto_5
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v3, 0x80

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_15
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_16
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    throw p1

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_18
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v3, 0x80

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v3, 0x100

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_1d
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_1e
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    return p1
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static q()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method

.method public static r()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method private static s()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    :cond_10
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    :cond_11
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_6

    :cond_13
    move v2, v3

    :goto_6
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_14

    move v4, v0

    goto :goto_7

    :cond_14
    move v4, v3

    :goto_7
    if-eq v2, v4, :cond_15

    return v3

    :cond_15
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_16

    move v1, v0

    goto :goto_8

    :cond_16
    move v1, v3

    :goto_8
    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_17

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    :cond_17
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v2, :cond_18

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v2

    :cond_18
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    :cond_19
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1a

    move v2, v0

    goto :goto_9

    :cond_1a
    move v2, v3

    :goto_9
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1b

    move v4, v0

    goto :goto_a

    :cond_1b
    move v4, v3

    :goto_a
    if-eq v2, v4, :cond_1c

    return v3

    :cond_1c
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1d

    move v1, v0

    goto :goto_b

    :cond_1d
    move v1, v3

    :goto_b
    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    :cond_1e
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    :cond_1f
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    :cond_20
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_21

    move v2, v0

    goto :goto_c

    :cond_21
    move v2, v3

    :goto_c
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_22

    move v4, v0

    goto :goto_d

    :cond_22
    move v4, v3

    :goto_d
    if-eq v2, v4, :cond_23

    return v3

    :cond_23
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_24

    move v1, v0

    goto :goto_e

    :cond_24
    move v1, v3

    :goto_e
    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    :cond_25
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v3

    :cond_26
    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_5
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    const/4 v4, 0x7

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/2addr v3, v5

    const/16 v4, 0x8

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v3, :cond_8

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    :cond_8
    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v4, :cond_a

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    :cond_a
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b
    move v3, v2

    move v4, v3

    :goto_6
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v5, v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    add-int/2addr v0, v4

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    :goto_7
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v4, v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_e

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->c()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_2

    :cond_c
    move v1, v3

    :goto_2
    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    :cond_d
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_3

    :cond_f
    move v1, v3

    :goto_3
    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    :cond_10
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_12
    move v2, v3

    :goto_4
    if-eqz v2, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->d()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

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
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v2

    :goto_4
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v2

    :cond_c
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->o:B

    return v1
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->s()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->s()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->k:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_7

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    :cond_7
    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->m:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v2, :cond_9

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_a
    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->n:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
