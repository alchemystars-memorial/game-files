.class final Lcom/appsflyer/internal/AFb1pSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1pSDK;->AFLogger()Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFb1pSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK$3;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK$3;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1pSDK;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK$3;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1pSDK;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK$3;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFb1pSDK;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK$3;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1pSDK;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    return-object v0
.end method
