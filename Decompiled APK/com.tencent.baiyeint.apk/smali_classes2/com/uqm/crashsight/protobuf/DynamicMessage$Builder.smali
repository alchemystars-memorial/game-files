.class public final Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder<",
        "Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private b:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->h()V

    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b()V

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 5

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 5

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet;)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 3

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet;)V

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    return-object p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

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

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

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

.method public final getFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

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

.method public final getRepeatedFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

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

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public final synthetic newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    const-string v1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v2, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aput-object p1, v1, v0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldDescriptor does not match message type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method
