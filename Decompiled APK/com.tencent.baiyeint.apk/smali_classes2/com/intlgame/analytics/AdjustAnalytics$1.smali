.class Lcom/intlgame/analytics/AdjustAnalytics$1;
.super Ljava/lang/Object;
.source "AdjustAnalytics.java"

# interfaces
.implements Lcom/adjust/sdk/OnDeeplinkResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/analytics/AdjustAnalytics;->setDeepLinking(Lcom/adjust/sdk/AdjustConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/analytics/AdjustAnalytics;


# direct methods
.method constructor <init>(Lcom/intlgame/analytics/AdjustAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/analytics/AdjustAnalytics$1;->this$0:Lcom/intlgame/analytics/AdjustAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchReceivedDeeplink(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ADJUST_DEFERED_REATTRIBUTION"

    invoke-static {v1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    const-string v1, "AdjustAnalytics"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "adjust defer reattribution is disabled"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust open deep link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    const-string p1, "ADJUST_OPEN_DEEPLINK_ENABLE"

    invoke-static {p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
