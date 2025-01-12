.class public Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TargetListWithSearchView.java"


# instance fields
.field private emptyView:Landroidx/appcompat/widget/AppCompatTextView;

.field private listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

.field private noMembersResId:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->noMembersResId:I

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->emptyView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->noMembersResId:I

    return p0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$layout;->layout_select_target:I

    invoke-static {v0, v1, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/linecorp/linesdk/R$id;->searchView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Lcom/linecorp/linesdk/R$id;->emptyView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->emptyView:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView$1;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method


# virtual methods
.method public addTargetUsers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;-><init>(Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->addAll(Ljava/util/List;)V

    :goto_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->emptyView:Landroidx/appcompat/widget/AppCompatTextView;

    iget v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->noMembersResId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->emptyView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method
