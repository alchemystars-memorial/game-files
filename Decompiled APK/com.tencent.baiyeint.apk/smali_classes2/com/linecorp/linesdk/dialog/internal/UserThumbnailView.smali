.class public Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "UserThumbnailView.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private targetUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$layout;->target_user_thumbnail:I

    invoke-static {v0, v1, p0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/linecorp/linesdk/R$id;->textViewDisplayName:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->targetUserName:Landroid/widget/TextView;

    sget v0, Lcom/linecorp/linesdk/R$id;->imageViewTargetUser:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->targetUserName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getType()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/linecorp/linesdk/R$drawable;->friend_thumbnail:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/linecorp/linesdk/R$drawable;->group_thumbnail:I

    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getPictureUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
