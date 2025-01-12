.class Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;
.super Ljava/lang/Object;
.source "DmmOlgIdSandboxLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->setResult(I)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->finish()V

    return-void
.end method
