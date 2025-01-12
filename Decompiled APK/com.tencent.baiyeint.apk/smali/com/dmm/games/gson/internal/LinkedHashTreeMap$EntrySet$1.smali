.class Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet$1;->this$1:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object p1, p1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/dmm/games/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$EntrySet$1;->nextNode()Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
