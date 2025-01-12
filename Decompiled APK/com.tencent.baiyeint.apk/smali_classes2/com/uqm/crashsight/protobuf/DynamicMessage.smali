.class public final Lcom/uqm/crashsight/protobuf/DynamicMessage;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final b:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

.field private e:I


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->e:I

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 4

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    return-object v1
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->k()Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    return-object v0
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v1

    new-array v1, v1, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v2, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    return-object v2
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    return-object v0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DynamicMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$1;-><init>(Lcom/uqm/crashsight/protobuf/DynamicMessage;)V

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->m()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->d()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->l()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->e:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
