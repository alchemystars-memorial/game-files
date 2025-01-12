.class Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;
.super Ljava/lang/Object;
.source "DmmPaymentFragment.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->onErrorCommand(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->NOT_LOGIN:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    invoke-interface {p1, p2, p3}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onError(Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;)V

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V
    .locals 0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->NOT_LOGIN:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    invoke-interface {p1, p2, p3}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onError(Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;)V

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->access$000(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-static {p2, p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->access$100(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;Landroid/webkit/WebView;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->NOT_LOGIN:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onError(Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;)V

    :cond_2
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
