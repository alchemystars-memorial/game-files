.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:I

.field private e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->f:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v3

    :cond_2
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
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
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->makeExtensionsImmutable()V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->f:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    return p1
.end method

.method public static g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method

.method public static h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method private static i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

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
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_4
    if-eq v2, v5, :cond_9

    return v3

    :cond_9
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_a

    move v2, v0

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    if-eqz v2, :cond_b

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    if-eq v2, v5, :cond_b

    return v3

    :cond_b
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
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
    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    :cond_10
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v2, :cond_11

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v2

    :cond_11
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    :cond_12
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    :cond_3
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->u()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    add-int/2addr v0, v4

    :cond_4
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    :cond_6
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->v()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->f:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->f:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d:I

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
