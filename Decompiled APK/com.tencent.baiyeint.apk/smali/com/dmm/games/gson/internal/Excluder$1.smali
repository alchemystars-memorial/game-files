.class Lcom/dmm/games/gson/internal/Excluder$1;
.super Lcom/dmm/games/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/internal/Excluder;->create(Lcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;
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
.field private delegate:Lcom/dmm/games/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dmm/games/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/dmm/games/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/dmm/games/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/internal/Excluder;ZZLcom/dmm/games/gson/Gson;Lcom/dmm/games/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/internal/Excluder$1;->this$0:Lcom/dmm/games/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$gson:Lcom/dmm/games/gson/Gson;

    iput-object p5, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$type:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/dmm/games/gson/TypeAdapter;-><init>()V

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

    iget-object v0, p0, Lcom/dmm/games/gson/internal/Excluder$1;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$gson:Lcom/dmm/games/gson/Gson;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/Excluder$1;->this$0:Lcom/dmm/games/gson/internal/Excluder;

    iget-object v2, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$type:Lcom/dmm/games/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/dmm/games/gson/Gson;->getDelegateAdapter(Lcom/dmm/games/gson/TypeAdapterFactory;Lcom/dmm/games/gson/reflect/TypeToken;)Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/games/gson/internal/Excluder$1;->delegate:Lcom/dmm/games/gson/TypeAdapter;

    :goto_0
    return-object v0
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

    iget-boolean v0, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/dmm/games/gson/internal/Excluder$1;->delegate()Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

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

    iget-boolean v0, p0, Lcom/dmm/games/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/gson/stream/JsonWriter;->nullValue()Lcom/dmm/games/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dmm/games/gson/internal/Excluder$1;->delegate()Lcom/dmm/games/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dmm/games/gson/TypeAdapter;->write(Lcom/dmm/games/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
