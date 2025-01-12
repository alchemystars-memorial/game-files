.class Lcom/intlgame/webview/WebViewActivity$MsgHandler;
.super Landroid/os/Handler;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/intlgame/webview/WebViewActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "mWebView is null, please check!"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "jsUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "jsonData"

    const-string v6, ""

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;-><init>(Lcom/intlgame/webview/WebViewActivity$MsgHandler;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "channel"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/intlgame/api/tool/INTLTools;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intlgame/webview/WebViewActivity;->callJs(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v6, v1}, Lcom/intlgame/webview/WebViewActivity;->access$3200(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v6, v1}, Lcom/intlgame/webview/WebViewActivity;->access$3200(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_GUEST_ID returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v1}, Lcom/intlgame/webview/WebViewActivity;->access$3300(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$3300(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewActivity;->callJs(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "screenOrientation"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_3
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$3;

    invoke-direct {v0, p0, v4}, Lcom/intlgame/webview/WebViewActivity$MsgHandler$3;-><init>(Lcom/intlgame/webview/WebViewActivity$MsgHandler;I)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, v6}, Lcom/intlgame/webview/WebViewActivity;->access$3100(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "curActivity is null obj "

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "url"

    invoke-static {v6, v0}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0, p1}, Lcom/intlgame/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "The current system does not match the application that can open the intent "

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->w(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "isFullScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v3, v4

    :goto_1
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$2;

    invoke-direct {v0, p0, v3}, Lcom/intlgame/webview/WebViewActivity$MsgHandler$2;-><init>(Lcom/intlgame/webview/WebViewActivity$MsgHandler;Z)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "isToastShow"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "from_key"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a
    invoke-static {v0, p1, v6}, Lcom/intlgame/webview/WebViewActivity;->access$3100(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;)V

    goto :goto_4

    :pswitch_b
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$1;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$MsgHandler$1;-><init>(Lcom/intlgame/webview/WebViewActivity$MsgHandler;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method
