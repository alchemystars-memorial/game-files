.class public Lcom/intlgame/webview/JsProcessor;
.super Ljava/lang/Object;
.source "JsProcessor.java"


# static fields
.field public static final INTL_KEY_PARMAS:Ljava/lang/String; = "ParamKey"

.field public static final JS_METHOD_WEBVIEW_CLEAR_FOCUS:Ljava/lang/String; = "clearWebViewFocus"

.field public static final JS_METHOD_WEBVIEW_CLOSE:Ljava/lang/String; = "closeWebView"

.field public static final JS_METHOD_WEBVIEW_CREDITCARD_CHECKOUT:Ljava/lang/String; = "CreditCardCheckout"

.field public static final JS_METHOD_WEBVIEW_GET_GUEST_ID:Ljava/lang/String; = "getGuestId"

.field public static final JS_METHOD_WEBVIEW_INTL_BROWSER:Ljava/lang/String; = "OpenUrlInINTLBrowser"

.field public static final JS_METHOD_WEBVIEW_INTL_NAME_AUTH:Ljava/lang/String; = "OnWebRealNameAuthNotify"

.field public static final JS_METHOD_WEBVIEW_IS_APP_INSTALLED:Ljava/lang/String; = "isAppInstalled"

.field public static final JS_METHOD_WEBVIEW_NATIVE:Ljava/lang/String; = "jsCallNative"

.field public static final JS_METHOD_WEBVIEW_NATIVE_THIRD_LOGIN:Ljava/lang/String; = "nativeLogin"

.field public static final JS_METHOD_WEBVIEW_REAL_NAME_VERIFY:Ljava/lang/String; = "realNameCertificationCheckout"

.field public static final JS_METHOD_WEBVIEW_SCREEN:Ljava/lang/String; = "setFullScreen"

.field public static final JS_METHOD_WEBVIEW_SCREEN_ORIENTATION:Ljava/lang/String; = "setScreenOrientation"

.field public static final JS_METHOD_WEBVIEW_SEND:Ljava/lang/String; = "sendMsgWebView"

.field public static final JS_METHOD_WEBVIEW_SEND_RESULT:Ljava/lang/String; = "jsSendResult"

.field public static final JS_METHOD_WEBVIEW_SHARE:Ljava/lang/String; = "shareWebView"

.field private static final MAX_JS_MSG_SIZE:I = 0x300000

.field public static final MSG_JS_OPT_CLEAR_WEBVIEW_FOCUS:I = 0x73

.field public static final MSG_JS_OPT_WEBVIEW_BROWSER:I = 0x69

.field public static final MSG_JS_OPT_WEBVIEW_CLOSE:I = 0x64

.field public static final MSG_JS_OPT_WEBVIEW_CREDITCARD_CHECKOUT:I = 0x6c

.field public static final MSG_JS_OPT_WEBVIEW_FULLSCREEN:I = 0x68

.field public static final MSG_JS_OPT_WEBVIEW_GET_GUEST_ID:I = 0x6e

.field public static final MSG_JS_OPT_WEBVIEW_IS_APP_INSTALLED:I = 0x72

.field public static final MSG_JS_OPT_WEBVIEW_NATIVE:I = 0x65

.field public static final MSG_JS_OPT_WEBVIEW_NATIVE_THIRD_LOGIN:I = 0x71

.field public static final MSG_JS_OPT_WEBVIEW_NOT_AVAILABLE:I = 0x6d

.field public static final MSG_JS_OPT_WEBVIEW_REAL_NAME_NOTIFY:I = 0x6a

.field public static final MSG_JS_OPT_WEBVIEW_REAL_NAME_VERIFY:I = 0x74

.field public static final MSG_JS_OPT_WEBVIEW_SCREEN_ORIENTATION:I = 0x6b

.field public static final MSG_JS_OPT_WEBVIEW_SEND:I = 0x67

.field public static final MSG_JS_OPT_WEBVIEW_SEND_RESULT:I = 0x6f

.field public static final MSG_JS_OPT_WEBVIEW_SHARE:I = 0x66

.field public static final TAG_JS_METHOD:Ljava/lang/String; = "INTLMethod"

.field private static gInstance:Lcom/intlgame/webview/JsProcessor;


# instance fields
.field private mActivityHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    return-void
.end method

.method private dispatchMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "channel"

    const-string v1, "screenOrientation"

    const-string v2, "isFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "jsonData"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const-string p2, ""

    :goto_0
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "jsUrl"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto :goto_3

    :pswitch_4
    :try_start_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ParamKey"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :try_start_3
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0x68

    invoke-direct {p0, p2, p1}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto :goto_3

    :pswitch_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    goto :goto_3

    :pswitch_7
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/webview/JsProcessor;->sendMsgToWebViewActivity(ILandroid/os/Bundle;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static getInstance()Lcom/intlgame/webview/JsProcessor;
    .locals 1

    sget-object v0, Lcom/intlgame/webview/JsProcessor;->gInstance:Lcom/intlgame/webview/JsProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/intlgame/webview/JsProcessor;

    invoke-direct {v0}, Lcom/intlgame/webview/JsProcessor;-><init>()V

    sput-object v0, Lcom/intlgame/webview/JsProcessor;->gInstance:Lcom/intlgame/webview/JsProcessor;

    :cond_0
    sget-object v0, Lcom/intlgame/webview/JsProcessor;->gInstance:Lcom/intlgame/webview/JsProcessor;

    return-object v0
.end method

.method private parseMethodName(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "closeWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    goto/16 :goto_0

    :cond_0
    const-string v0, "shareWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x66

    goto/16 :goto_0

    :cond_1
    const-string v0, "sendMsgWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x67

    goto/16 :goto_0

    :cond_2
    const-string v0, "setFullScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x68

    goto/16 :goto_0

    :cond_3
    const-string v0, "jsCallNative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x65

    goto/16 :goto_0

    :cond_4
    const-string v0, "OpenUrlInINTLBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x69

    goto/16 :goto_0

    :cond_5
    const-string v0, "OnWebRealNameAuthNotify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x6a

    goto :goto_0

    :cond_6
    const-string v0, "setScreenOrientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x6b

    goto :goto_0

    :cond_7
    const-string v0, "CreditCardCheckout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x6c

    goto :goto_0

    :cond_8
    const-string v0, "realNameCertificationCheckout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x74

    goto :goto_0

    :cond_9
    const-string v0, "jsSendResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x6f

    goto :goto_0

    :cond_a
    const-string v0, "getGuestId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x6e

    goto :goto_0

    :cond_b
    const-string v0, "nativeLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x71

    goto :goto_0

    :cond_c
    const-string v0, "isAppInstalled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x72

    goto :goto_0

    :cond_d
    const-string v0, "clearWebViewFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x73

    goto :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendMsgToWebViewActivity(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public canResolved(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "jsonMessage is empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v2, 0x300000

    if-le v0, v2, :cond_1

    const-string p1, "js content size should < 3M"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonMessage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "INTLMethod"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse jsonMessage error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public init(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/JsProcessor;->mActivityHandler:Landroid/os/Handler;

    return-void
.end method

.method public parseMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "INTLMethod"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/intlgame/webview/JsProcessor;->parseMethodName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/intlgame/webview/JsProcessor;->dispatchMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
