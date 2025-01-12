.class public final Lcom/appsflyer/internal/AFe1ySDK;
.super Lcom/appsflyer/internal/AFa1tSDK;
.source ""


# instance fields
.field public final getLevel:Lcom/appsflyer/internal/AFc1kSDK;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1tSDK;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1ySDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFc1kSDK;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, v1}, Lcom/appsflyer/internal/AFa1tSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1tSDK;->values([B)Lcom/appsflyer/internal/AFa1tSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFe1ySDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    return-void
.end method


# virtual methods
.method public final values()Lcom/appsflyer/internal/AFc1kSDK;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1ySDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    return-object v0
.end method
