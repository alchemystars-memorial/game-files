.class Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;
.super Ljava/lang/Object;
.source "DmmOpenSocialApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v2}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$002(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->release()V

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-interface {v0, v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onCancel(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
