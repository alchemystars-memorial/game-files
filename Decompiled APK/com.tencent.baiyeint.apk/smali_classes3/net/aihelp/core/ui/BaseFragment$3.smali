.class Lnet/aihelp/core/ui/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/BaseFragment;->showEmpty([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/BaseFragment;

.field final synthetic val$layoutId:[I


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/BaseFragment;[I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment$3;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    iput-object p2, p0, Lnet/aihelp/core/ui/BaseFragment$3;->val$layoutId:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment$3;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    iget-object v0, v0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    iget-object v1, p0, Lnet/aihelp/core/ui/BaseFragment$3;->val$layoutId:[I

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;->showEmpty([I)V

    return-void
.end method
