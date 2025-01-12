.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;
.super Ljava/lang/Object;
.source "LineAuthenticationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelAuthenticationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$300(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$400()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$400()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->handleIntentFromLineApp(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$402(Landroid/content/Intent;)Landroid/content/Intent;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->access$300(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    move-result-object v0

    invoke-static {}, Lcom/linecorp/linesdk/auth/LineLoginResult;->canceledError()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :cond_2
    :goto_0
    return-void
.end method
