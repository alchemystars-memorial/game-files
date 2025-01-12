.class Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$deniedPermissions:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$500(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p2, v0, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$deniedPermissions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object v0, v0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object v0, v0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;->this$2:Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    iget-object v1, v1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object v1, v1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-static {p1, p2, v0, v1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$200(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V

    :goto_0
    return-void
.end method
