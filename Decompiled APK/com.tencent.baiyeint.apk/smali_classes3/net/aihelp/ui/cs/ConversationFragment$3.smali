.class Lnet/aihelp/ui/cs/ConversationFragment$3;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->launchPicker(Lnet/aihelp/core/util/permission/Permission$Result;Lnet/aihelp/core/util/permission/IPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ConversationFragment;

.field final synthetic val$callback:Lnet/aihelp/core/util/permission/IPermissionCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ConversationFragment;Lnet/aihelp/core/util/permission/IPermissionCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$3;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ConversationFragment$3;->val$callback:Lnet/aihelp/core/util/permission/IPermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$3;->val$callback:Lnet/aihelp/core/util/permission/IPermissionCallback;

    invoke-interface {p1}, Lnet/aihelp/core/util/permission/IPermissionCallback;->onPermissionRational()V

    return-void
.end method
