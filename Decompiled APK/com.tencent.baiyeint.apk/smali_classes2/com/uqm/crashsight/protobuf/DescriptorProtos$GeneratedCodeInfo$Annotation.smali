.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;


# instance fields
.field private b:I

.field private c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private d:I

.field private volatile e:Ljava/lang/Object;

.field private f:I

.field private g:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:I

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:B

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

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

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_8

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    move v1, v2

    goto/16 :goto_0

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
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_c
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:I

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    return p1
.end method

.method public static f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private static h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

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

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    if-eq v3, v5, :cond_c

    return v2

    :cond_c
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_6

    :cond_d
    move v3, v2

    :goto_6
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_e

    move v4, v0

    goto :goto_7

    :cond_e
    move v4, v2

    :goto_7
    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_10

    move v1, v0

    goto :goto_8

    :cond_10
    move v1, v2

    :goto_8
    if-eqz v1, :cond_11

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    iget v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->aa()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

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

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    add-int/2addr v0, v4

    :cond_5
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->ab()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSerializedSize()I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:I

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
