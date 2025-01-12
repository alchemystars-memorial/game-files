.class Lcom/intlgame/friend/VideoUploadCallback;
.super Lcom/intlgame/friend/MediaUploadCallback;
.source "VideoUploadCallback.java"

# interfaces
.implements Lcom/facebook/GraphRequest$OnProgressCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/intlgame/friend/MediaUploadCallback;-><init>(ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 0

    return-void
.end method
