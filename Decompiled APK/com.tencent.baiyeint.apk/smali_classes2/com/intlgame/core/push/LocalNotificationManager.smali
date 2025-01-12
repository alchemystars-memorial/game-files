.class public Lcom/intlgame/core/push/LocalNotificationManager;
.super Ljava/lang/Object;
.source "LocalNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;,
        Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_APP_PACKAGE:I = 0x4

.field public static final ACTION_TYPE_BROWSER:I = 0x2

.field public static final ACTION_TYPE_INAPP_ACTIVITY:I = 0x1

.field public static final ACTION_TYPE_INTENT:I = 0x3

.field private static final CHANNEL_GROUP:Ljava/lang/String; = "com.intlgame.core.push.ChannelGroup"

.field private static final CHANNEL_ID:Ljava/lang/String; = "com.intlgame.core.push.defaultChannelID"

.field public static final FORM_INTL_PUSH:Ljava/lang/String; = "form_intl_push"

.field private static final MESSAGE_ADD_NOTIFICATION:I = 0x1

.field private static final MESSAGE_CLEAR_NOTIFICATION:I = 0x2

.field private static final MESSAGE_KEY_NOTIFICATION:Ljava/lang/String; = "com.intlgame.core.push.MessageKeyNotification"

.field public static final NOTIFICATION_BACKGROUND_TYPE:Ljava/lang/String; = "notification_background_type"

.field public static final NOTIFICATION_CONTENT:Ljava/lang/String; = "notification_content"

.field static final NOTIFICATION_DETAILS:Ljava/lang/String; = "com.intlgame.core.push.notificationDetails"

.field private static mIsInitial:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationHandler:Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

.field private mScheduleHandler:Landroid/os/Handler;

.field private final mScheduledNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/api/push/INTLLocalNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/core/push/LocalNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->internalClearLocalNotifications()V

    return-void
.end method

