.class Lnet/aihelp/core/ui/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/BaseFragment;->onResume()V
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

    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment$1;->this$0:Lnet/aihelp/core/ui/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lnet/aihelp/common/Const;->isNestedFragmentOnResume:Z

    return-void
.end method
