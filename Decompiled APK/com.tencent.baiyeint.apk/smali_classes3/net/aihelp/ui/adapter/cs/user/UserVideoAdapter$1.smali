.class Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;
.super Ljava/lang/Object;
.source "UserVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

.field final synthetic val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

.field final synthetic val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;Lnet/aihelp/data/model/cs/ConversationMsg;Lnet/aihelp/core/ui/adapter/ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iput p4, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->prepareVideoThumbnail()V

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->access$100(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "You cannot start a load for a destroyed activity, interrupt current invoke."

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;-><init>(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
