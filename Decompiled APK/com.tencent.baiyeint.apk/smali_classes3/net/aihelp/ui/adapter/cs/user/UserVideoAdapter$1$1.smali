.class Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;
.super Ljava/lang/Object;
.source "UserVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    iget-object v1, v1, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    iget-object v2, v2, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    iget v3, v3, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method
