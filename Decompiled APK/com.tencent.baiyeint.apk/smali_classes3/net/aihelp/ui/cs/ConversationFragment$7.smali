.class Lnet/aihelp/ui/cs/ConversationFragment$7;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->uploadVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ConversationFragment;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ConversationFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadImage(Ljava/io/File;)V
    .locals 5

    new-instance p1, Lnet/aihelp/data/model/cs/ConversationMsg;

    const/4 v0, 0x7

    const/16 v1, 0x3e9

    invoke-direct {p1, v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>(II)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1000(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lnet/aihelp/data/logic/ConversationPresenter;->uploadVideo(Ljava/io/File;J)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$7;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x96

    invoke-static {v0, v1, v2, v3, v4}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1100(Lnet/aihelp/ui/cs/ConversationFragment;JJ)V

    return-void
.end method
