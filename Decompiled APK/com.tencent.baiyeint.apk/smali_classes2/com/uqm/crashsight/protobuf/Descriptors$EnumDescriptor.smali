.class public final Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private d:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

.field private final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->e:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    if-ge p4, p3, :cond_0

    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    new-instance v6, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1, p4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;IB)V

    aput-object v6, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    :cond_1
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic a(I)Lcom/uqm/crashsight/protobuf/Internal$EnumLite;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;B)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->e:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method
