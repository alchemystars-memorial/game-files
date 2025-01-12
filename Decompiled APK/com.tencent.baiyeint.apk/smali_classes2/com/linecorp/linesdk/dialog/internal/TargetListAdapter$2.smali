.class Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$2;
.super Ljava/lang/Object;
.source "TargetListAdapter.java"

# interfaces
.implements Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$2;->this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Z)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$2;->this$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-static {v0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->access$200(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;->onSelected(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Z)V

    return-void
.end method
