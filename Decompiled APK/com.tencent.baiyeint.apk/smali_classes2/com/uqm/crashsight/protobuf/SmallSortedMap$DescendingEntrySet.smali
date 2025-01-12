.class Lcom/uqm/crashsight/protobuf/SmallSortedMap$DescendingEntrySet;
.super Lcom/uqm/crashsight/protobuf/SmallSortedMap$EntrySet;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingEntrySet"
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$DescendingEntryIterator;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SmallSortedMap$DescendingEntrySet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap$DescendingEntryIterator;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;B)V

    return-object v0
.end method
