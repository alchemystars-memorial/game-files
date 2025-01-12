.class Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;
.super Ljava/lang/Object;
.source "UserImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

.field final synthetic val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

.field final synthetic val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/cs/ConversationMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$2;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/viewer/ImageViewer;->updateImageResource(Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->show()V

    return-void
.end method
