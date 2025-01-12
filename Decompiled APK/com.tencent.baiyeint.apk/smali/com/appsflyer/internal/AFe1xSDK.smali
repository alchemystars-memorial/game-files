.class public final Lcom/appsflyer/internal/AFe1xSDK;
.super Lcom/appsflyer/internal/AFa1tSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/appsflyer/internal/AFa1tSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFe1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    return-object p1
.end method

.method public final values()Lcom/appsflyer/internal/AFc1kSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/AFc1kSDK;

    return-object v0
.end method
