.class final Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field private final context:Lcom/dmm/games/gson/Gson;

.field private final delegate:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/gson/Gson;",
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/dmm/games/gson/Gson;

    iput-object p2, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    iput-object p3, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/dmm/games/gson/Gson;

    invoke-static {v1}, Lcom/dmm/games/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/dmm/games/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/gson/Gson;->getAdapter(Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/dmm/games/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dmm/games/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    instance-of v2, v1, Lcom/dmm/games/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
