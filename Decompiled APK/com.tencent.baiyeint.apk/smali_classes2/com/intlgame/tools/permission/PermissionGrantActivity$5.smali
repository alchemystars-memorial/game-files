.class Lcom/intlgame/tools/permission/PermissionGrantActivity$5;
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


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$5;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$5;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->moveTaskToBack(Z)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    return-void
.end method
