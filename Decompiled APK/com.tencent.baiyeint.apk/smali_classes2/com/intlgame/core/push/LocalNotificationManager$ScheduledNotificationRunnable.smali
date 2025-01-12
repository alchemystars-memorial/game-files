.class Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;
.super Ljava/lang/Object;
.source "LocalNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/push/LocalNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScheduledNotificationRunnable"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mNotification:Lcom/intlgame/api/push/INTLLocalNotification;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mNotification:Lcom/intlgame/api/push/INTLLocalNotification;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;Lcom/intlgame/core/push/LocalNotificationManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;-><init>(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-class v0, Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/push/LocalNotificationManager;

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/intlgame/core/push/LocalNotificationManager;->isAppInForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "App is running in foreground"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mNotification:Lcom/intlgame/api/push/INTLLocalNotification;

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->removeNotificationFromCache(Lcom/intlgame/api/push/INTLLocalNotification;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mNotification:Lcom/intlgame/api/push/INTLLocalNotification;

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->reportLocalNotificationForeground(Lcom/intlgame/api/push/INTLLocalNotification;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is not running"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;->mNotification:Lcom/intlgame/api/push/INTLLocalNotification;

    invoke-virtual {v0, v1}, Lcom/intlgame/core/push/LocalNotificationManager;->showNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V

    :goto_0
    return-void
.end method
