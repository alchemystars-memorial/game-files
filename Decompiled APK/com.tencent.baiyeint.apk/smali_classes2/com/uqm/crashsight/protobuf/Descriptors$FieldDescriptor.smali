.class public final Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;


# instance fields
.field private final b:I

.field private c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

.field private h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private j:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

.field private k:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->values()[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b:I

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    const/16 v3, 0x61

    if-gt v3, v4, :cond_2

    const/16 v3, 0x7a

    :cond_2
    move v3, v0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    :cond_5
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result p4

    if-lez p4, :cond_d

    const/4 p4, 0x0

    if-eqz p5, :cond_9

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result p5

    if-eqz p5, :cond_8

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_6

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    goto :goto_3

    :cond_6
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    :goto_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result p1

    if-nez p1, :cond_7

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    goto :goto_5

    :cond_7
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_8
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result p5

    if-nez p5, :cond_c

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p5

    if-ltz p5, :cond_a

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p5

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v1

    if-ge p5, v1, :cond_a

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->p()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)I

    goto :goto_4

    :cond_a
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_b
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    :goto_4
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    :goto_5
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    :cond_c
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_d
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const-string v2, "\""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, v4, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_1
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, v4, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    :cond_3
    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    instance-of v4, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_7
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_a

    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_a
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_21

    :goto_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v2, :cond_e

    move v0, v1

    goto :goto_4

    :cond_e
    move v0, v3

    :goto_4
    if-nez v0, :cond_16

    const/16 v0, 0x22

    :try_start_0
    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$1;->a:[I

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "nan"

    const-string v5, "-inf"

    const-string v6, "inf"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v2, "Message type had default value."

    invoke-direct {v1, p0, v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1

    :pswitch_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    if-eqz v2, :cond_f

    goto/16 :goto_6

    :cond_f
    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown enum default value: \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/CharSequence;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t parse default value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2

    :pswitch_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_10
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_12
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_6
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_13
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_14
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_15
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_7
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/TextFormat;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_8
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/TextFormat;->d(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_9
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/TextFormat;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_a
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    new-instance v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse default value: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2

    :cond_16
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v2, :cond_18

    move v0, v1

    goto :goto_5

    :cond_18
    move v0, v3

    :goto_5
    if-eqz v0, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto :goto_6

    :cond_19
    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$1;->b:[I

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    :goto_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    :cond_1c
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v2, :cond_1d

    goto :goto_7

    :cond_1d
    move v1, v3

    :goto_7
    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1e

    goto :goto_8

    :cond_1e
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_1f
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    :cond_20
    :goto_8
    return-void

    :cond_21
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b:I

    return v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message$Builder;

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v0

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v2
.end method

.method public final q()Z
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a:[Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public final r()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    return v0
.end method

.method public final t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->j:Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    return-object v0
.end method

.method public final v()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not an extension. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of message type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->a()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of enum type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
