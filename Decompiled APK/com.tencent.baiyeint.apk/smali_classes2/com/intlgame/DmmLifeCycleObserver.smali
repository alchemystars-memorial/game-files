.class public Lcom/intlgame/DmmLifeCycleObserver;
.super Ljava/lang/Object;
.source "DmmLifeCycleObserver.java"

# interfaces
.implements Lcom/intlgame/core/interfaces/ILifeCycle;


# static fields
.field public static final DMM_LOGIN_CALLBACK_KEY:I = 0xa

.field public static final mActivityMessageQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/intlgame/core/interfaces/IActivityEventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/IActivityEventHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/intlgame/core/interfaces/IActivityEventHandler;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/IActivityEventHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/intlgame/core/interfaces/IActivityEventHandler;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/interfaces/IActivityEventHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/intlgame/core/interfaces/IActivityEventHandler;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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
