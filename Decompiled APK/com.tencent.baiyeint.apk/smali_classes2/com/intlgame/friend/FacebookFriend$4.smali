.class Lcom/intlgame/friend/FacebookFriend$4;
.super Lcom/intlgame/core/interfaces/IActivityEventHandler;
.source "FacebookFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend;->addFBFriendCallBackToMessageQueue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/friend/FacebookFriend;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$4;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iput-object p2, p0, Lcom/intlgame/friend/FacebookFriend$4;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intlgame/core/interfaces/IActivityEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$4;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onActivityResult, requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$4;->this$0:Lcom/intlgame/friend/FacebookFriend;

    invoke-static {v0}, Lcom/intlgame/friend/FacebookFriend;->access$000(Lcom/intlgame/friend/FacebookFriend;)Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    sget-object p1, Lcom/intlgame/FacebookLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$4;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/FacebookLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
