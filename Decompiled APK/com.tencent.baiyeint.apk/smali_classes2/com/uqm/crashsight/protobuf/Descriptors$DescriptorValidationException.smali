.class public Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
.super Ljava/lang/Exception;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorValidationException"
.end annotation


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->c()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->j()Lcom/uqm/crashsight/protobuf/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
