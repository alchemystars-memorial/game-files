.class Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->onResult(Lcom/intlgame/api/INTLResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$deniedPermissions:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$500(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const-string v1, ""

    invoke-direct {v0, p2, p2, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$300(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "INTLSDK_SHOW_PERMISSION_WARNING_AGAIN"

    invoke-static {p1, v0, p2}, Lcom/intlgame/tools/MetaDataUtils;->readFromApplication(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$700(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$600(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "intl_permission_confirm"

    const-string v1, "string"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;

    invoke-direct {v0, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1$1;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p2, p2, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-static {p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$400(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;->this$1:Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    iget-object p1, p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p1, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$800(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method
