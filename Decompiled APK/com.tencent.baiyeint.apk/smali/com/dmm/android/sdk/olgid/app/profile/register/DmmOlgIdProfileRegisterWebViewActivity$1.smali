.class Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;
.super Ljava/lang/Object;
.source "DmmOlgIdProfileRegisterWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->setResult(I)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->finish()V

    return-void
.end method
