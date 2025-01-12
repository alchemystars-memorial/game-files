.class public Lcom/linecorp/linesdk/internal/FragmentWrapper;
.super Ljava/lang/Object;
.source "FragmentWrapper.java"


# instance fields
.field private fragment:Landroid/app/Fragment;

.field private supportFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/FragmentWrapper;->fragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/FragmentWrapper;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/FragmentWrapper;->supportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
