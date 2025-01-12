.class Lnet/aihelp/core/ui/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/BaseFragment;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/BaseFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment$2;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment$2;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    iget-object v0, v0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->showLoading(Ljava/lang/String;)V

    return-void
.end method
