.class Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;
.super Ljava/lang/Object;
.source "DmmPaymentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    move-result-object v0

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->access$000(Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onCancel(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
