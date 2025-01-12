.class public Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
.super Ljava/lang/Object;
.source "IPCWebViewPresenter.java"

# interfaces
.implements Lcom/intlgame/webview/ipc/WebViewLogger;
.implements Lcom/intlgame/webview/ipc/WebViewConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;,
        Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LOG_LEVEL;,
        Lcom/intlgame/webview/ipc/IPCWebViewPresenter$SingletonHolder;
    }
.end annotation


# instance fields
.field private mTaskQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;Lcom/intlgame/webview/WebViewAIDL;)Lcom/intlgame/webview/WebViewAIDL;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->runTask()V

    return-void
.end method

.method public static getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
    .locals 1

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$SingletonHolder;->access$000()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method private isStringNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private runTask()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;

    if-nez v0, :cond_0

    return-void

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {v0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->access$500(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;)I

    move-result v2

    invoke-static {v0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->access$600(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/intlgame/webview/WebViewAIDL;->writeLog(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    :cond_1
    return-void
.end method

.method private writeLog(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->isStringNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    new-instance v1, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;

    invoke-direct {v1, p1, p2}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->runTask()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/app/Application;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;-><init>(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)V

    iput-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intlgame.ACTION_FOREGROUND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->writeLog(ILjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->writeLog(ILjava/lang/String;)V

    return-void
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mWebViewAIDLInstance:Lcom/intlgame/webview/WebViewAIDL;

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/intlgame/webview/WebViewAIDL;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->writeLog(ILjava/lang/String;)V

    return-void
.end method

.method public unbindService(Landroid/app/Application;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intlgame.ACTION_FOREGROUND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->mTaskQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->writeLog(ILjava/lang/String;)V

    return-void
.end method
