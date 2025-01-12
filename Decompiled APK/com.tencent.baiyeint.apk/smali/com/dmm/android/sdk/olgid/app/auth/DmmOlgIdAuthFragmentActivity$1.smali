.class Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$1;
.super Ljava/lang/Object;
.source "DmmOlgIdAuthFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;
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

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->setResult(I)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/DmmOlgIdAuthFragmentActivity;->finish()V

    return-void
.end method
