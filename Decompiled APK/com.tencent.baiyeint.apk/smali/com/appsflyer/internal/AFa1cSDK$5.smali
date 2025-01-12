.class final Lcom/appsflyer/internal/AFa1cSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1cSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/AFa1cSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1cSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1cSDK;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1cSDK;I)I

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFa1cSDK;->values:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1cSDK$5;->values:Lcom/appsflyer/internal/AFa1cSDK;

    invoke-static {v5}, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1cSDK;)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
