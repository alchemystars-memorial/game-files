.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Object;

.field private f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

.field private g:Z

.field private h:Z

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0x12

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_6

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v3

    :cond_4
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    :cond_5
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;
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
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    throw p1

    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method private static n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

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
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_d

    move v4, v0

    goto :goto_7

    :cond_d
    move v4, v3

    :goto_7
    if-eq v2, v4, :cond_e

    return v3

    :cond_e
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_8

    :cond_f
    move v1, v3

    :goto_8
    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    :cond_10
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_9

    :cond_11
    move v2, v3

    :goto_9
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_12

    move v4, v0

    goto :goto_a

    :cond_12
    move v4, v3

    :goto_a
    if-eq v2, v4, :cond_13

    return v3

    :cond_13
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_b

    :cond_14
    move v1, v3

    :goto_b
    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v1, :cond_15

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    :cond_15
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v2, :cond_16

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    :cond_16
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    :cond_17
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_18

    move v2, v0

    goto :goto_c

    :cond_18
    move v2, v3

    :goto_c
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_19

    move v5, v0

    goto :goto_d

    :cond_19
    move v5, v3

    :goto_d
    if-eq v2, v5, :cond_1a

    return v3

    :cond_1a
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_e

    :cond_1b
    move v2, v3

    :goto_e
    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    if-eq v2, v5, :cond_1c

    return v3

    :cond_1c
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1d

    move v2, v0

    goto :goto_f

    :cond_1d
    move v2, v3

    :goto_f
    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1e

    move v4, v0

    goto :goto_10

    :cond_1e
    move v4, v3

    :goto_10
    if-eq v2, v4, :cond_1f

    return v3

    :cond_1f
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_20

    move v1, v0

    goto :goto_11

    :cond_20
    move v1, v3

    :goto_11
    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    if-eq v1, v2, :cond_21

    return v3

    :cond_21
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v3

    :cond_22
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_4
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->y()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v1, :cond_8

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    :cond_8
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    if-eqz v2, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->z()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return v1
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
