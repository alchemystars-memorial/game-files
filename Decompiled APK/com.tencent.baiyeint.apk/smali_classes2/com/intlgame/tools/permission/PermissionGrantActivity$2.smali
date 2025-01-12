.class Lcom/intlgame/tools/permission/PermissionGrantActivity$2;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity;->requestPermsWithDialog(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$deniedPermissions:[Ljava/lang/String;

.field final synthetic val$resultListener:Lcom/intlgame/api/INTLResultCallback;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iput-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$deniedPermissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    iput-object p4, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$deniedPermissions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$resultListener:Lcom/intlgame/api/INTLResultCallback;

    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-static {p1, p2, v0, v1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$200(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V

    :cond_0
    return-void
.end method
