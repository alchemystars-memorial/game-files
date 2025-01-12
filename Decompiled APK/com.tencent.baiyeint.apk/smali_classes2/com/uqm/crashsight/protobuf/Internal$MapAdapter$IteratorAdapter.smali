.class Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->b:Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$EntryAdapter;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->b:Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$EntryAdapter;-><init>(Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Internal$MapAdapter$IteratorAdapter;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
