.class Lcom/intlgame/friend/FacebookFriend$2;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "FacebookFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend;->createFacebookLinkOrImageContent(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;Lcom/intlgame/core/INTLInnerCallback;)V
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
.field final synthetic this$0:Lcom/intlgame/friend/FacebookFriend;

.field final synthetic val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

.field final synthetic val$callback:Lcom/intlgame/core/INTLInnerCallback;

.field final synthetic val$methodID:I

.field final synthetic val$photoBuilder:Lcom/facebook/share/model/SharePhoto$Builder;

.field final synthetic val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;Lcom/intlgame/core/INTLInnerCallback;ILcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhotoContent$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iput-object p2, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iput-object p3, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$seqID:Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    iput p5, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$methodID:I

    iput-object p6, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$photoBuilder:Lcom/facebook/share/model/SharePhoto$Builder;

    iput-object p7, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/FacebookFriend$2;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 6
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

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v0, v0, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v0, v0, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$photoBuilder:Lcom/facebook/share/model/SharePhoto$Builder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v1, v1, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$photoBuilder:Lcom/facebook/share/model/SharePhoto$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$photoBuilder:Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    iget p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$methodID:I

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/intlgame/friend/FacebookFriend;->access$200(Lcom/intlgame/friend/FacebookFriend;Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v2, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/intlgame/friend/FacebookFriend;->access$300(Lcom/intlgame/friend/FacebookFriend;Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$builder:Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intlgame/core/INTLInnerCallback;->onNotify(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] query bitmap onNotify: can\'t find imagePath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v0, v0, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$methodID:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query bitmap onNotify, can\'t find imagePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v5, v5, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    :goto_1
    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] query bitmap onResult, imagePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v1, v1, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLResult;->third_msg_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$methodID:I

    iput v0, p1, Lcom/intlgame/api/INTLResult;->method_id_:I

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$2;->val$callback:Lcom/intlgame/core/INTLInnerCallback;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    return-void
.end method
