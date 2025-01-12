.class public Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SendMessageTargetPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

.field private presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

.field private viewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;",
            "Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getTargetTypeCount()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_groups:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_friends:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    aget-object p2, v0, p2

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    invoke-virtual {p2}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/linecorp/linesdk/R$string;->search_no_group:I

    iget-object v3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    new-instance v2, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getGroups(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/linecorp/linesdk/R$string;->search_no_fiend:I

    iget-object v3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    new-instance v2, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getFriends(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    :goto_0
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getType()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method
