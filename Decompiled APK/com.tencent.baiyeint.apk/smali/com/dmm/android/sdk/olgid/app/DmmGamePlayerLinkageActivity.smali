.class public final Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;
.super Landroid/app/Activity;
.source "DmmGamePlayerLinkageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_sandbox"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "sandbox_unique_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sandbox_secure_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sandbox_user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->getInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->logout()V

    invoke-virtual {v2, v0}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveSecureId(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveUserId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "unique_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "secure_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->createInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->logout()V

    invoke-virtual {v1, v0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->saveUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->saveSecureId(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/dmm/android/util/Util;->findLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/DmmGamePlayerLinkageActivity;->finish()V

    return-void
.end method
