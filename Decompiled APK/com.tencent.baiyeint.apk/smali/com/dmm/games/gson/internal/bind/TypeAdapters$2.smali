.class final Lcom/dmm/games/gson/internal/bind/TypeAdapters$2;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/gson/TypeAdapter<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/internal/bind/TypeAdapters$2;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->beginArray()V

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->peek()Lcom/dmm/games/gson/stream/JsonToken;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/dmm/games/gson/stream/JsonToken;->END_ARRAY:Lcom/dmm/games/gson/stream/JsonToken;

    if-eq v1, v4, :cond_5

    sget-object v4, Lcom/dmm/games/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$dmm$games$gson$stream$JsonToken:[I

    invoke-virtual {v1}, Lcom/dmm/games/gson/stream/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_1

    :catch_0
    new-instance p1, Lcom/dmm/games/gson/JsonSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dmm/games/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/dmm/games/gson/JsonSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dmm/games/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextInt()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->peek()Lcom/dmm/games/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_5
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

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/dmm/games/gson/internal/bind/TypeAdapters$2;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->beginArray()Lcom/dmm/games/gson/stream/JsonWriter;

    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/dmm/games/gson/stream/JsonWriter;->value(J)Lcom/dmm/games/gson/stream/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->endArray()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void
.end method
