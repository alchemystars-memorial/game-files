.class Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;
.super Ljava/lang/Object;
.source "DmmOlgIdAuthFragmentActivity.java"

# interfaces
.implements Lcom/dmm/android/lib/auth/AuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->access$000(Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;)V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->authorizedFormError(Lcom/dmm/android/lib/auth/model/HttpError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$3;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->authorizedSuccess(Ljava/lang/String;)V

    return-void
.end method
