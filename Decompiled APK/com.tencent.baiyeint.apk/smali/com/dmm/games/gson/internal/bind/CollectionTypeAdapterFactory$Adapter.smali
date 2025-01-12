.class final Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dmm/games/gson/TypeAdapter<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/games/gson/Gson;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/TypeAdapter;Lcom/dmm/games/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TE;>;",
            "Lcom/dmm/games/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    iput-object p4, p0, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
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
    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/dmm/games/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/dmm/games/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endArray()V

    return-object v0
.end method

.method public bridge synthetic write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonWriter;",
            "Ljava/util/Collection<",
            "TE;>;)V"
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
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginArray()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endArray()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void
.end method
