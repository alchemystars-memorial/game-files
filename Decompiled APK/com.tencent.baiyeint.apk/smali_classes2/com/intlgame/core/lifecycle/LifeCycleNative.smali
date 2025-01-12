.class public Lcom/intlgame/core/lifecycle/LifeCycleNative;
.super Ljava/lang/Object;
.source "LifeCycleNative.java"

# interfaces
.implements Lcom/intlgame/core/interfaces/ILifeCycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doOnCreateTask(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    invoke-static {p1}, Lcom/intlgame/tools/IT;->bundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/intlgame/tools/IT;->bundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/intlgame/core/lifecycle/LifeCycleNative;->onCreate([B)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/LifeCycleNative;->doOnCreateTask(Landroid/os/Bundle;)V

    return-void
.end method

.method public native onCreate([B)V
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/LifeCycleNative;->doOnCreateTask(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public native onPause()V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public native onResume()V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public native onStart()V
.end method

.method public native onStop()V
.end method
