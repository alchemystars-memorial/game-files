.class final Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/AuthActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dmm/android/lib/auth/AuthActivity$onResume$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/dmm/android/lib/auth/AuthActivity;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v3}, Lcom/dmm/android/lib/auth/AuthActivity;->access$getConfig$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v4}, Lcom/dmm/android/lib/auth/AuthActivity;->access$getConfig$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dmm/android/lib/auth/Config;->getResumeLoginClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->$uri:Landroid/net/Uri;

    const-string v3, "code"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "dmm_auth_code"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity$onResume$$inlined$let$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivity;->finish()V

    return-void
.end method
