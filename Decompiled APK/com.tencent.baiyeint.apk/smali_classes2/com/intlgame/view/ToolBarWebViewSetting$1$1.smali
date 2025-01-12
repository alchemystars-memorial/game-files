.class Lcom/intlgame/view/ToolBarWebViewSetting$1$1;
.super Lcom/intlgame/core/INTLInnerCallback;
.source "ToolBarWebViewSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarWebViewSetting$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarWebViewSetting$1;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    invoke-direct {p0}, Lcom/intlgame/core/INTLInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->onNotify(Ljava/util/HashMap;)V

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

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object v0, v0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download image from url failed\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object v0, v0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object v0, v0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download image from url failed, url invalid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object v0, v0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object v1, v1, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/intlgame/tools/IT;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Download image from url failed, no sdcard permissions"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/intlgame/view/ToolBarWebViewSetting;->saveToAlbum(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;->this$0:Lcom/intlgame/view/ToolBarWebViewSetting$1;

    iget-object p1, p1, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "Send broadcast done"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 0

    return-void
.end method
