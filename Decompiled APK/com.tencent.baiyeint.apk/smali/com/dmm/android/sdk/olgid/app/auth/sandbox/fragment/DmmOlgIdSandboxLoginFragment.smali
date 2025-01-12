.class public Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;
.super Landroidx/fragment/app/Fragment;
.source "DmmOlgIdSandboxLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$Preference;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_FORMAT:Ljava/lang/String; = "\u30a8\u30e9\u30fc\u30b3\u30fc\u30c9\uff1a%d\n%s"

.field private static final GRADE_GUEST:Ljava/lang/String; = "1"


# instance fields
.field private mAnnounce:Landroid/widget/TextView;

.field private mIsSaveLoginInfo:Landroid/widget/CheckBox;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUserId:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->showProgressDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mUserId:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mIsSaveLoginInfo:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->isGuestSandboxUser(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->saveLoginInfo(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mAnnounce:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->dismissProgressDialog()V

    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLoginInfo()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$Preference;->NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "login_user_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "login_password"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static isGuestSandboxUser(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSavedLoginInfo()Z
    .locals 3

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$Preference;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "is_save_login_info"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private saveLoginInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$Preference;->NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_save_login_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    const-string p1, "login_user_id"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "login_password"

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private declared-synchronized showProgressDialog()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_sandbox_login_connecting:I

    invoke-virtual {p0, v1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget v0, Lcom/dmm/android/sdk/olgid/R$layout;->dmm_olgid_sdk_fragment_sandbox_login:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_sandbox_login_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_sandbox_login_announce:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mAnnounce:Landroid/widget/TextView;

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_sandbox_login_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mUserId:Landroid/widget/EditText;

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_sandbox_login_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mPassword:Landroid/widget/EditText;

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_sandbox_login_checkbox_save_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mIsSaveLoginInfo:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->isSavedLoginInfo()Z

    move-result v0

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mIsSaveLoginInfo:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getLoginInfo()Ljava/util/Map;

    move-result-object v0

    const-string v2, "login_user_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    const-string v4, "login_password"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mUserId:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
