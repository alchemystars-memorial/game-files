.class public Lnet/aihelp/core/util/permission/AIHelpPermissions;
.super Ljava/lang/Object;
.source "AIHelpPermissions.java"


# static fields
.field private static sInstance:Lnet/aihelp/core/util/permission/AIHelpPermissions;


# instance fields
.field private helper:Lnet/aihelp/core/util/permission/PermissionHelper;

.field private object:Ljava/lang/Object;

.field private permission:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->requestCode:I

    return-void
.end method

.method public static getInstance()Lnet/aihelp/core/util/permission/AIHelpPermissions;
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->sInstance:Lnet/aihelp/core/util/permission/AIHelpPermissions;

    if-nez v0, :cond_1

    const-class v0, Lnet/aihelp/core/util/permission/PermissionHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/aihelp/core/util/permission/AIHelpPermissions;->sInstance:Lnet/aihelp/core/util/permission/AIHelpPermissions;

    if-nez v1, :cond_0

    new-instance v1, Lnet/aihelp/core/util/permission/AIHelpPermissions;

    invoke-direct {v1}, Lnet/aihelp/core/util/permission/AIHelpPermissions;-><init>()V

    sput-object v1, Lnet/aihelp/core/util/permission/AIHelpPermissions;->sInstance:Lnet/aihelp/core/util/permission/AIHelpPermissions;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->sInstance:Lnet/aihelp/core/util/permission/AIHelpPermissions;

    return-object v0
.end method


# virtual methods
.method public onRequestPermissionsResult(Z)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/permission/PermissionHelper;->onRequestPermissionsResult(Z)V

    :cond_0
    return-void
.end method

.method public request()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->object:Ljava/lang/Object;

    iget-object v1, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->permission:Ljava/lang/String;

    iget v2, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->requestCode:I

    invoke-static {v0, v1, v2}, Lnet/aihelp/core/util/permission/PermissionHelper;->getInstance(Ljava/lang/Object;Ljava/lang/String;I)Lnet/aihelp/core/util/permission/PermissionHelper;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    sget-object v0, Lnet/aihelp/core/util/permission/AIHelpPermissions$1;->$SwitchMap$net$aihelp$core$util$permission$Permission$State:[I

    iget-object v1, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    invoke-virtual {v1}, Lnet/aihelp/core/util/permission/PermissionHelper;->checkPermissionState()Lnet/aihelp/core/util/permission/Permission$State;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/util/permission/Permission$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    invoke-virtual {v0}, Lnet/aihelp/core/util/permission/PermissionHelper;->requestPermission()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    sget-object v1, Lnet/aihelp/core/util/permission/Permission$Result;->RATIONAL:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    sget-object v1, Lnet/aihelp/core/util/permission/Permission$Result;->NONE:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->helper:Lnet/aihelp/core/util/permission/PermissionHelper;

    sget-object v1, Lnet/aihelp/core/util/permission/Permission$Result;->GRANTED:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    :goto_0
    return-void
.end method

.method public requestPermissions(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setHost(Ljava/lang/Object;)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setRequestPermission(Ljava/lang/String;)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setRequestCode(I)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->request()V

    return-void
.end method

.method public setHost(Ljava/lang/Object;)Lnet/aihelp/core/util/permission/AIHelpPermissions;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public setRequestCode(I)Lnet/aihelp/core/util/permission/AIHelpPermissions;
    .locals 0

    iput p1, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->requestCode:I

    return-object p0
.end method

.method public setRequestPermission(Ljava/lang/String;)Lnet/aihelp/core/util/permission/AIHelpPermissions;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/permission/AIHelpPermissions;->permission:Ljava/lang/String;

    return-object p0
.end method
