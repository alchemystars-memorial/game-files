.class Lnet/aihelp/data/logic/ConversationPresenter$2;
.super Lnet/aihelp/core/net/http/callback/UploadCallback;
.source "ConversationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/ConversationPresenter;->uploadVideo(Ljava/io/File;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/UploadCallback<",
        "Lnet/aihelp/data/model/init/UploadEntity$VideoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/ConversationPresenter;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/ConversationPresenter;J)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter$2;->this$0:Lnet/aihelp/data/logic/ConversationPresenter;

    iput-wide p2, p0, Lnet/aihelp/data/logic/ConversationPresenter$2;->val$timeStamp:J

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/UploadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/init/UploadEntity$VideoResult;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/ConversationPresenter$2;->onReqSuccess(Lnet/aihelp/data/model/init/UploadEntity$VideoResult;)V

    return-void
.end method

.method public onReqSuccess(Lnet/aihelp/data/model/init/UploadEntity$VideoResult;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter$2;->this$0:Lnet/aihelp/data/logic/ConversationPresenter;

    iget-wide v1, p0, Lnet/aihelp/data/logic/ConversationPresenter$2;->val$timeStamp:J

    invoke-virtual {p1}, Lnet/aihelp/data/model/init/UploadEntity$VideoResult;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lnet/aihelp/data/logic/ConversationPresenter;->chatWithSupport(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
