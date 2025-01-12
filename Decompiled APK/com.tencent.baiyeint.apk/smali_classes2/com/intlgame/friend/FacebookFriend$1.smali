.class Lcom/intlgame/friend/FacebookFriend$1;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "FacebookFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend;->sendOrShareLinkOrIMG(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intlgame/core/INTLInnerCallback<",
        "Lcom/facebook/share/model/ShareContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/friend/FacebookFriend;

.field final synthetic val$methodID:I

.field final synthetic val$observerID:I

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$1;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iput p2, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    iput p3, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    iput-object p4, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/facebook/share/model/ShareContent;)V
    .locals 5

    const-string v0, "["

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] the shareContent is null, please check !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/4 v2, 0x3

    const-string v3, "the shareContent is null, please check !"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/16 v2, 0xca

    if-eq v1, v2, :cond_4

    const/16 v2, 0x131

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xc9

    if-eq v1, v2, :cond_3

    const/16 v2, 0x130

    if-eq v1, v2, :cond_3

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] sendOrShareLinkOrIMG not support methodID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOrShareLinkOrIMG not support methodID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v1, Lcom/facebook/share/widget/MessageDialog;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    :goto_2
    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$1;->this$0:Lcom/intlgame/friend/FacebookFriend;

    invoke-static {v2}, Lcom/intlgame/friend/FacebookFriend;->access$000(Lcom/intlgame/friend/FacebookFriend;)Lcom/facebook/CallbackManager;

    move-result-object v2

    new-instance v3, Lcom/intlgame/friend/FacebookFriend$1$1;

    invoke-direct {v3, p0}, Lcom/intlgame/friend/FacebookFriend$1$1;-><init>(Lcom/intlgame/friend/FacebookFriend$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-virtual {v1, p1}, Lcom/facebook/internal/FacebookDialogBase;->canShow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/intlgame/friend/FacebookFriend;->access$100(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] facebook share or send dialog can not show now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$methodID:I

    const/16 v2, 0x270f

    const/4 v3, -0x1

    const-string v4, "share or send dialog can not show now"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/FacebookFriend$1;->onNotify(Lcom/facebook/share/model/ShareContent;)V

    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] INTLInnerCallback onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$observerID:I

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
