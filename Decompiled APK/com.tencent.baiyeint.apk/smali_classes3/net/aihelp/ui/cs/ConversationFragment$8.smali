.class Lnet/aihelp/ui/cs/ConversationFragment$8;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lnet/aihelp/core/util/luban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->uploadImage(Ljava/lang/String;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private uploadAfterCompress(Ljava/io/File;)V
    .locals 4

    new-instance v0, Lnet/aihelp/data/model/cs/ConversationMsg;

    const/4 v1, 0x6

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>(II)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/ui/helper/BitmapHelper;->computeSize(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setImageSize([I)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v1}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1200(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lnet/aihelp/data/logic/ConversationPresenter;->uploadImage(Ljava/io/File;J)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    invoke-static {p1, v0, v1, v2, v3}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1100(Lnet/aihelp/ui/cs/ConversationFragment;JJ)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$8;->val$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment$8;->uploadAfterCompress(Ljava/io/File;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment$8;->uploadAfterCompress(Ljava/io/File;)V

    return-void
.end method
