.class public Lcom/tdatamaster/tdm/gcloud/lifecycle/PluginReportLifecycle;
.super Ljava/lang/Object;
.source "PluginReportLifecycle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tdatamaster/tdm/TDataMaster;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tdatamaster/tdm/TDataMaster;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getInstance()Lcom/tdatamaster/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/TDataMaster;->onStop()V

    return-void
.end method
