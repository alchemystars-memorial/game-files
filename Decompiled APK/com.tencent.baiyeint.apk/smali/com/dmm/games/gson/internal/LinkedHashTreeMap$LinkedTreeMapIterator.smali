.class abstract Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/dmm/games/gson/internal/LinkedHashTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->header:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iget p1, p1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->header:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextNode()Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->header:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/dmm/games/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/dmm/games/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/dmm/games/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
