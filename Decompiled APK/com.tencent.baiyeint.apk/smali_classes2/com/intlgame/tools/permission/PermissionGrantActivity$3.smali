.class Lcom/intlgame/tools/permission/PermissionGrantActivity$3;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Lcom/intlgame/api/INTLResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity;->autoRetryRequestPerm([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intlgame/api/INTLResultCallback<",
        "Lcom/intlgame/api/INTLResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$deniedPermissions:[Ljava/lang/String;

.field final synthetic val$resultListener:Lcom/intlgame/api/INTLResultCallback;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/app/AlertDialog$Builder;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iput-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$deniedPermissions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTLSDK ret code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/intlgame/api/INTLResult;->ret_code_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    iget v0, p1, Lcom/intlgame/api/INTLResult;->ret_code_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$300(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "INTLSDK_SHOW_PERMISSION_WARNING_AGAIN"

    invoke-static {p1, v1, v0}, Lcom/intlgame/tools/MetaDataUtils;->readFromApplication(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-static {p1, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$400(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-virtual {p1, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->requestPerms(Lcom/intlgame/api/INTLResultCallback;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/intlgame/api/INTLResult;->ret_code_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$deniedPermissions:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$500(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v2}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    new-instance v0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;

    invoke-direct {v0, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity$3$1;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity$3;)V

    invoke-static {p1, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$800(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    invoke-interface {v0, p1}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    :goto_0
    return-void
.end method
