.class Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

.field final synthetic val$launcherHolder:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->this$0:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->val$launcherHolder:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->this$0:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-static {v0}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->access$300(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;)Lcom/facebook/CallbackManager;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v1}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    iget-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->val$launcherHolder:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;

    invoke-static {p1}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->access$200(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->val$launcherHolder:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;

    invoke-static {p1}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->access$200(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->val$launcherHolder:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->access$202(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;Landroidx/activity/result/ActivityResultLauncher;)Landroidx/activity/result/ActivityResultLauncher;

    :cond_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$2;->onActivityResult(Landroid/util/Pair;)V

    return-void
.end method
