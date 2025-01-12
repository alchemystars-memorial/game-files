.class public Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TargetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;,
        Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private externalListener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

.field private listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

.field private originalTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private queryString:Ljava/lang/String;

.field private targetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;",
            "Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->queryString:Ljava/lang/String;

    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$2;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->originalTargetList:Ljava/util/List;

    new-instance p1, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$1;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$1;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->externalListener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->queryString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->originalTargetList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->externalListener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->originalTargetList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public filter(Ljava/lang/String;)I
    .locals 3

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->queryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->originalTargetList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->originalTargetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->onBindViewHolder(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->bind(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/linecorp/linesdk/R$layout;->layout_target_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p2, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->targetList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->setSelected(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
