.class Lnet/aihelp/data/logic/InitPresenter$9;
.super Ljava/lang/Object;
.source "InitPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V
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

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$9;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    sget-object v1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v1}, Lnet/aihelp/data/localize/data/OperateHelper;->haveUnreadArticles()Z

    move-result v1

    invoke-interface {v0, v1}, Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;->onOperationUnreadChanged(Z)V

    return-void
.end method
