.class public final synthetic Lcom/linecorp/linesdk/dialog/SendMessageDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

.field public final synthetic f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog$$ExternalSyntheticLambda0;->f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog$$ExternalSyntheticLambda0;->f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog$$ExternalSyntheticLambda0;->f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog$$ExternalSyntheticLambda0;->f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->lambda$createUserThumbnailView$3$com-linecorp-linesdk-dialog-SendMessageDialog(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Landroid/view/View;)V

    return-void
.end method