.method static synthetic access$100(Lcom/intlgame/core/push/LocalNotificationManager;Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->internalAddLocalNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V

    return-void
.end method

.method private addNotificationToCache(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createNotification(Lcom/intlgame/api/push/INTLLocalNotification;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 4

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    const/high16 v2, 0x8000000

    invoke-direct {p0, v2}, Lcom/intlgame/core/push/LocalNotificationManager;->getPendingIntentFlag(I)I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "com.intlgame.core.push.defaultChannelID"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->title_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->content_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->tickerText_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-wide v0, p1, Lcom/intlgame/api/push/INTLLocalNotification;->fireTime_:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->setLights(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->smallIcon_:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->setSmallIcon(Landroid/content/Context;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-static {p1, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->setSound(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-static {p1, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->setVibrationPattern(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/NotificationChannelGroup;

    iget-object v1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->title_:Ljava/lang/String;

    const-string v2, "com.intlgame.core.push.ChannelGroup"

    invoke-direct {v0, v2, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p1, Lcom/intlgame/api/push/INTLLocalNotification;->title_:Ljava/lang/String;

    const/4 v4, 0x4

    const-string v5, "com.intlgame.core.push.defaultChannelID"

    invoke-direct {v1, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget v3, p1, Lcom/intlgame/api/push/INTLLocalNotification;->lights_:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v3, p1, Lcom/intlgame/api/push/INTLLocalNotification;->content_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget p1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->vibrate_:I

    if-ne p1, v5, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method private getActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActivityIntent error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method private getBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "android.intent.action.MAIN"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method private getNotificationIntent(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;)Landroid/content/Intent;
    .locals 3

    iget v0, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionType_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->getBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager;->getActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"notificationID\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"title\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/intlgame/api/push/INTLLocalNotification;->title_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"body\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/intlgame/api/push/INTLLocalNotification;->content_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"actionType\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionType_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \"actionParameter\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "notification_content"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/intlgame/api/push/INTLPushType;->LOCAL_NOTIFICATION_ClICK:Lcom/intlgame/api/push/INTLPushType;

    invoke-virtual {p2}, Lcom/intlgame/api/push/INTLPushType;->getValue()I

    move-result p2

    const-string v0, "notification_background_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "form_intl_push"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .locals 0

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    return-object p0
.end method

.method private getPendingIntentFlag(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private internalAddLocalNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/push/INTLLocalNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->removeNotificationFromCache(Lcom/intlgame/api/push/INTLLocalNotification;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->scheduleNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V

    return-void
.end method

.method private internalClearLocalNotifications()V
    .locals 5

    const-string v0, "internalClearLocalNotifications "

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intlgame/core/push/LocalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/intlgame/core/push/ScheduledNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intlgame/api/push/INTLLocalNotification;

    iget-object v3, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    iget v2, v2, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    const/high16 v4, 0x8000000

    invoke-direct {p0, v4}, Lcom/intlgame/core/push/LocalNotificationManager;->getPendingIntentFlag(I)I

    move-result v4

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/intlgame/core/push/LocalNotificationManager;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static isAppInForeground(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static retrieveSoundResourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private scheduleNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/push/INTLLocalNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/intlgame/api/push/INTLLocalNotification;->fireTime_:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intlgame/core/push/LocalNotificationManager;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->reportLocalNotificationForeground(Lcom/intlgame/api/push/INTLLocalNotification;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->showNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V

    goto/16 :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeMillis :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " fireTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduleHandler:Landroid/os/Handler;

    new-instance v3, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;

    iget-object v4, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/intlgame/core/push/LocalNotificationManager$ScheduledNotificationRunnable;-><init>(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;Lcom/intlgame/core/push/LocalNotificationManager$1;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/intlgame/api/push/INTLLocalNotification;->toJSONString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/intlgame/core/push/ScheduledNotificationReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.intlgame.core.push.notificationDetails"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    const/high16 v5, 0x8000000

    invoke-direct {p0, v5}, Lcom/intlgame/core/push/LocalNotificationManager;->getPendingIntentFlag(I)I

    move-result v5

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/intlgame/core/push/LocalNotificationManager;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/core/app/AlarmManagerCompat;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->addNotificationToCache(Lcom/intlgame/api/push/INTLLocalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleNotification exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static setLights(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    iget p0, p0, Lcom/intlgame/api/push/INTLLocalNotification;->lights_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "lights = 1"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const p0, -0xff1101

    const/16 v0, 0x1f4

    const/16 v1, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private static setSmallIcon(Landroid/content/Context;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSmallIcon error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static setSound(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    iget v0, p0, Lcom/intlgame/api/push/INTLLocalNotification;->soundEnabled_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/intlgame/api/push/INTLLocalNotification;->ringUri_:Ljava/lang/String;

    invoke-static {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->retrieveSoundResourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_0
    const-string p0, "setSound(null)"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    return-void
.end method

.method private static setVibrationPattern(Lcom/intlgame/api/push/INTLLocalNotification;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3

    iget p0, p0, Lcom/intlgame/api/push/INTLLocalNotification;->vibrate_:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "vibrate = 1"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    new-array p0, v1, [J

    const-wide/16 v1, 0x2

    aput-wide v1, p0, v0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_0
    const-string p0, "vibrate = 0"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    new-array p0, v1, [J

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    return-void
.end method


# virtual methods
.method public addLocalNotification(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] entry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->isInitial()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "addLocalNotification with LocalNotificationManager isn\'t inited"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "addLocalNotification notification == null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/intlgame/core/push/LocalNotificationManager;->internalAddLocalNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationHandler:Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.intlgame.core.push.MessageKeyNotification"

    invoke-virtual {p2}, Lcom/intlgame/api/push/INTLLocalNotification;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationHandler:Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

    invoke-virtual {p2, p1}, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLocalNotification error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearLocalNotifications(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] entry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->isInitial()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "cancelAllNotifications with LocalNotificationManager isn\'t inited"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/intlgame/core/push/LocalNotificationManager;->internalClearLocalNotifications()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationHandler:Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/intlgame/core/push/LocalNotificationManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;-><init>(Lcom/intlgame/core/push/LocalNotificationManager;Lcom/intlgame/core/push/LocalNotificationManager$1;)V

    iput-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mNotificationHandler:Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduleHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/intlgame/core/push/LocalNotificationManager;->mIsInitial:Z

    return-void
.end method

.method public isInitial()Z
    .locals 1

    sget-boolean v0, Lcom/intlgame/core/push/LocalNotificationManager;->mIsInitial:Z

    return v0
.end method

.method removeNotificationFromCache(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mScheduledNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/api/push/INTLLocalNotification;

    iget v1, v1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    iget v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public reportLocalNotificationForeground(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/intlgame/foundation/NDKHelper;->checkSOLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/intlgame/api/push/INTLPushResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/api/push/INTLPushResult;-><init>(I)V

    const/16 v1, 0x197

    iput v1, v0, Lcom/intlgame/api/push/INTLPushResult;->method_id_:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"notificationID\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"title\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->title_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"body\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->content_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"actionType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->actionType_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \"actionParameter\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->actionParameter_:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/intlgame/api/push/INTLPushResult;->notification_:Ljava/lang/String;

    sget-object p1, Lcom/intlgame/api/push/INTLPushType;->LOCAL_NOTIFICATION_FOREGROUND:Lcom/intlgame/api/push/INTLPushType;

    invoke-virtual {p1}, Lcom/intlgame/api/push/INTLPushType;->getValue()I

    move-result p1

    iput p1, v0, Lcom/intlgame/api/push/INTLPushResult;->type_:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " local notification foreground success "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p1, 0x192

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, " local notification foreground success, but INTLSDK is not loaded "

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportLocalNotificationForeground error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showNotification(Lcom/intlgame/api/push/INTLLocalNotification;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationDetails :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/push/INTLLocalNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->removeNotificationFromCache(Lcom/intlgame/api/push/INTLLocalNotification;)V

    iget-object v0, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->getNotificationIntent(Landroid/content/Context;Lcom/intlgame/api/push/INTLLocalNotification;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "createNotification intent is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager;->createNotificationChannel(Lcom/intlgame/api/push/INTLLocalNotification;)V

    invoke-direct {p0, p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager;->createNotification(Lcom/intlgame/api/push/INTLLocalNotification;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/push/LocalNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/intlgame/core/push/LocalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    iget v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    :cond_1
    iget p1, p1, Lcom/intlgame/api/push/INTLLocalNotification;->notificationID_:I

    invoke-virtual {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method
