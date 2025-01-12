.class Lcom/intlgame/friend/MediaUploadCallback;
.super Ljava/lang/Object;
.source "MediaUploadCallback.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field private isVideo:Z

.field protected methodId:I

.field protected seqId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/intlgame/friend/MediaUploadCallback;->isVideo:Z

    iput p2, p0, Lcom/intlgame/friend/MediaUploadCallback;->methodId:I

    iput-object p3, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 7

    const/16 v0, 0xc9

    const-string v1, "["

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]upload media failed with null response"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->methodId:I

    const/4 v2, -0x1

    const-string v3, "upload media failed with null response"

    invoke-direct {p1, v1, v2, v2, v3}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]upload media failed : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v1, Lcom/intlgame/api/INTLResult;

    iget v2, p0, Lcom/intlgame/friend/MediaUploadCallback;->methodId:I

    const/16 v3, 0x270f

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload media failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]upload media complete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->methodId:I

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v2, v3}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/MediaUploadCallback;->seqId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
