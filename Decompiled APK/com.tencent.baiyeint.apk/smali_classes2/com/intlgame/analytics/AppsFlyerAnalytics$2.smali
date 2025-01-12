.class Lcom/intlgame/analytics/AppsFlyerAnalytics$2;
.super Ljava/lang/Object;
.source "AppsFlyerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/analytics/AppsFlyerAnalytics;->appsFlyerStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/analytics/AppsFlyerAnalytics;


# direct methods
.method constructor <init>(Lcom/intlgame/analytics/AppsFlyerAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/analytics/AppsFlyerAnalytics$2;->this$0:Lcom/intlgame/analytics/AppsFlyerAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
