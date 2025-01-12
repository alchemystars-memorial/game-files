.class Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;
.super Ljava/lang/Object;
.source "DmmOpenSocialApiImpl.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->connectSync()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

.field final synthetic val$response:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$response:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;)V
    .locals 1

    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$response:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Cancel:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {p1, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$response:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-virtual {p1, p2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setFrom(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method public onSuccess(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$response:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-virtual {p1, p2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setFrom(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method
