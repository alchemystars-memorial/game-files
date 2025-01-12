.class public Lcom/intlgame/webview/WebViewMsgUtils;
.super Ljava/lang/Object;
.source "WebViewMsgUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromH5AuthResult(Ljava/lang/String;)Lcom/intlgame/api/INTLResult;
    .locals 4

    const-string v0, "flag"

    invoke-static {p0, v0}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/intlgame/api/INTLResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intlgame/api/INTLResult;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/intlgame/api/INTLResult;

    const/16 v2, 0x14

    const-string v3, "desc"

    invoke-static {p0, v3}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static handleMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jsonMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "INTL_KEY_OBSERVER_ID"

    invoke-static {p3, v0}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "INTL_KEY_METHOD_ID"

    invoke-static {p3, v1}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "INTL_KEY_SEQ_ID"

    invoke-static {p3, v2}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    const/16 v4, 0x12d

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq p0, v3, :cond_b

    const/16 v3, 0x18

    if-eq p0, v3, :cond_a

    const/16 v3, 0x6a

    if-eq p0, v3, :cond_9

    const/16 v3, 0x6c

    if-eq p0, v3, :cond_7

    const/16 v3, 0x6f

    const/16 v4, 0x12f

    if-eq p0, v3, :cond_4

    const/16 v3, 0x74

    if-eq p0, v3, :cond_1

    const/16 v3, 0x71

    if-eq p0, v3, :cond_4

    const/16 p2, 0x72

    if-eq p0, p2, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {v2, p0, p1}, Lcom/intlgame/webview/WebViewMsgUtils;->processWebViewShare(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance p0, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p0}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    const/16 p2, 0x65

    iput p2, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_type_:I

    iput-object p1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_json_data_:Ljava/lang/String;

    iput v6, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    const-string p1, "js call webview nativie"

    iput-object p1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    iput v4, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    invoke-static {v0, p0, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lcom/intlgame/tools/IT;->isAppInstalledNative(Ljava/lang/String;)Z

    move-result p0

    new-instance p3, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p3}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    iput p2, p3, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_type_:I

    iput-object p1, p3, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_json_data_:Ljava/lang/String;

    iput v6, p3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    const/16 p0, 0x132

    iput p0, p3, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    invoke-static {v0, p3, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/common/WebViewUtil;->stopKeepAliveService()V

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "real name verify notify:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/16 p3, 0x394

    if-eqz p1, :cond_2

    move v5, v6

    :cond_2
    invoke-direct {p2, p3, v5}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    if-eqz p1, :cond_3

    const-string p1, "birthday"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/intlgame/api/INTLResult;->ret_msg_:Ljava/lang/String;

    :cond_3
    const/16 p0, 0x387

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {v3}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    iput p0, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_type_:I

    iput-object p1, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_json_data_:Ljava/lang/String;

    if-ne v1, v5, :cond_5

    move v1, v4

    :cond_5
    iput v1, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    iput-object p3, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->extra_json_:Ljava/lang/String;

    invoke-static {p2}, Lcom/intlgame/tools/IT;->isWhitelistedUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0x13

    iput p0, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    const-string p0, "url not permitted to access INTL"

    iput-object p0, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iput v6, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    const-string p0, "js send result"

    iput-object p0, v3, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CREDITCARD_CHECKOUT notify:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/16 p2, 0x38d

    if-eqz p0, :cond_8

    move v5, v6

    :cond_8
    invoke-direct {p1, p2, v5}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    const/16 p0, 0x386

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RealName notify:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/webview/WebViewMsgUtils;->fromH5AuthResult(Ljava/lang/String;)Lcom/intlgame/api/INTLResult;

    move-result-object p0

    const/16 p1, 0x67

    invoke-static {p1, p0, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    new-instance p0, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p0}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    const/16 p2, 0x6d

    iput p2, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_type_:I

    const/16 p2, 0x5dd

    iput p2, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    iput-object p1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    iput v4, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    invoke-static {v0, p0, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/common/WebViewUtil;->stopKeepAliveService()V

    goto :goto_1

    :cond_b
    new-instance p0, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p0}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->msg_type_:I

    iput v6, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    const-string p1, "close webview"

    iput-object p1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_msg_:Ljava/lang/String;

    if-ne v1, v5, :cond_c

    move v1, v4

    :cond_c
    iput v1, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    iput-object p3, p0, Lcom/intlgame/api/webview/INTLWebViewRet;->extra_json_:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/common/WebViewUtil;->stopKeepAliveService()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static onJniNotify(Ljava/lang/String;ZLcom/intlgame/api/webview/INTLWebViewRet;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/intlgame/webview/WebViewMsgUtils$1;

    invoke-direct {p1, p0, p2}, Lcom/intlgame/webview/WebViewMsgUtils$1;-><init>(Landroid/app/Activity;Lcom/intlgame/api/webview/INTLWebViewRet;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "INTLSDK.getActivity() return null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewIPCActivity onJniResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/webview/INTLWebViewRet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p1, 0x130

    iput p1, p2, Lcom/intlgame/api/webview/INTLWebViewRet;->method_id_:I

    const/16 p1, 0x12d

    invoke-static {p1, p2, p0}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static processWebViewShare(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    const-string v0, "channel"

    invoke-static {p2, v0}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isToastShow"

    invoke-static {p2, v2}, Lcom/intlgame/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "from_key"

    invoke-static {p2, v3}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "desc"

    invoke-static {p2, v4}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v7, "com.intlgame.friend.%sFriend"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/tools/INTLModules;->getInstance()Lcom/intlgame/tools/INTLModules;

    move-result-object v7

    const-class v8, Lcom/intlgame/core/friend/FriendInterface;

    invoke-virtual {v7, v8, v5, p0, v6}, Lcom/intlgame/tools/INTLModules;->getChannelInstance(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intlgame/core/friend/FriendInterface;

    if-nez v6, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no plugin ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") include!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/webview/INTLWebViewRet;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>(I)V

    invoke-static {p0, v2, p1}, Lcom/intlgame/webview/WebViewMsgUtils;->onJniNotify(Ljava/lang/String;ZLcom/intlgame/api/webview/INTLWebViewRet;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v5, Lcom/intlgame/api/friend/INTLFriendReqInfo;

    invoke-direct {v5, p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toJSONString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fromType"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "shareType"

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "description"

    invoke-virtual {v6, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p1}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intlgame/api/webview/INTLWebViewRet;->extra_json_:Ljava/lang/String;

    const/16 v0, 0x131

    invoke-static {v0, p1, p0}, Lcom/intlgame/webview/WebViewMsgUtils;->pluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse INTLFriendReqInfo with json("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/webview/INTLWebViewRet;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/intlgame/api/webview/INTLWebViewRet;-><init>(I)V

    invoke-static {p0, v2, p1}, Lcom/intlgame/webview/WebViewMsgUtils;->onJniNotify(Ljava/lang/String;ZLcom/intlgame/api/webview/INTLWebViewRet;)V

    :goto_0
    return-void
.end method
