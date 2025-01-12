.class public abstract Lcom/gcore/gcloud/plugin/GCloudAppLifecycleObserver;
.super Ljava/lang/Object;
.source "GCloudAppLifecycleObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->Instance:Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;

    invoke-virtual {v0, p0}, Lcom/gcore/gcloud/plugin/GCloudAppLifecycle;->addObserver(Lcom/gcore/gcloud/plugin/GCloudAppLifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
