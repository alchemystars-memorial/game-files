.class final Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;
.super Ljava/lang/Object;
.source "DialogPresenter.kt"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/DialogPresenter;->startActivityForResultWithAndroidX(Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Landroid/util/Pair;",
        "",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "onActivityResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callbackManager:Lcom/facebook/CallbackManager;

.field final synthetic $launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $requestCode:I


# direct methods
.method constructor <init>(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$callbackManager:Lcom/facebook/CallbackManager;

    iput p2, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$requestCode:I

    iput-object p3, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$callbackManager:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    check-cast v0, Lcom/facebook/CallbackManager;

    :cond_0
    iget v1, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$requestCode:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "result.first"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    iget-object p1, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object v0, p0, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->$launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/activity/result/ActivityResultLauncher;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;->onActivityResult(Landroid/util/Pair;)V

    return-void
.end method
