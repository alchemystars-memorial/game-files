.class Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;
.super Ljava/lang/Object;
.source "DmmOlgIdSandboxLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$000(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$100(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$200(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$300(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getApplicationID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v3

    new-instance v4, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;

    invoke-direct {v4, p1, v0, v2}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;

    new-instance v5, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;

    invoke-direct {v5, p0, p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v2, v4, v5}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;)V

    invoke-virtual {v2}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest;->getRequest()Lcom/dmm/games/android/volley/toolbox/StringRequest;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void
.end method
