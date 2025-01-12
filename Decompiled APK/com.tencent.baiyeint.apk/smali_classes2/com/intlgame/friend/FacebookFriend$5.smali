.class Lcom/intlgame/friend/FacebookFriend$5;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "FacebookFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/FacebookFriend;->shareImgOrVideoForGaming(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
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

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$methodId:I

.field final synthetic val$seqId:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend$5;->this$0:Lcom/intlgame/friend/FacebookFriend;

    iput-object p2, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    iput p4, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    iput-object p5, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/FacebookFriend$5;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 8
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

    const/4 v1, -0x1

    const/16 v2, 0xc9

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "shareImgOrVideoForGaming error : activity is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v3, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    invoke-direct {v0, v3, v1, v1, p1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lcom/facebook/gamingservices/GamingImageUploader;

    invoke-direct {v1, v0}, Lcom/facebook/gamingservices/GamingImageUploader;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    new-instance v4, Lcom/intlgame/friend/MediaUploadCallback;

    const/4 v5, 0x0

    iget v6, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    iget-object v7, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/intlgame/friend/MediaUploadCallback;-><init>(ZILjava/lang/String;)V

    invoke-virtual {v1, v0, p1, v3, v4}, Lcom/facebook/gamingservices/GamingImageUploader;->uploadToMediaLibrary(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/facebook/GraphRequest$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Lcom/intlgame/api/INTLResult;

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    const/16 v1, 0x8

    const-string v3, "GamingImageUploader upload image, file not found"

    invoke-direct {p1, v0, v1, v1, v3}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] query bitmap onNotify: can\'t find imagePath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query bitmap onNotify, can\'t find imagePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v0, v3, v1, v4}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] query bitmap onResult, imagePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLResult;->third_msg_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    iget v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$methodId:I

    iput v0, p1, Lcom/intlgame/api/INTLResult;->method_id_:I

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend$5;->val$seqId:Ljava/lang/String;

    const/16 v1, 0xc9

    invoke-static {v1, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
