.class Lnet/aihelp/core/ui/BaseFragment$6;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/BaseFragment;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/BaseFragment;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/BaseFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment$6;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    iput-object p2, p0, Lnet/aihelp/core/ui/BaseFragment$6;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment$6;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/ui/BaseFragment$6;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
