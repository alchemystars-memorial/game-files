.class final Lcom/appsflyer/internal/AFb1xSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1xSDK;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1fSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFb1xSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->valueOf:Lcom/appsflyer/internal/AFb1xSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1fSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->valueOf:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v2

    const-string v3, "newGPReferrerSent"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1fSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFe1hSDK;->afRDLog:Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;

    sget-object v4, Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;->values:Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v1, v5

    :cond_0
    if-ne v2, v5, :cond_3

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->valueOf:Lcom/appsflyer/internal/AFb1xSDK;

    new-instance v1, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFe1vSDK;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK$1;->valueOf:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_2
    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;)V

    :cond_3
    return-void
.end method
