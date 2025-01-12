.class Lcom/intlgame/tools/permission/PermissionGrantActivity$4;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity;->createCustomDialog(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

.field final synthetic val$jumpSettingType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iput-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->val$jumpSettingType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->val$jumpSettingType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "detail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$900(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-virtual {p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-virtual {p2, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
