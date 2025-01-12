.class Lnet/aihelp/data/logic/InitPresenter$5;
.super Ljava/lang/Object;
.source "InitPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->cacheInitResponse(ZLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/InitPresenter;

.field final synthetic val$requireCallback:Z


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$5;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iput-boolean p2, p0, Lnet/aihelp/data/logic/InitPresenter$5;->val$requireCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lnet/aihelp/config/AIHelpContext;->successfullyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lnet/aihelp/data/logic/InitPresenter$5;->val$requireCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$5;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$600(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$5;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$600(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;->onAIHelpInitialized()V

    :cond_0
    return-void
.end method
