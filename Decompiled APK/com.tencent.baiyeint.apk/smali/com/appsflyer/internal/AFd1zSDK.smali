.class public final Lcom/appsflyer/internal/AFd1zSDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1aSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final afRDLog:Ljava/lang/String;

.field private final getLevel:Lcom/appsflyer/internal/AFb1oSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFb1oSDK;)V
    .locals 4

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/appsflyer/internal/AFc1aSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1zSDK;->afRDLog:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/internal/AFd1zSDK;->getLevel:Lcom/appsflyer/internal/AFb1oSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 4

    invoke-super {p0}, Lcom/appsflyer/internal/AFc1aSDK;->AFInAppEventParameterName()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1zSDK;->afRDLog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cross promotion redirection success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1zSDK;->afRDLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1zSDK;->getLevel:Lcom/appsflyer/internal/AFb1oSDK;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iput-object v0, v1, Lcom/appsflyer/internal/AFb1oSDK;->values:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1zSDK;->getLevel:Lcom/appsflyer/internal/AFb1oSDK;

    iget-object v1, v0, Lcom/appsflyer/internal/AFb1oSDK;->AFKeystoreWrapper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, v0, Lcom/appsflyer/internal/AFb1oSDK;->values:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1oSDK;->values:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to open cross promotion url, does OS have browser installed?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cross promotion impressions success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1zSDK;->afRDLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected final AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1uSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1zSDK;->afRDLog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    return-object p1
.end method

.method protected final afDebugLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final afRDLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
