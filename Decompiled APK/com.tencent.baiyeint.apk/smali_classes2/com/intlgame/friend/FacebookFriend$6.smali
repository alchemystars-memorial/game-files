.class Lcom/intlgame/friend/FacebookFriend$6;
.super Ljava/lang/Object;
.source "FacebookFriend.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend;->playerFinder(Lcom/intlgame/api/INTLBaseParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/friend/FacebookFriend;

.field final synthetic val$baseParams:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$6;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iput-object p2, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

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

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] FriendFinderDialog cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget v1, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v2, 0xc9

    invoke-static {v2, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] FriendFinderDialog error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const/16 v0, 0xc9

    new-instance v1, Lcom/intlgame/api/INTLResult;

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget v2, v2, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FriendFinderDialog error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v3, p1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/gamingservices/FriendFinderDialog$Result;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] FriendFinderDialog success called."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget v0, v0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/intlgame/api/INTLResult;-><init>(III)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$6;->val$baseParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v1, 0xc9

    invoke-static {v1, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/gamingservices/FriendFinderDialog$Result;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/FacebookFriend$6;->onSuccess(Lcom/facebook/gamingservices/FriendFinderDialog$Result;)V

    return-void
.end method
