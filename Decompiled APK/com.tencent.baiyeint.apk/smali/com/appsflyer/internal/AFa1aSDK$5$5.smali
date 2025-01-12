.class final Lcom/appsflyer/internal/AFa1aSDK$5$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFa1aSDK$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5;

.field private synthetic values:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1aSDK$5;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->values:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->valueOf:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->values:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;->AFKeystoreWrapper(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Listener thrown an exception: "

    invoke-static {v2, v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->AFKeystoreWrapper:Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK$5$5;->AFInAppEventType:Lcom/appsflyer/internal/AFa1aSDK$5;

    iput-boolean v1, v0, Lcom/appsflyer/internal/AFa1aSDK$5;->valueOf:Z

    return-void
.end method
