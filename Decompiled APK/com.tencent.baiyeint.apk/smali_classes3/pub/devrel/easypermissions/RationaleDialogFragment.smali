.class public Lpub/devrel/easypermissions/RationaleDialogFragment;
.super Landroid/app/DialogFragment;
.source "RationaleDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragment"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

.field private mStateSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;
    .locals 9

    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogFragment;

    invoke-direct {v0}, Lpub/devrel/easypermissions/RationaleDialogFragment;-><init>()V

    new-instance v8, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    invoke-virtual {v8}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    :cond_0
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    :cond_1
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    :cond_2
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_3

    check-cast p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setCancelable(Z)V

    new-instance p1, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-direct {v0, p0, p1, v1, v2}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createFrameworkDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lpub/devrel/easypermissions/RationaleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
