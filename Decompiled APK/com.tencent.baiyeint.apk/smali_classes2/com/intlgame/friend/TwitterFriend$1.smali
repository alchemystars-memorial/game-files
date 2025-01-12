.class Lcom/intlgame/friend/TwitterFriend$1;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "TwitterFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/TwitterFriend;->share(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intlgame/core/INTLInnerCallback<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/friend/TwitterFriend;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$seqID:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/TwitterFriend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/TwitterFriend$1;->this$0:Lcom/intlgame/friend/TwitterFriend;

    iput-object p2, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    iput-object p3, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$imagePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/TwitterFriend$1;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const-string v1, "["

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] query bitmap onNotify has empty result"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend$1;->this$0:Lcom/intlgame/friend/TwitterFriend;

    iget-object v2, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/intlgame/friend/TwitterFriend;->access$000(Lcom/intlgame/friend/TwitterFriend;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to create image Uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend$1;->this$0:Lcom/intlgame/friend/TwitterFriend;

    iget-object v1, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/intlgame/friend/TwitterFriend;->access$100(Lcom/intlgame/friend/TwitterFriend;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] queryBitmap onResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/INTLResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/TwitterFriend$1;->this$0:Lcom/intlgame/friend/TwitterFriend;

    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/intlgame/friend/TwitterFriend$1;->val$seqID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/intlgame/friend/TwitterFriend;->access$100(Lcom/intlgame/friend/TwitterFriend;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
