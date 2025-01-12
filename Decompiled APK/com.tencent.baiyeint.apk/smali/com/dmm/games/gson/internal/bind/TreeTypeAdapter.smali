.class public final Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dmm/games/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/dmm/games/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcom/dmm/games/gson/Gson;

.field private final serializer:Lcom/dmm/games/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/dmm/games/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/dmm/games/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/games/gson/JsonSerializer;Lcom/dmm/games/gson/JsonDeserializer;Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/reflect/TypeToken;Lcom/dmm/games/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/dmm/games/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/dmm/games/gson/Gson;",
            "Lcom/dmm/games/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/dmm/games/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->context:Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/dmm/games/gson/JsonSerializer;

    iput-object p2, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/dmm/games/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/dmm/games/gson/Gson;

    iput-object p4, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/dmm/games/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/dmm/games/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lcom/dmm/games/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/dmm/games/gson/Gson;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/dmm/games/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/dmm/games/gson/Gson;->getDelegateAdapter(Lcom/dmm/games/gson/TypeAdapterFactory;Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method

.method public static newFactory(Lcom/dmm/games/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/dmm/games/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/dmm/games/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/dmm/games/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/dmm/games/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/dmm/games/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/dmm/games/gson/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/games/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dmm/games/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/dmm/games/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/dmm/games/gson/TypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/dmm/games/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/dmm/games/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/dmm/games/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/dmm/games/gson/internal/Streams;->parse(Lcom/dmm/games/gson/stream/JsonReader;)Lcom/dmm/games/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/games/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/dmm/games/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/dmm/games/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->context:Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, v2}, Lcom/dmm/games/gson/JsonDeserializer;->deserialize(Lcom/dmm/games/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/dmm/games/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/dmm/games/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter;->context:Lcom/dmm/games/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/dmm/games/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/dmm/games/gson/JsonSerializationContext;)Lcom/dmm/games/gson/JsonElement;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/dmm/games/gson/internal/Streams;->write(Lcom/dmm/games/gson/JsonElement;Lcom/dmm/games/gson/stream/JsonWriter;)V

    return-void
.end method
