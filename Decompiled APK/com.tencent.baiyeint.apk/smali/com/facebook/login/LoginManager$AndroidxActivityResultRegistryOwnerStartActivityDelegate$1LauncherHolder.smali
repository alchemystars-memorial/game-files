.class Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherHolder"
.end annotation


# instance fields
.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->this$0:Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$202(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;Landroidx/activity/result/ActivityResultLauncher;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$1LauncherHolder;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p1
.end method
