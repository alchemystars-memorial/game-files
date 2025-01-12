.class public Lcom/intlgame/api/push/INTLPush;
.super Ljava/lang/Object;
.source "INTLPush.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addLocalNotification(Ljava/lang/String;Lcom/intlgame/api/push/INTLLocalNotification;)V
.end method

.method public static native clearLocalNotifications(Ljava/lang/String;)V
.end method

.method public static native deleteTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native registerPush(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setPushObserver(Lcom/intlgame/api/push/INTLPushObserver;)V
.end method

.method public static native setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native unregisterPush(Ljava/lang/String;)V
.end method
