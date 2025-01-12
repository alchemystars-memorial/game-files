.class public Lcom/intlgame/webview/WebViewManager;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# static fields
.field public static final CONFIG_KEY_BACK_DISABLE:Ljava/lang/String; = "CONFIG_KEY_BACK_DISABLE"

.field public static final CONFIG_KEY_BACK_DISABLE_URLS:Ljava/lang/String; = "CONFIG_KEY_BACK_DISABLE_URLS"

.field public static final CONFIG_KEY_EXIT_DISABLE:Ljava/lang/String; = "CONFIG_KEY_EXIT_DISABLE"

.field public static final CONFIG_KEY_FULLSCREEN_ENABLE:Ljava/lang/String; = "WEBVIEW_FULLSCREEN_ENABLE"

.field public static final CONFIG_KEY_LANDSCAPE_HIDE_MENU_BAR_ENABLE:Ljava/lang/String; = "WEBVIEW_LANDSCAPE_HIDE_MENU_BAR_ENABLE"

.field public static final CONFIG_KEY_PORTRAIT_HIDE_MENU_BAR_ENABLE:Ljava/lang/String; = "WEBVIEW_PORTRAIT_HIDE_MENU_BAR_ENABLE"

.field public static final CONFIG_KEY_REPORT_CHANNEL:Ljava/lang/String; = "ANALYTICS_REPORT_CHANNEL"

.field public static final CONFIG_KEY_SHARE_CHANNEL:Ljava/lang/String; = "WEBVIEW_SHARE_CHANNEL"

.field public static final CONFIG_KEY_X5_CLOSE:Ljava/lang/String; = "WEBVIEW_X5_CLOSE_ANDROID"

.field public static final CONFIG_KEY_X5_UPLOAD:Ljava/lang/String; = "WEBVIEW_X5_UPLOAD_ANDROID"

.field public static final EXTRA_ENCRYPT_ENABLE:Ljava/lang/String; = "encrypt_enable"

.field public static final EXTRA_GAME_ID:Ljava/lang/String; = "game_id"

.field public static final EXTRA_GUEST_ID:Ljava/lang/String; = "guest_id"

.field public static final EXTRA_KEY_CALLJS_CONFIG:Ljava/lang/String; = "webview_calljs"

.field public static final EXTRA_KEY_EXTRA_JSON:Ljava/lang/String; = "webview_key_extra_json"

.field public static final EXTRA_KEY_FROM_JS:I = 0x1

.field public static final EXTRA_KEY_FROM_KEY:Ljava/lang/String; = "from_key"

.field public static final EXTRA_KEY_FROM_NATIVE:I = 0x2

.field public static final EXTRA_KEY_SCREEN:Ljava/lang/String; = "webview_screen"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "webview_url"

.field public static final EXTRA_KEY_WEBVIEW_CONFIG:Ljava/lang/String; = "webview_config"

.field public static final EXTRA_VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final INTL_GAME_ID:Ljava/lang/String; = "GAME_ID"

.field public static final IPC_WEBVIEW_MSG:Ljava/lang/String; = "ipc_webview_msg"

.field public static final IPC_WEBVIEW_MSG_TYPE:Ljava/lang/String; = "ipc_webview_msg_type"

.field protected static final KEY_JAVA_TO_JS_MSG:Ljava/lang/String; = "java_to_js_msg"

.field public static final KEY_JS_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_JS_CREDITCARdCHECKOUT_STATUS:Ljava/lang/String; = "Status"

.field public static final KEY_JS_DATA:Ljava/lang/String; = "jsonData"

.field public static final KEY_JS_DESC:Ljava/lang/String; = "desc"

.field public static final KEY_JS_FULLSCREEN:Ljava/lang/String; = "isFullScreen"

.field public static final KEY_JS_IMGDATA:Ljava/lang/String; = "imgData"

.field public static final KEY_JS_REALNAMEVERIFY_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final KEY_JS_REALNAMEVERIFY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_JS_REPORT_CHANNEL:Ljava/lang/String; = "spChannel"

.field public static final KEY_JS_REPORT_EVENTNAME:Ljava/lang/String; = "eventName"

.field public static final KEY_JS_REPORT_EXTRAJSON:Ljava/lang/String; = "extraJson"

.field public static final KEY_JS_REPORT_KEY1:Ljava/lang/String; = "key1"

.field public static final KEY_JS_REPORT_KEY2:Ljava/lang/String; = "key2"

.field public static final KEY_JS_REPORT_VALUE1:Ljava/lang/String; = "value1"

.field public static final KEY_JS_REPORT_VALUE2:Ljava/lang/String; = "value2"

.field public static final KEY_JS_SCREEN_ORIENTATION:Ljava/lang/String; = "screenOrientation"

.field public static final KEY_JS_TOAST:Ljava/lang/String; = "isToastShow"

.field public static final KEY_JS_URL:Ljava/lang/String; = "jsUrl"

.field public static final KEY_VISIBLE_SHARE_MORE:Ljava/lang/String; = "visibleShareMore"

.field protected static final MSG_A2S_JS_RETURN:I = 0x17

.field protected static final MSG_A2S_RECEIVE_MESSENGER:I = 0x16

