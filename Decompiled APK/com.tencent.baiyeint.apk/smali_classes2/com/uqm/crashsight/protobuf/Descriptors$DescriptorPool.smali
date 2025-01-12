.class final Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;,
        Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b:Z

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    aget-object v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    :try_start_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->c:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v3, :cond_3

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_2

    instance-of v3, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->b:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_4

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v3

    iget-object v3, v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    if-eqz v3, :cond_5

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->c:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v4, :cond_9

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_8

    instance-of v4, v3, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-nez v4, :cond_7

    instance-of v4, v3, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v2

    :goto_3
    if-nez v4, :cond_9

    :cond_8
    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->b:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_5

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_9
    return-object v3

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->d:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->e:Ljava/util/Map;

    return-object p0
.end method

.method private static b(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1

    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->c:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    goto :goto_3

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move-object v4, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    move-object v0, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->b:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-direct {p0, v8, v9}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v8

    if-eqz v8, :cond_6

    if-eq v1, v3, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v8

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p3, v1, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Descriptors;->a()Ljava/util/logging/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "The descriptor for message type \""

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" can not be found and a placeholder is created for it"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_4
    new-instance p3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not defined."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p3

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->d:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\""

    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x61

    if-gt v5, v3, :cond_0

    const/16 v5, 0x7a

    if-le v3, v5, :cond_3

    :cond_0
    const/16 v5, 0x41

    if-gt v5, v3, :cond_1

    const/16 v5, 0x5a

    if-le v3, v5, :cond_3

    :cond_1
    const/16 v5, 0x5f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x30

    if-gt v5, v3, :cond_2

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid identifier."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    const-string v6, "\"."

    if-ne v3, v5, :cond_6

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v1

    :cond_5
    new-instance v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is already defined in \""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v3

    :cond_6
    new-instance v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined in file \""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v3

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Missing name."

    invoke-direct {v0, p1, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    new-instance v3, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v3, v0, p1, p2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->c:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined (as something other than a package) in file \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;B)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
