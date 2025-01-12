.class public final Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/dmm/games/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/dmm/games/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/dmm/games/gson/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lcom/dmm/games/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/dmm/games/gson/Gson;

    return-void
.end method


# virtual methods
.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->peek()Lcom/dmm/games/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$dmm$games$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/dmm/games/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lcom/dmm/games/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/dmm/games/gson/internal/LinkedTreeMap;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endObject()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->endArray()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/dmm/games/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/dmm/games/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginObject()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endObject()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
