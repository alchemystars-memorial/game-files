.class public final Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptor"
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;I)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->d()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
