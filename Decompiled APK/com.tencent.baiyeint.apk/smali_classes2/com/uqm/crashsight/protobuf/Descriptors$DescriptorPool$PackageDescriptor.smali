.class final Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDescriptor"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
