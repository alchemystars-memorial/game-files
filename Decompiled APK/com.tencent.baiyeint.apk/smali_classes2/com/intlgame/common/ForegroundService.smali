.class public Lcom/intlgame/common/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "com.intlgame.common"

.field public static final FOREGROUND_SERVICE_ACTION:Ljava/lang/String; = "com.intlgame.ACTION_FOREGROUND_SERVICE"

.field private static final SERVICE_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getNotificationInfo(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v3, :cond_0

    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    sget v0, Lcom/intlgame/webview/R$drawable;->ic_launcher_foreground:I

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/intlgame/webview/R$string;->app_name:I

    invoke-virtual {p0, p1}, Lcom/intlgame/common/ForegroundService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.intlgame.ACTION_FOREGROUND_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/intlgame/common/binder/WebViewAIDLBinder;

    invoke-direct {p1}, Lcom/intlgame/common/binder/WebViewAIDLBinder;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ForegroundService start for keep process alive !!!"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/intlgame/common/WebViewUtil;->clearKeepAliveComponentName()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intlgame/common/ForegroundService;->stopForeground(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ForegroundService for keep process alive destroyed !!!"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string p1, "com.intlgame.common"

    const/4 p2, 0x1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string p1, "ForegroundService for keep process alive is starting : sdk-version [16, 26)"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/intlgame/common/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const-string v0, "ForegroundService for keep process alive is starting : sdk-version [26, 30+]"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/intlgame/common/ForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "ForegroundService"

    invoke-direct {v1, p1, v2, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/common/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intlgame/common/ForegroundService;->getNotificationInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/intlgame/common/ForegroundService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p3}, Lcom/intlgame/common/ForegroundService;->stopSelf(I)V

    :cond_1
    :goto_0
    return p2
.end method
