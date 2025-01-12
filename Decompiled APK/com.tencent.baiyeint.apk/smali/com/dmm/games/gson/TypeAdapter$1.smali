.class Lcom/dmm/games/gson/TypeAdapter$1;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/TypeAdapter;->nullSafe()Lcom/dmm/games/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/games/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/TypeAdapter$1;->this$0:Lcom/dmm/games/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->peek()Lcom/dmm/games/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/dmm/games/gson/stream/JsonToken;->NULL:Lcom/dmm/games/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/TypeAdapter$1;->this$0:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/dmm/games/gson/TypeAdapter;->read(Lcom/dmm/games/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/TypeAdapter$1;->this$0:Lcom/dmm/games/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
