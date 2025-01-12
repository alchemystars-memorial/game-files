.class public final Lcom/centauri/oversea/business/h5/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/a$a;->a:Lcom/centauri/oversea/business/h5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "AIDLHandler"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a$a;->a:Lcom/centauri/oversea/business/h5/a;

    sget v1, Lcom/centauri/oversea/business/h5/b$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.centauri.oversea.business.h5.IWebInterface"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/centauri/oversea/business/h5/b;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lcom/centauri/oversea/business/h5/b;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/centauri/oversea/business/h5/b$a$a;

    invoke-direct {v1, p2}, Lcom/centauri/oversea/business/h5/b$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    :goto_0
    iput-object p2, v0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    iget-object p2, p0, Lcom/centauri/oversea/business/h5/a$a;->a:Lcom/centauri/oversea/business/h5/a;

    iget-object p2, p2, Lcom/centauri/oversea/business/h5/a;->c:Lcom/centauri/oversea/business/h5/a$c;

    if-eqz p2, :cond_3

    check-cast p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;

    iget-object v0, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "process_load"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    const-string v0, "page_load"

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v1, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CTIWebActivity"

    if-nez v0, :cond_2

    const-string v0, "debug loadUrl url: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v2, v2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p2, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "release loadUrl url: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v3, v2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v3}, Lm/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity$a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p2, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v1}, Lm/c;->c()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/centauri/oversea/business/h5/a$a;->a:Lcom/centauri/oversea/business/h5/a;

    iget-object v0, p2, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    if-eqz v0, :cond_4

    iget-object p2, p2, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a$a;->a:Lcom/centauri/oversea/business/h5/a;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "LinkToDeath exception: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "AIDLHandler"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
