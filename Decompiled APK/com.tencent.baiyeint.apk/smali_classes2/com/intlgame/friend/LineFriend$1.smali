.class Lcom/intlgame/friend/LineFriend$1;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "LineFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/friend/LineFriend;->sendToLine(Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;II)V
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
.field final synthetic this$0:Lcom/intlgame/friend/LineFriend;

.field final synthetic val$methodID:I

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/intlgame/friend/LineFriend;Ljava/lang/String;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/friend/LineFriend$1;->this$0:Lcom/intlgame/friend/LineFriend;

    iput-object p3, p0, Lcom/intlgame/friend/LineFriend$1;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iput-object p4, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    iput p5, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    iput p6, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    iput-object p7, p0, Lcom/intlgame/friend/LineFriend$1;->val$shareIntent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/intlgame/core/INTLInnerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/LineFriend$1;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, " ] close output stream error : "

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "[ "

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v1, v1, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lcom/intlgame/friend/LineFriend$1;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v5, v5, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "line-share"

    invoke-static {v5, v6}, Lcom/intlgame/tools/IT;->getStoragePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] failed to save image : "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/intlgame/friend/LineFriend$1;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v5, v5, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    new-instance v5, Lcom/intlgame/api/INTLResult;

    iget v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    const-string v7, "failed to save image"

    invoke-direct {v5, v6, v4, v2, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v1, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] save bitmap fail"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    new-instance v1, Lcom/intlgame/api/INTLResult;

    iget v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    const-string v7, "save bitmap fail"

    invoke-direct {v1, v6, v4, v2, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v1, v6}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :try_start_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".line.provider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ] providerAuth path : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$shareIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$shareIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line send with image success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$shareIntent:Landroid/content/Intent;

    const-string v6, "SendToLine"

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    new-instance v1, Lcom/intlgame/api/INTLResult;

    iget v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {v1, v6, v8, v8, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v1, v6}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] compress bitmap fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    new-instance v5, Lcom/intlgame/api/INTLResult;

    iget v6, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    const-string v7, "compress bitmap fail"

    invoke-direct {v5, v6, v4, v2, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v2, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_6
    throw p1

    :cond_6
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] failed to deal image:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/friend/LineFriend$1;->val$reqInfo:Lcom/intlgame/api/friend/INTLFriendReqInfo;

    iget-object v0, v0, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    const/16 v3, 0xb

    const-string v4, "failed to deal image"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] queryBitmap onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/INTLResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget v0, p0, Lcom/intlgame/friend/LineFriend$1;->val$methodID:I

    iput v0, p1, Lcom/intlgame/api/INTLResult;->method_id_:I

    iget v0, p0, Lcom/intlgame/friend/LineFriend$1;->val$observerID:I

    iget-object v1, p0, Lcom/intlgame/friend/LineFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
