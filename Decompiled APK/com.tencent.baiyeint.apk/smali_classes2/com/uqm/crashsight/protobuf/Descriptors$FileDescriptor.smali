.class public final Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;,
        Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final c:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private final d:[Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

.field private final e:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final f:[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final g:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p2}, [Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    iget-object v5, v4, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b(I)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    if-nez v4, :cond_2

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid public dependency: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g()I

    move-result p2

    new-array p2, p2, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move p2, v0

    :goto_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->g()I

    move-result p3

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-instance p4, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h()I

    move-result p2

    new-array p2, p2, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move p2, v0

    :goto_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->h()I

    move-result p3

    if-ge p2, p3, :cond_6

    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-instance p4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i()I

    move-result p2

    new-array p2, p2, [Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    move p2, v0

    :goto_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->i()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    new-instance p4, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-direct {p4, v1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;IB)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j()I

    move-result p2

    new-array p2, p2, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    :goto_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->j()I

    move-result p2

    if-ge v0, p2, :cond_8

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance p3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->f(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p3

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    new-array v2, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Z)V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->q()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".placeholder.proto"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->b(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    new-array v2, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    new-array v2, v3, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    aput-object p2, v2, v0

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-array v2, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-array v2, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    invoke-virtual {v1, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    return-object p0
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Z)Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance p2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Z)V

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;Z)V

    iget-object p0, v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    array-length p1, p0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length p1, p0

    :goto_2
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public static a([Ljava/lang/String;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->a([B)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Z)Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid embedded descriptor for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->l()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

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
            "Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method final k()Z
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileDescriptorProto;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    :goto_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
