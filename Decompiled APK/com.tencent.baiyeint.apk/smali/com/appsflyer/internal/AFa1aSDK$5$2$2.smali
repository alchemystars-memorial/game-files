.class final Lcom/appsflyer/internal/AFa1aSDK$5$2$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFa1aSDK$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/content/Context;

.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5$2;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1aSDK$5$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5$2;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5$2;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK$5;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->valueOf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5$2;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK$5;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->AFKeystoreWrapper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5$2;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK$5;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->valueOf:Z

    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK$5$2$2;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;->AFKeystoreWrapper(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Listener threw exception! "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
