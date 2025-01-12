.class Lnet/aihelp/core/ui/adapter/CommonAdapter$1;
.super Ljava/lang/Object;
.source "CommonAdapter.java"

# interfaces
.implements Lnet/aihelp/core/ui/adapter/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/adapter/CommonAdapter;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/adapter/CommonAdapter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/CommonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/CommonAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/CommonAdapter$1;->this$0:Lnet/aihelp/core/ui/adapter/CommonAdapter;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/adapter/CommonAdapter;->itemLayoutId()I

    move-result v0

    return v0
.end method

.method public isForViewType(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onDataSourceUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
