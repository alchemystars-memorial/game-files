.class Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;
.super Ljava/lang/Object;
.source "SendMessagePresenter.java"

# interfaces
.implements Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;->this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;->this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-static {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->access$000(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;)Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onSendMessageFailure()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;->this$0:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-static {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->access$000(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;)Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onSendMessageSuccess()V

    return-void
.end method
