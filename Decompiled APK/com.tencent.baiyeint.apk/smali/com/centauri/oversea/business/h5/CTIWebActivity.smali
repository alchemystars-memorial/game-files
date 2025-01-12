.class public Lcom/centauri/oversea/business/h5/CTIWebActivity;
.super Landroid/app/Activity;


# static fields
.field public static final m:I


# instance fields
.field public a:I

.field public b:Lm/c;

.field public c:Lcom/centauri/oversea/business/h5/a;

.field public d:Ln/c;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/centauri/oversea/business/h5/webview/MWebView;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/widget/ProgressBar;

.field public l:Lcom/centauri/oversea/business/h5/CTIWebActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->d:Ln/c;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->e:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->f:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->l:Lcom/centauri/oversea/business/h5/CTIWebActivity$a;

    return-void
.end method

.method public static a(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!!webview debug mode  isApkInDebug\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/g;->g(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTIWebActivity"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!webview debug mode  debugUrl\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lo/g;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!!!webview debug mode  custom url is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget v3, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    invoke-virtual {v0}, Lm/c;->a()I

    move-result v0

    iget-object v4, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v4}, Lm/c;->b()V

    invoke-virtual {v2, v3, v0, v1}, Lcom/centauri/oversea/business/h5/a;->b(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/centauri/oversea/business/h5/a;->b(IILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "CTIWebActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PayChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "unipay_abroad_layout_h5"

    invoke-static {p0, v0}, Lo/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string/jumbo v0, "unipay_id_h5_refresh_layout"

    invoke-static {p0, v0}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->f:Landroid/widget/RelativeLayout;

    const-string/jumbo v0, "unipay_id_h5_err_content"

    invoke-static {p0, v0}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->g:Landroid/widget/TextView;

    const-string/jumbo v0, "unipay_id_h5_webview_container"

    invoke-static {p0, v0}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->e:Landroid/widget/FrameLayout;

    const-string v0, "progressBar"

    invoke-static {p0, v0}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    const-string v1, "os_mp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1c

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    :try_start_0
    const-string v0, "setDataDirectorySuffix_buy"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "buy"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    :try_start_1
    const-string v0, "setDataDirectorySuffix_mp"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    const-string/jumbo p1, "webview_load"

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    const-string p1, "process_load"

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Ln/c;

    invoke-direct {p1}, Ln/c;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->d:Ln/c;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setIntercept(Ln/a;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setPayChannel(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "LogEnable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "OrderKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    const-string v2, "PayParams"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "env"

    invoke-static {v2, v3}, Lo/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "idc"

    invoke-static {v2, v5}, Lo/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "offerId"

    invoke-static {v2, v6}, Lo/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "openId"

    invoke-static {v2, v7}, Lo/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "zoneId"

    invoke-static {v2, v8}, Lo/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setApplicationContext(Landroid/content/Context;)V

    new-instance v9, Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    invoke-direct {v9}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;-><init>()V

    invoke-virtual {v9, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->build()Lcom/centauri/oversea/newapi/params/InitParams;

    move-result-object v4

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/centauri/oversea/comm/GlobalData;->init(Lcom/centauri/oversea/newapi/params/InitParams;)V

    const-string v4, "debugUrl"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setLogEnable(Z)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "h5_mall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_4

    :cond_3
    new-instance p1, Lm/b;

    invoke-direct {p1}, Lm/b;-><init>()V

    goto :goto_4

    :cond_4
    new-instance p1, Lm/a;

    invoke-direct {p1}, Lm/a;-><init>()V

    :goto_4
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Lm/c;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lm/c;->f(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->d:Ln/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ln/c;->a:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string v0, "setJsResource exception: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MUrlIntercept"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    new-instance v0, Ll/a;

    invoke-direct {v0, p0}, Ll/a;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebViewClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$g;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    new-instance v0, Ll/b;

    invoke-direct {v0, p0}, Ll/b;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setWebChromeClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$f;)V

    const-string/jumbo p1, "unipay_id_h5_close"

    invoke-static {p0, p1}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ll/c;

    invoke-direct {v0, p0}, Ll/c;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Ll/d;

    invoke-direct {v0, p0}, Ll/d;-><init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/centauri/oversea/business/h5/a;

    invoke-direct {p1, p0}, Lcom/centauri/oversea/business/h5/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->l:Lcom/centauri/oversea/business/h5/CTIWebActivity$a;

    iput-object v0, p1, Lcom/centauri/oversea/business/h5/a;->c:Lcom/centauri/oversea/business/h5/a$c;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/h5/a;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "CTIWebActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget-object v1, v0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v0, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    iput-object v1, v0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    :cond_0
    iget-object v1, v0, Lcom/centauri/oversea/business/h5/a;->d:Lcom/centauri/oversea/business/h5/a$a;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "AIDLHandler"

    const-string/jumbo v1, "unBind service."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
