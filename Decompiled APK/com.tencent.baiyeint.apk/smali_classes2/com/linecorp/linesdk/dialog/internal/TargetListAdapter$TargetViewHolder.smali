.class public Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TargetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetViewHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private highlightTextColor:I

.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

.field private viewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->viewContainer:Landroid/view/ViewGroup;

    sget p1, Lcom/linecorp/linesdk/R$id;->textView:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->textView:Landroid/widget/TextView;

    sget p1, Lcom/linecorp/linesdk/R$id;->imageView:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->imageView:Landroid/widget/ImageView;

    sget p1, Lcom/linecorp/linesdk/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/linecorp/linesdk/R$color;->text_highlight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->highlightTextColor:I

    return-void
.end method

.method private createHighlightTextSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->highlightTextColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-static {v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->access$000(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->createHighlightTextSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->viewContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getType()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object p2

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne p2, v0, :cond_0

    sget p2, Lcom/linecorp/linesdk/R$drawable;->friend_thumbnail:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/linecorp/linesdk/R$drawable;->group_thumbnail:I

    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getPictureUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method synthetic lambda$bind$0$com-linecorp-linesdk-dialog-internal-TargetListAdapter$TargetViewHolder(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getSelected()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setSelected(Z)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->setSelected(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-interface {p2, p1, p3}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;->onSelected(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Z)V

    return-void
.end method
