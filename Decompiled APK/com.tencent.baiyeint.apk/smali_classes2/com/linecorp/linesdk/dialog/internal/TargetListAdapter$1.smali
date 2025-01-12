.class Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$1;
.super Ljava/util/ArrayList;
.source "TargetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;-><init>(Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$1;->this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->access$100(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$1;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
