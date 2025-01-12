.class public final Lcom/appsflyer/internal/AFd1tSDK;
.super Lcom/appsflyer/internal/AFc1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1lSDK<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFb1pSDK;

.field private afRDLog:Lcom/appsflyer/deeplink/DeepLinkResult;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFb1pSDK;)V
    .locals 4

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->afRDLog:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DdlSdk"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1lSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1tSDK;->AFLogger:Lcom/appsflyer/internal/AFb1pSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1tSDK;->AFLogger:Lcom/appsflyer/internal/AFb1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger()Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v0, Lcom/appsflyer/internal/AFd1tSDK$2;->AFKeystoreWrapper:[I

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1tSDK;->afRDLog:Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-virtual {v0}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final values()J
    .locals 2

    const-wide/32 v0, 0x15f90

    return-wide v0
.end method
