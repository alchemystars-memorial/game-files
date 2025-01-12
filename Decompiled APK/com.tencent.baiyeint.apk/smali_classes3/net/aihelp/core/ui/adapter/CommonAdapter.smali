.class public abstract Lnet/aihelp/core/ui/adapter/CommonAdapter;
.super Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lnet/aihelp/core/ui/adapter/CommonAdapter$1;

    invoke-direct {p1, p0}, Lnet/aihelp/core/ui/adapter/CommonAdapter$1;-><init>(Lnet/aihelp/core/ui/adapter/CommonAdapter;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    return-void
.end method


# virtual methods
.method protected abstract convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method protected abstract itemLayoutId()I
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->notifyItemRemoved(I)V

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public setDataList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    return-void
.end method
