.class public Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;
.super Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;
.source "INTLDmmAuthFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TYPE:Ljava/lang/String;

.field public static final FRAGMENT_TYPE_LOGIN:I

.field public static final FRAGMENT_TYPE_REGISTER:I


# instance fields
.field private mActivityTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#FRAGMENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Login:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    invoke-virtual {v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->ordinal()I

    move-result v0

    sput v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_LOGIN:I

    sget-object v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Register:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    invoke-virtual {v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->ordinal()I

    move-result v0

    sput v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_REGISTER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->mActivityTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->callbackToLauncherActivity()V

    return-void
.end method

.method private callbackToLauncherActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public authorizedFormError(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/intlgame/dmm/R$string;->error_network_message:I

    invoke-virtual {p0, v2}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getErrorCode()I

    move-result v1

    const-string v2, "error_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x3a3a3

    invoke-virtual {p0, p1, v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->callbackToLauncherActivity()V

    return-void
.end method

.method public authorizedSuccess(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/intlgame/dmm/R$string;->dmm_olgid_sdk_toast_success_registered:I

    invoke-virtual {p0, v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->callbackToLauncherActivity()V

    return-void
.end method

.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->mActivityTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;-><init>(Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->setResult(I)V

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE:Ljava/lang/String;

    sget v2, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_LOGIN:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isAdult()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_REGISTER:I

    :cond_0
    sget-object v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Login:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    sget v3, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_REGISTER:I

    if-ne v1, v3, :cond_1

    sget-object v0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Register:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    :cond_1
    sget-object v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Login:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-direct {v0, p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$2;

    invoke-direct {v1, p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$2;-><init>(Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->launchLoginScreenForIntent(ZLcom/dmm/android/lib/auth/AuthenticationListener;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;->Register:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$FragmentValue$Type;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-direct {v0, p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$3;

    invoke-direct {v1, p0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$3;-><init>(Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->launchRegisterScreen(ZLcom/dmm/android/lib/auth/AuthenticationListener;)V

    :cond_3
    :goto_0
    return-void
.end method
