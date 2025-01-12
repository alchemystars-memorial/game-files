.class Lcom/intlgame/friend/FacebookFriend$1$1;
.super Ljava/lang/Object;
.source "FacebookFriend.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend$1;->onNotify(Lcom/facebook/share/model/ShareContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/friend/FacebookFriend$1;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend$1;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sendOrShareLinkOrIMG methodID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , onCancel called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget v1, v0, Lcom/intlgame/api/INTLResult;->ret_code_:I

    invoke-static {v1}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/intlgame/api/INTLResult;->ret_msg_:Ljava/lang/String;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v2, v2, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 5

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnknownError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "12.3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget p1, p1, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/intlgame/api/INTLResult;-><init>(III)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sendOrShareLinkOrIMG methodID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , onError called, error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v0, v0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v1, Lcom/intlgame/api/INTLResult;

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v2, v2, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/16 v3, 0x270f

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object p1, p1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sendOrShareLinkOrIMG methodID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , onSuccess called, result :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget p1, p1, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/intlgame/api/INTLResult;-><init>(III)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1$1;->this$1:Lcom/intlgame/friend/FacebookFriend$1;

    iget-object v1, v1, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/FacebookFriend$1$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
