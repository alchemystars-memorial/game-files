.class Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;
.super Ljava/lang/Object;
.source "DmmOlgIdProfileRegisterWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$code:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$body:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$key:Ljava/lang/String;

    iput p5, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;

    invoke-direct {v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;-><init>()V

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$002(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$body:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$102(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$202(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;Ljava/lang/String;)Ljava/lang/String;

    iget v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;->val$code:I

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->access$302(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;I)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