.field protected static final MSG_A2S_WEBVIEW_CLOSED:I = 0x15

.field public static final MSG_A2S_WEBVIEW_NOT_AVAILABLE:I = 0x18

.field protected static final MSG_S2A_JAVA_CALL_JS:I = 0x1e

.field public static final PLUGIN_NAME:Ljava/lang/String; = "INTLWebView"

.field public static final SCREEN_DIRECTION_LANDSCAPE:I = 0x3

.field public static final SCREEN_DIRECTION_PORTRAIT:I = 0x2

.field public static final SCREEN_DIRECTION_SENSOR:I = 0x1

.field public static isSameProcessWebView:Z

.field private static sInstance:Lcom/intlgame/webview/WebViewManager;


# instance fields
.field public webViewConfig:Lcom/intlgame/webview/ipc/WebViewConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "init"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/intlgame/webview/WebViewManager;
    .locals 1

    sget-object v0, Lcom/intlgame/webview/WebViewManager;->sInstance:Lcom/intlgame/webview/WebViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/intlgame/webview/WebViewManager;

    invoke-direct {v0}, Lcom/intlgame/webview/WebViewManager;-><init>()V

    sput-object v0, Lcom/intlgame/webview/WebViewManager;->sInstance:Lcom/intlgame/webview/WebViewManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/intlgame/common/WebViewUtil;->initialize(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/intlgame/webview/WebViewManager;->sInstance:Lcom/intlgame/webview/WebViewManager;

    return-object v0
.end method

.method private getWebViewActivityCls(Z)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/intlgame/webview/WebViewActivity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-class p1, Lcom/intlgame/webview/SameProcessWebViewActivity;

    return-object p1

    :cond_0
    const-class p1, Lcom/intlgame/webview/SubProcessWebViewActivity;

    return-object p1
.end method

.method private getWebViewConfig(Lcom/intlgame/api/webview/INTLWebViewReqInfo;)Ljava/lang/String;
    .locals 12

    const-string v0, "WEBVIEW_SHARE_CHANNEL"

    const-string v1, "WEBVIEW_LANDSCAPE_HIDE_MENU_BAR_ENABLE"

    const-string v2, "WEBVIEW_PORTRAIT_HIDE_MENU_BAR_ENABLE"

    const-string v3, "WEBVIEW_X5_UPLOAD_ANDROID"

    const-string v4, "WEBVIEW_X5_CLOSE_ANDROID"

    const-string v5, "CONFIG_KEY_EXIT_DISABLE"

    const-string v6, "CONFIG_KEY_BACK_DISABLE_URLS"

    const-string v7, "WEBVIEW_FULLSCREEN_ENABLE"

    const-string v8, "CONFIG_KEY_BACK_DISABLE"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v4, v10}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v9, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v9, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v2, v10}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v1, v10}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v7, v10}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v8, v10}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->full_screen_enable_:Z

    if-eqz v0, :cond_0

    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->extra_json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->extra_json_:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v9, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v9, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v9, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callJS(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "jsonJsPara is null, return"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonJsPara = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/intlgame/webview/WebViewManager;->getWebViewActivityCls(Z)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "webview_calljs"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "can\'t start WebViewActivity\uff0cMake sure you have register \"WebViewActivity\""

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onShareCallback(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult webViewResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/intlgame/webview/WebViewManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/intlgame/webview/WebViewManager$1;-><init>(Lcom/intlgame/webview/WebViewManager;Landroid/app/Activity;Lcom/intlgame/api/INTLResult;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const-string p1, "INTLSDK.getActivity() return null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public openUrl(Lcom/intlgame/api/webview/INTLWebViewReqInfo;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openUrl with url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->url_:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, "%%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screen_orientation_: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->screen_orientation_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " system_browser_enable_: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->system_browser_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " full_screen_enable_: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->full_screen_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " encrypt_enable_: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->encrypt_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " extra_json_: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->system_browser_enable_:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->url_:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->encrypt_enable_:Z

    invoke-static {p2, v0, p1}, Lcom/intlgame/webview/ShareManager;->shareToBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Must execute USDKPlatform.initialize() first !!!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/intlgame/webview/WebViewManager;->getWebViewActivityCls(Z)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->url_:Ljava/lang/String;

    const-string v2, "webview_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->screen_orientation_:I

    const-string v2, "webview_screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->extra_json_:Ljava/lang/String;

    const-string v2, "webview_key_extra_json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewManager;->getWebViewConfig(Lcom/intlgame/api/webview/INTLWebViewReqInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "webview_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GAME_ID"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "version_name"

    const-string v2, "1.17.00.301"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean p1, p1, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->encrypt_enable_:Z

    const-string v1, "encrypt_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/tools/IT;->getGuestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "guest_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/tools/IT;->getGuestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/tools/IT;->getGuestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "can\'t start WebViewActivity\uff0cMake sure you have register \"WebViewActivity\""

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Lcom/intlgame/common/WebViewUtil;->startKeepAliveService()V

    :cond_2
    sput-boolean p2, Lcom/intlgame/webview/WebViewManager;->isSameProcessWebView:Z

    return-void
.end method
