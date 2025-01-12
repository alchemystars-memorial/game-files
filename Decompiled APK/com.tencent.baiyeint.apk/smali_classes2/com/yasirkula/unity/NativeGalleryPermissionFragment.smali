.class public Lcom/yasirkula/unity/NativeGalleryPermissionFragment;
.super Landroid/app/Fragment;
.source "NativeGalleryPermissionFragment.java"


# static fields
.field public static final MEDIA_TYPE_ID:Ljava/lang/String; = "NG_MediaType"

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1e307

.field public static final READ_PERMISSION_ONLY:Ljava/lang/String; = "NG_ReadOnly"


# instance fields
.field private final permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permissionReceiver"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;

    const/4 v0, 0x0

    const v1, 0x1e307

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    invoke-virtual {p0, v1, p1, v0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "NG_ReadOnly"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge p1, v3, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v3, :cond_2

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    invoke-virtual {p0, v1, p1, v0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    :cond_3
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const v0, 0x1e307

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;

    const-string v0, "Unity"

    if-nez p1, :cond_1

    const-string p1, "Fragment data got reset while asking permissions!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length p1, p3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    move v3, v2

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    array-length v4, p3

    if-ge v3, v4, :cond_5

    aget v4, p3, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    aget-object p1, p2, v3

    invoke-virtual {p0, p1}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move p1, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, p1

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;

    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeGalleryPermissionReceiver;->OnPermissionResult(I)V

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Exception (resume):"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
