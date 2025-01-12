.class public Lcom/uqm/crashsight/protobuf/MapField;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;,
        Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;,
        Lcom/uqm/crashsight/protobuf/MapField$Converter;,
        Lcom/uqm/crashsight/protobuf/MapField$StorageMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/MutabilityOracle;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

.field private c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/uqm/crashsight/protobuf/MapField$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField$Converter<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/uqm/crashsight/protobuf/MapField;-><init>(Lcom/uqm/crashsight/protobuf/MapField$Converter;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapField$Converter;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapField$Converter<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapField;->e:Lcom/uqm/crashsight/protobuf/MapField$Converter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MapField;->a:Z

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    new-instance p1, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, p3}, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/uqm/crashsight/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">;)",
            "Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Message;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapField;->e:Lcom/uqm/crashsight/protobuf/MapField$Converter;

    invoke-interface {v2, v1, v0}, Lcom/uqm/crashsight/protobuf/MapField$Converter;->a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, v0}, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/uqm/crashsight/protobuf/MutabilityOracle;Ljava/util/Map;)V

    return-object p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapField;->e:Lcom/uqm/crashsight/protobuf/MapField$Converter;

    invoke-interface {v3, v2, v1}, Lcom/uqm/crashsight/protobuf/MapField$Converter;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Ljava/util/List;)Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->c:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MapField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Ljava/util/List;)Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    return-object v0
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/uqm/crashsight/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    return-void
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapField;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapField;->e:Lcom/uqm/crashsight/protobuf/MapField$Converter;

    sget-object v2, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/MapField;-><init>(Lcom/uqm/crashsight/protobuf/MapField$Converter;Lcom/uqm/crashsight/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->c:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->a:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->c:Lcom/uqm/crashsight/protobuf/MapField$MutatabilityAwareMap;

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapField$StorageMode;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->b:Lcom/uqm/crashsight/protobuf/MapField$StorageMode;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->d:Ljava/util/List;

    return-object v0
.end method

.method final g()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->e:Lcom/uqm/crashsight/protobuf/MapField$Converter;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MapField$Converter;->a()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->a:Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapFieldLite;->a(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->a:Z

    return v0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MapField;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
