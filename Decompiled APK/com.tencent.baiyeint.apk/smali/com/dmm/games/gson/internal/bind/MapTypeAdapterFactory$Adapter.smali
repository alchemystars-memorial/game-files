.class final Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dmm/games/gson/TypeAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;Lcom/dmm/games/gson/Gson;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/TypeAdapter;Lcom/dmm/games/gson/internal/ObjectConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TV;>;",
            "Lcom/dmm/games/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    new-instance p1, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p4, p3}, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    new-instance p1, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {p1, p2, p6, p5}, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    iput-object p7, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lcom/dmm/games/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonElement;->getAsJsonPrimitive()Lcom/dmm/games/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->peek()Lcom/dmm/games/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/dmm/games/gson/stream/JsonToken;->NULL:Lcom/dmm/games/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;

    invoke-interface {v1}, Lcom/dmm/games/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/dmm/games/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/dmm/games/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginArray()V

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/dmm/games/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dmm/games/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endArray()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/dmm/games/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/dmm/games/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/dmm/games/gson/stream/JsonReader;)V

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/dmm/games/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dmm/games/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endObject()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginObject()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dmm/games/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/dmm/games/gson/stream/JsonWriter;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endObject()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dmm/games/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/dmm/games/gson/JsonElement;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/dmm/games/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/dmm/games/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginArray()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginArray()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dmm/games/gson/JsonElement;

    invoke-static {v3, p1}, Lcom/dmm/games/gson/internal/Streams;->write(Lcom/dmm/games/gson/JsonElement;Lcom/dmm/games/gson/stream/JsonWriter;)V

    iget-object v3, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endArray()Lcom/dmm/games/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endArray()Lcom/dmm/games/gson/stream/JsonWriter;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginObject()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dmm/games/gson/JsonElement;

    invoke-direct {p0, v3}, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/dmm/games/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/dmm/games/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/dmm/games/gson/stream/JsonWriter;

    iget-object v3, p0, Lcom/dmm/games/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endObject()Lcom/dmm/games/gson/stream/JsonWriter;

    :goto_6
    return-void
.end method
