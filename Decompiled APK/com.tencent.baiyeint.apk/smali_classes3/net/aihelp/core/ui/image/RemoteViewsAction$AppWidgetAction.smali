.class Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;
.super Lnet/aihelp/core/ui/image/RemoteViewsAction;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWidgetAction"
.end annotation


# instance fields
.field private final appWidgetIds:[I


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;I[IIILjava/lang/String;Ljava/lang/Object;ILnet/aihelp/core/ui/image/Callback;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p10

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/RemoteViewsAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V

    move-object/from16 v1, p5

    iput-object v1, v0, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;->appWidgetIds:[I

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
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v0, v0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;->appWidgetIds:[I

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method
