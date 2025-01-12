.class Lnet/aihelp/data/logic/InitPresenter$2;
.super Ljava/lang/Object;
.source "InitPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->doInitForAIHelp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/InitPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$2;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$2;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$100(Lnet/aihelp/data/logic/InitPresenter;)V

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$2;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->access$200(Lnet/aihelp/data/logic/InitPresenter;Z)V

    invoke-static {}, Lnet/aihelp/ui/helper/MessageSyncHelper;->syncLogMessage()V

    return-void
.end method
