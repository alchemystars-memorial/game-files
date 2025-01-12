.class public Lcom/intlgame/common/binder/WebViewAIDLBinder;
.super Lcom/intlgame/webview/WebViewAIDL$Stub;
.source "WebViewAIDLBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/common/binder/WebViewAIDLBinder$LOG_LEVEL;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewAIDL$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-static {p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public writeLog(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method
