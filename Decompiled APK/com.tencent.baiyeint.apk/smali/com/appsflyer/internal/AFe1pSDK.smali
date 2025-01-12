.class public final Lcom/appsflyer/internal/AFe1pSDK;
.super Lcom/appsflyer/internal/AFa1tSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1tSDK;-><init>()V

    return-void
.end method


# virtual methods
.method public final values()Lcom/appsflyer/internal/AFc1kSDK;
    .locals 2

    iget v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    return-object v0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    return-object v0
.end method
