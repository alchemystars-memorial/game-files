.class public Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private delegates:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method addDelegate(ILnet/aihelp/core/ui/adapter/ItemViewDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An ItemViewDelegate is already registered for the viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Already registered ItemViewDelegate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method addDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    invoke-interface {v2, p2, p3}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ItemViewDelegateManager added that matches position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in data source"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getItemViewDelegate(I)Lnet/aihelp/core/ui/adapter/ItemViewDelegate;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    return-object p1
.end method

.method getItemViewDelegateCount()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->getItemViewDelegate(I)Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->getItemViewLayoutId()I

    move-result p1

    return p1
.end method

.method getItemViewType(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    invoke-interface {v1, p1, p2}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ItemViewDelegate added that matches position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    invoke-interface {v2, p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->onDataSourceUpdated(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ItemViewDelegate is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeDelegate(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->delegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    :cond_0
    return-void
.end method
