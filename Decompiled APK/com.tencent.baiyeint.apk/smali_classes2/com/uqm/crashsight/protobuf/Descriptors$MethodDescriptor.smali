.class public final Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, v1, p0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v0, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v1, 0x0

    const-string v2, "\" is not a message type."

    const-string v3, "\""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, v4, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v0, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_1
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method
