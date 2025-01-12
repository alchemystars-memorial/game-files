.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:I

.field private e:I

.field private f:I

.field private volatile g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/Object;

.field private volatile i:Ljava/lang/Object;

.field private j:I

.field private volatile k:Ljava/lang/Object;

.field private l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x0

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v3

    :cond_1
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    :cond_2
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v4

    const/4 v5, 0x4

    if-nez v4, :cond_4

    invoke-virtual {v0, v5, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    goto/16 :goto_0

    :sswitch_7
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
    move v1, v2

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

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
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    return p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method private static v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

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

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

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

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

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
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_17

    move v4, v0

    goto :goto_d

    :cond_17
    move v4, v3

    :goto_d
    if-eq v2, v4, :cond_18

    return v3

    :cond_18
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_19

    move v1, v0

    goto :goto_e

    :cond_19
    move v1, v3

    :goto_e
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    :cond_1a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_f

    :cond_1b
    move v2, v3

    :goto_f
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1c

    move v4, v0

    goto :goto_10

    :cond_1c
    move v4, v3

    :goto_10
    if-eq v2, v4, :cond_1d

    return v3

    :cond_1d
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_11

    :cond_1e
    move v1, v3

    :goto_11
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    :cond_1f
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_20

    move v2, v0

    goto :goto_12

    :cond_20
    move v2, v3

    :goto_12
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    :cond_24
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_25

    move v2, v0

    goto :goto_15

    :cond_25
    move v2, v3

    :goto_15
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

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
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2b

    move v4, v0

    goto :goto_19

    :cond_2b
    move v4, v3

    :goto_19
    if-eq v2, v4, :cond_2c

    return v3

    :cond_2c
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2d

    move v1, v0

    goto :goto_1a

    :cond_2d
    move v1, v3

    :goto_1a
    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v3

    :cond_2e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_2f

    move v2, v0

    goto :goto_1b

    :cond_2f
    move v2, v3

    :goto_1b
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_30

    move v4, v0

    goto :goto_1c

    :cond_30
    move v4, v3

    :goto_1c
    if-eq v2, v4, :cond_31

    return v3

    :cond_31
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_32

    move v1, v0

    goto :goto_1d

    :cond_32
    move v1, v3

    :goto_1d
    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_33

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    :cond_33
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v2, :cond_34

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    :cond_34
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v3

    :cond_35
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v3

    :cond_36
    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    :cond_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_8
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_a
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->m()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    add-int/2addr v0, v4

    :cond_4
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    if-eqz v4, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    add-int/2addr v0, v4

    :cond_6
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    if-eqz v4, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    add-int/2addr v0, v4

    :cond_8
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    move v1, v3

    :goto_4
    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_5
    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_6

    :cond_d
    move v1, v3

    :goto_6
    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_f

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v3

    :goto_7
    if-eqz v4, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    add-int/2addr v0, v4

    :cond_10
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_8

    :cond_11
    move v1, v3

    :goto_8
    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    :goto_9
    if-eqz v2, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_14

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    :cond_14
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return v1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    return v0
.end method

.method public final q()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_7
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
