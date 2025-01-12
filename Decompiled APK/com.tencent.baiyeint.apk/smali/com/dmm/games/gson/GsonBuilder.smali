.class public final Lcom/dmm/games/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/dmm/games/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dmm/games/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dmm/games/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/dmm/games/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/games/gson/internal/Excluder;->DEFAULT:Lcom/dmm/games/gson/internal/Excluder;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    sget-object v0, Lcom/dmm/games/gson/LongSerializationPolicy;->DEFAULT:Lcom/dmm/games/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    sget-object v0, Lcom/dmm/games/gson/FieldNamingPolicy;->IDENTITY:Lcom/dmm/games/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeNulls:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iput v1, p0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dmm/games/gson/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->lenient:Z

    return-void
.end method

.method constructor <init>(Lcom/dmm/games/gson/Gson;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/games/gson/internal/Excluder;->DEFAULT:Lcom/dmm/games/gson/internal/Excluder;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    sget-object v0, Lcom/dmm/games/gson/LongSerializationPolicy;->DEFAULT:Lcom/dmm/games/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    sget-object v0, Lcom/dmm/games/gson/FieldNamingPolicy;->IDENTITY:Lcom/dmm/games/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeNulls:Z

    const/4 v4, 0x2

    iput v4, p0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iput v4, p0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dmm/games/gson/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v3, p0, Lcom/dmm/games/gson/GsonBuilder;->lenient:Z

    iget-object v3, p1, Lcom/dmm/games/gson/Gson;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    iput-object v3, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    iget-object v3, p1, Lcom/dmm/games/gson/Gson;->fieldNamingStrategy:Lcom/dmm/games/gson/FieldNamingStrategy;

    iput-object v3, p0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    iget-object v3, p1, Lcom/dmm/games/gson/Gson;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->serializeNulls:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->htmlSafe:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->lenient:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->lenient:Z

    iget-boolean v0, p1, Lcom/dmm/games/gson/Gson;->serializeSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v0, p1, Lcom/dmm/games/gson/Gson;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    iget-object v0, p1, Lcom/dmm/games/gson/Gson;->datePattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v0, p1, Lcom/dmm/games/gson/Gson;->dateStyle:I

    iput v0, p0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iget v0, p1, Lcom/dmm/games/gson/Gson;->timeStyle:I

    iput v0, p0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    iget-object v0, p1, Lcom/dmm/games/gson/Gson;->builderFactories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/dmm/games/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/dmm/games/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class p3, Ljava/util/Date;

    invoke-direct {p2, p3, p1}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p3, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p3, v0, p1}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1, p1}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {p1, v0, p2, p3}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v0, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, p2, p3}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v1, Lcom/dmm/games/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Date;

    invoke-direct {v1, v2, p2, p3}, Lcom/dmm/games/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    move-object p2, p1

    move-object p3, v0

    move-object v0, v1

    :goto_0
    const-class p1, Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Timestamp;

    invoke-static {p1, p3}, Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Date;

    invoke-static {p1, v0}, Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/dmm/games/gson/ExclusionStrategy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/dmm/games/gson/internal/Excluder;->withExclusionStrategy(Lcom/dmm/games/gson/ExclusionStrategy;ZZ)Lcom/dmm/games/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/dmm/games/gson/ExclusionStrategy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/dmm/games/gson/internal/Excluder;->withExclusionStrategy(Lcom/dmm/games/gson/ExclusionStrategy;ZZ)Lcom/dmm/games/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method

.method public create()Lcom/dmm/games/gson/Gson;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v3, v0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iget v4, v0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/dmm/games/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v19, Lcom/dmm/games/gson/Gson;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    iget-object v3, v0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    iget-object v4, v0, Lcom/dmm/games/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/dmm/games/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v6, v0, Lcom/dmm/games/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v7, v0, Lcom/dmm/games/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v8, v0, Lcom/dmm/games/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v9, v0, Lcom/dmm/games/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v10, v0, Lcom/dmm/games/gson/GsonBuilder;->lenient:Z

    iget-boolean v11, v0, Lcom/dmm/games/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v12, v0, Lcom/dmm/games/gson/GsonBuilder;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    iget-object v13, v0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v14, v0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iget v15, v0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/dmm/games/gson/Gson;-><init>(Lcom/dmm/games/gson/internal/Excluder;Lcom/dmm/games/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/dmm/games/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public disableHtmlEscaping()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/dmm/games/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/dmm/games/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/internal/Excluder;->withModifiers([I)Lcom/dmm/games/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/dmm/games/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/dmm/games/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 3

    instance-of v0, p2, Lcom/dmm/games/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/dmm/games/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/dmm/games/gson/InstanceCreator;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/dmm/games/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/dmm/games/gson/InstanceCreator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dmm/games/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/dmm/games/gson/InstanceCreator;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/dmm/games/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/dmm/games/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/dmm/games/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/dmm/games/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/dmm/games/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/dmm/games/gson/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/dmm/games/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newFactory(Lcom/dmm/games/gson/reflect/TypeToken;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/dmm/games/gson/TypeAdapterFactory;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/dmm/games/gson/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcom/dmm/games/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/dmm/games/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/dmm/games/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/dmm/games/gson/JsonDeserializer;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/dmm/games/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/dmm/games/gson/TypeAdapter;)Lcom/dmm/games/gson/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/dmm/games/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/dmm/games/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/dmm/games/gson/ExclusionStrategy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/dmm/games/gson/internal/Excluder;->withExclusionStrategy(Lcom/dmm/games/gson/ExclusionStrategy;ZZ)Lcom/dmm/games/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/dmm/games/gson/FieldNamingPolicy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/dmm/games/gson/FieldNamingStrategy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->fieldNamingPolicy:Lcom/dmm/games/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setLenient()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->lenient:Z

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/dmm/games/gson/LongSerializationPolicy;)Lcom/dmm/games/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->longSerializationPolicy:Lcom/dmm/games/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/dmm/games/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/internal/Excluder;->withVersion(D)Lcom/dmm/games/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/games/gson/GsonBuilder;->excluder:Lcom/dmm/games/gson/internal/Excluder;

    return-object p0
.end method
