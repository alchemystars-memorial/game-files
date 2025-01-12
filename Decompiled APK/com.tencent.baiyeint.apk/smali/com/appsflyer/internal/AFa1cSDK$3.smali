.class final Lcom/appsflyer/internal/AFa1cSDK$3;
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
.field private synthetic valueOf:Lcom/appsflyer/internal/AFa1cSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1cSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1cSDK$3;->valueOf:Lcom/appsflyer/internal/AFa1cSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1cSDK$3;->valueOf:Lcom/appsflyer/internal/AFa1cSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK$3;->valueOf:Lcom/appsflyer/internal/AFa1cSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Landroid/os/Handler;

    new-instance v3, Lcom/appsflyer/internal/AFa1cSDK$10;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/AFa1cSDK$10;-><init>(Lcom/appsflyer/internal/AFa1cSDK;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
