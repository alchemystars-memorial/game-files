.class public final Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptor"
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private d:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c()I

    move-result v0

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;IB)V

    aput-object v7, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method
