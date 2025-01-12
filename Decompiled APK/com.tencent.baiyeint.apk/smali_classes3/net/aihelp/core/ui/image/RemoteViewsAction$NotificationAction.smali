.class Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;
.super Lnet/aihelp/core/ui/image/RemoteViewsAction;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationAction"
.end annotation


# instance fields
.field private final notification:Landroid/app/Notification;

.field private final notificationId:I

.field private final notificationTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;ILnet/aihelp/core/ui/image/Callback;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p12

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p10

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/RemoteViewsAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V

    move/from16 v0, p5

    iput v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notificationId:I

    move-object/from16 v0, p7

    iput-object v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notificationTag:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method bridge synthetic getTarget()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->getTarget()Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    move-result-object v0

    return-object v0
.end method

.method update()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v0, v0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-static {v0, v1}, Lnet/aihelp/core/ui/image/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notificationTag:Ljava/lang/String;

    iget v2, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notificationId:I

    iget-object v3, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
