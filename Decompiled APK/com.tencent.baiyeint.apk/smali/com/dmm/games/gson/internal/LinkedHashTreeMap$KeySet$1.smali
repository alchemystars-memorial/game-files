.class Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet$1;
.super Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
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
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet;

    iget-object p1, p1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/dmm/games/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
