.class Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;
.super Ljava/lang/Object;
.source "DmmOlgIdProfileRegisterWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$400(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-static {v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$400(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-static {v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$300(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x8b4a6

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
