.class public final Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final e:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private final f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move p3, p4

    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move p3, p4

    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move p3, p4

    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move p3, p4

    :goto_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result v0

    if-ge p3, v0, :cond_3

    iget-object v7, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V

    aput-object v8, v7, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move p3, p4

    :goto_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result v0

    if-ge p3, v0, :cond_4

    iget-object v7, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V

    aput-object v8, v7, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    move p3, p4

    :goto_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    if-ge p3, v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f()I

    move-result v1

    new-array v1, v1, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    aget-object v0, v0, p3

    invoke-static {v0, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;I)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result p3

    if-ge p4, p3, :cond_7

    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object p3, p3, p4

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)I

    move-result p3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, p4

    aput-object v1, v0, p3

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_7
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v2, p1

    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Ljava/lang/String;

    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-direct {p1, v1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;-><init>(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->k()V

    return-void
.end method

.method private k()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-direct {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->k()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Z
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method
