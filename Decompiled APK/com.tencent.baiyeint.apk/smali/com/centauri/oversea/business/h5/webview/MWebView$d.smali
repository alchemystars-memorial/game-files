.class public final Lcom/centauri/oversea/business/h5/webview/MWebView$d;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8

    const-string p1, "IH5"

    const-string/jumbo p2, "url2Map"

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    check-cast v0, Ll/b;

    iget-object v2, v0, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v2, v2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "oversea://jsbridge?"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lo/g;->a:Ljava/util/regex/Pattern;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\\?"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "&"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    move v5, v4

    :goto_0
    array-length v6, p3

    if-ge v5, v6, :cond_2

    aget-object v6, p3, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v4

    aget-object v6, v6, v1

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "The parameter after the URL is null"

    invoke-static {p2, p3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string p2, "action"

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "response"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "intercept"

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :try_start_1
    const-string/jumbo p3, "utf-8"

    invoke-static {p2, p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptMsg: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v4, p2, :cond_3

    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v5, Ln/b;

    invoke-direct {v5}, Ln/b;-><init>()V

    const-string v6, "rule"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ln/b;->a:Ljava/lang/String;

    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ln/b;->b:Ljava/lang/String;

    const-string/jumbo v6, "type"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Ln/b;->c:Ljava/lang/String;

    iget-object p2, v2, Lm/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInterceptProtocol JSONException: "

    goto :goto_3

    :catch_2
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInterceptProtocol UnsupportedEncodingException: "

    :goto_3
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v3}, Lm/c;->d(Ljava/util/Map;)V

    :cond_4
    iget-object p1, v0, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object p2, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->d:Ln/c;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    iget-object p1, p1, Lm/c;->a:Ljava/util/ArrayList;

    iput-object p1, p2, Ln/c;->b:Ljava/util/ArrayList;

    :cond_5
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    return v1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eqz p1, :cond_0

    if-ne p2, v1, :cond_0

    const-string p1, "page_load"

    invoke-static {p1}, Lo/q;->c(Ljava/lang/String;)J

    const-string/jumbo v2, "webview_load"

    invoke-static {v2}, Lo/q;->c(Ljava/lang/String;)J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "processtime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "process_load"

    invoke-static {v4}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pagetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isvisable="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isCache="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->g:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p1, Lo/b$a;->a:Lo/b;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.webview.end"

    invoke-virtual {p1, v3, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->d(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iput-boolean v0, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    if-eqz p1, :cond_2

    check-cast p1, Ll/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTIWebActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_1

    iget-object p1, p1, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v1, v1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method
