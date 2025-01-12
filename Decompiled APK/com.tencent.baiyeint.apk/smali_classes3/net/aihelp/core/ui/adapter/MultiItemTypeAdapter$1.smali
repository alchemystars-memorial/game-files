.class Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lnet/aihelp/core/ui/adapter/ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;

.field final synthetic val$viewHolder:Lnet/aihelp/core/ui/adapter/ViewHolder;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;

    iput-object p2, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;

    iget-object v0, v0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;

    iget-object v1, v1, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    iget-object v2, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method
