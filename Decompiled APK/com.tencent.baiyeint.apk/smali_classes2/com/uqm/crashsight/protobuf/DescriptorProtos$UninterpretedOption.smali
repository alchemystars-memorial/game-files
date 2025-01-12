.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:D

.field private h:Lcom/uqm/crashsight/protobuf/ByteString;

.field private volatile i:Ljava/lang/Object;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5

    const/16 v6, 0x28

    if-eq v4, v6, :cond_4

    const/16 v6, 0x31

    if-eq v4, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_2

    const/16 v6, 0x42

    if-eq v4, v6, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

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

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    :cond_c
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;D)D
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    return-wide p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private static n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_9

    move v5, v0

    goto :goto_4

    :cond_9
    move v5, v2

    :goto_4
    if-eq v3, v5, :cond_a

    return v2

    :cond_a
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    if-eqz v3, :cond_c

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    iget-wide v7, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_c

    return v2

    :cond_c
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_6

    :cond_d
    move v3, v2

    :goto_6
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_e

    move v5, v0

    goto :goto_7

    :cond_e
    move v5, v2

    :goto_7
    if-eq v3, v5, :cond_f

    return v2

    :cond_f
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_10

    move v3, v0

    goto :goto_8

    :cond_10
    move v3, v2

    :goto_8
    if-eqz v3, :cond_11

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    iget-wide v7, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_11

    return v2

    :cond_11
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_12

    move v3, v0

    goto :goto_9

    :cond_12
    move v3, v2

    :goto_9
    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_13

    move v4, v0

    goto :goto_a

    :cond_13
    move v4, v2

    :goto_a
    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_b

    :cond_15
    move v1, v2

    :goto_b
    if-eqz v1, :cond_16

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_17

    move v3, v0

    goto :goto_c

    :cond_17
    move v3, v2

    :goto_c
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_18

    move v4, v0

    goto :goto_d

    :cond_18
    move v4, v2

    :goto_d
    if-eq v3, v4, :cond_19

    return v2

    :cond_19
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1a

    move v1, v0

    goto :goto_e

    :cond_1a
    move v1, v2

    :goto_e
    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_1c

    move v3, v0

    goto :goto_f

    :cond_1c
    move v3, v2

    :goto_f
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1d

    move v4, v0

    goto :goto_10

    :cond_1d
    move v4, v2

    :goto_10
    if-eq v3, v4, :cond_1e

    return v2

    :cond_1e
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1f

    move v1, v0

    goto :goto_11

    :cond_1f
    move v1, v2

    :goto_11
    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()D
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    invoke-static {v2, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    invoke-static {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    invoke-static {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->Q()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    if-eqz v2, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    return v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->R()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

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
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return v1
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    const/4 v0, 0x6

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IJ)V

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
