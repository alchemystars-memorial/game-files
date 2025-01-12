.class final Lcom/dmm/games/gson/Gson$3;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/Gson;->longAdapter(Lcom/dmm/games/gson/LongSerializationPolicy;)Lcom/dmm/games/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/gson/TypeAdapter<",
        "Ljava/lang/Number;",
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
.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2
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
    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dmm/games/gson/Gson$3;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dmm/games/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/dmm/games/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/dmm/games/gson/Gson$3;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
