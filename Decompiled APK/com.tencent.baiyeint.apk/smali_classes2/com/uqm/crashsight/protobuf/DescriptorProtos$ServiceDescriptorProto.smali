.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_4

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v4

    :cond_2
    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_5
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v1, v2

    goto :goto_0

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
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    :cond_8
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    return-object p0
.end method

.method public static f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method private static g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p1
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    move v4, v0

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    if-eq v2, v4, :cond_a

    return v3

    :cond_a
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_5
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    :cond_c
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v2, :cond_d

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v2

    :cond_d
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v3

    :cond_f
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v2

    :cond_3
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->x()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

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
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

    return v2

    :cond_6
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->f:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
