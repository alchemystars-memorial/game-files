.class public final Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptor"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private f:I

.field private g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a:I

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;I)I
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f:I

    return v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method
