.class Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private synthetic c:Lcom/uqm/crashsight/protobuf/SmallSortedMap;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->c:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_5

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->c:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$Entry;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
