.class public Lcom/intlgame/core/push/ScheduledNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduledNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-virtual {v0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->initialize(Landroid/content/Context;)V

    const-string v1, "com.intlgame.core.push.notificationDetails"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/intlgame/api/push/INTLLocalNotification;

    invoke-direct {v1, p2}, Lcom/intlgame/api/push/INTLLocalNotification;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/core/push/LocalNotificationManager;->isAppInForeground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ScheduledNotificationReceiver App is running in foreground"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->removeNotificationFromCache(Lcom/intlgame/api/push/INTLLocalNotification;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->reportLocalNotificationForeground(Lcom/intlgame/api/push/INTLLocalNotification;)V

    goto :goto_0

    :cond_0
    const-string p1, "ScheduledNotificationReceiver App is not running"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->showNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NotificationReceiver onReceive error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
