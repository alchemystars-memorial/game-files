.class public Lcom/intlgame/AdjustLifeCycleObserver;
.super Ljava/lang/Object;
.source "AdjustLifeCycleObserver.java"

# interfaces
.implements Lcom/intlgame/core/interfaces/ILifeCycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-boolean v0, Lcom/intlgame/analytics/AdjustAnalytics;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "adjust initialized"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-boolean v0, Lcom/intlgame/analytics/AdjustAnalytics;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "adjust initialized"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
