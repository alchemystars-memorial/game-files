.class public Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$CSEntranceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FaqCardLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSEntranceViewHolder"
.end annotation


# instance fields
.field csService:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "aihelp_cs_entrance"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    iput-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$CSEntranceViewHolder;->csService:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    return-void
.end method
