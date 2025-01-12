.class public Lcom/tencent/baiye/MainActivity;
.super Lcom/h3d/base/MainActivityBase;
.source "MainActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
.implements Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;


# instance fields
.field private final RC_OBB_EXTERNAL_STORAGE:I

.field private mHasPatchOBB:Z

.field private mMainOBBMountPath:Ljava/lang/String;

.field private mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

.field private mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

.field private mOBBPermissionLock:Ljava/lang/Object;

.field private mPatchOBBMountPath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnmountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

.field private mUnmountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

.field private mUseGoogleOBB:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/h3d/base/MainActivityBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/baiye/MainActivity;->mUseGoogleOBB:Z

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mMainOBBMountPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mPatchOBBMountPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/baiye/MainActivity;->mHasPatchOBB:Z

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mUnmountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mUnmountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/baiye/MainActivity;->RC_OBB_EXTERNAL_STORAGE:I

    return-void
.end method

.method private CheckOBBAssetDataInfo(ZLcom/tencent/baiye/OBBStateHandler$OBBStateListener;)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/baiye/MainActivity;->mMainOBBMountPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/baiye/MainActivity;->mPatchOBBMountPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AssetDataInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-ne v8, v1, :cond_4

    if-eqz p1, :cond_1

    aget-object v6, v7, v3

    const-string v7, "PatchOBBIsExist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v2, p0, Lcom/tencent/baiye/MainActivity;->mHasPatchOBB:Z

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v6, p0, Lcom/tencent/baiye/MainActivity;->mHasPatchOBB:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Logic Error: AssetDataInfo doesn\'t contain Patch OBB\'s info."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v2

    :cond_4
    :try_start_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "AssetDataInfo\'s format has some errors: %s"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_9
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v5

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v4

    :try_start_d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    const-string p1, "Main"

    goto :goto_5

    :cond_5
    const-string p1, "Patch"

    :goto_5
    aput-object p1, v1, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s OBB\'s AssetDataInfo has some errors, need check: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v3
.end method

.method private GCloudSDKRequestDynamicPermissions()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method private GetOBBRawPath(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "main."

    goto :goto_0

    :cond_0
    const-string p1, "patch."

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".obb"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "obb"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "OBBPath fetch failed: %s \n%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "h3d"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "string"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private HandleOBBManualDownload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V
    .locals 1

    const-string v0, "h3d"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;->OnMountError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private UnlockOBBPermissionLock()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public GetOBBAccessPath(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/baiye/MainActivity;->mMainOBBMountPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/baiye/MainActivity;->mPatchOBBMountPath:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public HasPatchOBB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/baiye/MainActivity;->mHasPatchOBB:Z

    return v0
.end method

.method public InitOBBMount(Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)Z
    .locals 10

    iget-object v0, p0, Lcom/tencent/baiye/MainActivity;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mStorageManager is null!"

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/baiye/MainActivity;->GetOBBRawPath(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_c

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_0
    const-string v5, "h3d"

    const-string v6, "OBB\'s read has some errors, maybe caused as OBB file damaged or read authority denied. Try authorizing to solve: %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v4, Lpub/devrel/easypermissions/PermissionRequest$Builder;

    const/16 v6, 0x64

    invoke-direct {v4, p0, v6, v5}, Lpub/devrel/easypermissions/PermissionRequest$Builder;-><init>(Landroid/app/Activity;I[Ljava/lang/String;)V

    const-string v6, "rationale_read_external_storage"

    invoke-direct {p0, p0, v6}, Lcom/tencent/baiye/MainActivity;->GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object v4

    const-string v6, "rationale_ask_ok"

    invoke-direct {p0, p0, v6}, Lcom/tencent/baiye/MainActivity;->GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setPositiveButtonText(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object v4

    const-string v6, "rationale_ask_cancel"

    invoke-direct {p0, p0, v6}, Lcom/tencent/baiye/MainActivity;->GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setNegativeButtonText(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->build()Lpub/devrel/easypermissions/PermissionRequest;

    move-result-object v4

    invoke-static {v4}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v4, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v3, p0, Lcom/tencent/baiye/MainActivity;->mOBBPermissionLock:Ljava/lang/Object;

    invoke-static {p0, v5}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    const-string v5, "h3d"

    const-string v6, "User completed READ_EXTERNAL_STORAGE authorizing to OBB with the result %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "Throw exception when waiting for READ_EXTERNAL_STORAGE authorizing to OBB. - %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    monitor-exit v6

    return v1

    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    const-string v2, "Already authorized, but still failed. - %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :catch_3
    move-exception v4

    const-string v5, "Main OBB\'s file not exist, need handle downloading. - %s"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    invoke-direct {p0}, Lcom/tencent/baiye/MainActivity;->HandleOBBManualDownload()Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const-string v5, "h3d"

    const-string v6, "Main OBB\'s file info is %s."

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/res/ObbInfo;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v5, "h3d"

    const-string v6, "Main OBB\'s file info read error, need check!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v5, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x64

    if-nez v5, :cond_7

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;->OnBeginMount()V

    :cond_5
    new-instance v5, Lcom/tencent/baiye/OBBStateHandler;

    invoke-direct {v5}, Lcom/tencent/baiye/OBBStateHandler;-><init>()V

    iput-object v5, p0, Lcom/tencent/baiye/MainActivity;->mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v8, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v2, v3, v5}, Landroid/os/storage/StorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v3, "Main OBB\'s mounting request submit failed! Path - %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_6
    iget-object v5, p0, Lcom/tencent/baiye/MainActivity;->mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v5, v5, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v8, p0, Lcom/tencent/baiye/MainActivity;->mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v8, v8, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iput-object v3, p0, Lcom/tencent/baiye/MainActivity;->mMountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception v2

    :try_start_6
    const-string v3, "Throw exception when waiting for Main OBB\'s mounting process. - %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    monitor-exit v5

    return v1

    :goto_4
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_7
    :goto_5
    :try_start_7
    iget-object v5, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/baiye/MainActivity;->mMainOBBMountPath:Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string v5, ""

    if-eq v2, v5, :cond_13

    const-string v5, "h3d"

    const-string v8, "Main OBB mounted successfully with the path: %s"

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->CheckOBBAssetDataInfo(ZLcom/tencent/baiye/OBBStateHandler$OBBStateListener;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Lcom/tencent/baiye/MainActivity;->mHasPatchOBB:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, v1}, Lcom/tencent/baiye/MainActivity;->GetOBBRawPath(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_b

    :cond_9
    :try_start_8
    invoke-static {v2}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v5

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    const-string v8, "Patch OBB\'s file not exist, need handle downloading. - %s"

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    invoke-direct {p0}, Lcom/tencent/baiye/MainActivity;->HandleOBBManualDownload()Z

    move-result v5

    if-nez v5, :cond_a

    return v1

    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    const-string v5, "h3d"

    const-string v8, "Patch OBB\'s file info is %s."

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/res/ObbInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    const-string v4, "h3d"

    const-string v5, "Patch OBB\'s file info read error, need check!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v4, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v2}, Landroid/os/storage/StorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;->OnBeginMount()V

    :cond_c
    new-instance v4, Lcom/tencent/baiye/OBBStateHandler;

    invoke-direct {v4}, Lcom/tencent/baiye/OBBStateHandler;-><init>()V

    iput-object v4, p0, Lcom/tencent/baiye/MainActivity;->mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v5, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/storage/StorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v3, "Patch OBB\'s mounting request submit failed! Path - %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_d
    iget-object v4, p0, Lcom/tencent/baiye/MainActivity;->mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v4, v4, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    iget-object v5, p0, Lcom/tencent/baiye/MainActivity;->mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    iget-object v5, v5, Lcom/tencent/baiye/OBBStateHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    iput-object v3, p0, Lcom/tencent/baiye/MainActivity;->mMountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_9

    :catch_7
    move-exception v2

    :try_start_b
    const-string v3, "Throw exception when waiting for Patch OBB\'s mounting process. - %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    monitor-exit v4

    return v1

    :goto_9
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p1

    :cond_e
    :goto_a
    :try_start_c
    iget-object v3, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/baiye/MainActivity;->mPatchOBBMountPath:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v3, ""

    if-eq v2, v3, :cond_f

    const-string v3, "h3d"

    const-string v4, "Patch OBB mounted successfully with the path: %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    invoke-direct {p0, v1, p1}, Lcom/tencent/baiye/MainActivity;->CheckOBBAssetDataInfo(ZLcom/tencent/baiye/OBBStateHandler$OBBStateListener;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_f
    :try_start_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Get Patch OBB\'s access path failed as mounting failed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    move-exception v2

    const-string v3, "Patch OBB\'s mounting status has some errors, need check: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_10
    :goto_b
    const-string v0, "Patch OBB\'s path is empty or null."

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_11
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;->OnFinishMount()V

    :cond_12
    iput-boolean v0, p0, Lcom/tencent/baiye/MainActivity;->mUseGoogleOBB:Z

    return v0

    :cond_13
    :try_start_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Get Main OBB\'s access path failed as mounting failed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :catch_9
    move-exception v2

    const-string v3, "Main OBB\'s mounting status has some errors, need check: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1

    :cond_14
    :goto_c
    const-string v0, "Main OBB\'s path is empty or not exist"

    invoke-direct {p0, v0, p1}, Lcom/tencent/baiye/MainActivity;->NotifyError(Ljava/lang/String;Lcom/tencent/baiye/OBBStateHandler$OBBStateListener;)V

    return v1
.end method

.method protected MsdkLoadPlugin()V
    .locals 2

    const-string v0, "h3d"

    :try_start_0
    const-string v1, "start load intl-sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "INTLFoundation"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "INTLCore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "INTLUnityAdapter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "loaded intl-sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public UnmountOBB()V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/baiye/MainActivity;->mUseGoogleOBB:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/baiye/MainActivity;->GetOBBRawPath(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/baiye/OBBStateHandler;

    invoke-direct {v2}, Lcom/tencent/baiye/OBBStateHandler;-><init>()V

    iput-object v2, p0, Lcom/tencent/baiye/MainActivity;->mUnmountMainOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    const-string v3, "h3d"

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/storage/StorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Submit Main OBB\'s unmounting request successfully."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Submit Main OBB\'s unmounting request failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tencent/baiye/MainActivity;->GetOBBRawPath(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/baiye/OBBStateHandler;

    invoke-direct {v2}, Lcom/tencent/baiye/OBBStateHandler;-><init>()V

    iput-object v2, p0, Lcom/tencent/baiye/MainActivity;->mUnmountPatchOBBStateHandler:Lcom/tencent/baiye/OBBStateHandler;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/tencent/baiye/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/storage/StorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Submit Patch OBB\'s unmounting request successfully."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "Submit Patch OBB\'s unmounting request failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/h3d/base/MainActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lcom/tencent/baiye/InternationalSdk;->MyActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3ebd

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/tencent/baiye/MainActivity;->UnlockOBBPermissionLock()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/h3d/base/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/baiye/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    new-instance p1, Lcom/tencent/baiye/CrashHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/baiye/CrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Lcom/tencent/baiye/InternationalSdk;->MyCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/baiye/MainActivity;->UnmountOBB()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/baiye/MainActivity;->Instance:Lcom/h3d/base/MainActivityBase;

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/h3d/base/MainActivityBase;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/tencent/baiye/InternationalSdk;->MyNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onPause()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    invoke-static {p0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {p1, p0}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroid/app/Activity;)V

    const-string p2, "rationale_ask_again"

    invoke-direct {p0, p0, p2}, Lcom/tencent/baiye/MainActivity;->GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    const-string p2, "title_settings_dialog"

    invoke-direct {p0, p0, p2}, Lcom/tencent/baiye/MainActivity;->GetStringByIdName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setTitle(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/baiye/MainActivity;->UnlockOBBPermissionLock()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/tencent/baiye/MainActivity;->UnlockOBBPermissionLock()V

    :cond_0
    return-void
.end method

.method public onRationaleAccepted(I)V
    .locals 1

    const-string p1, "h3d"

    const-string v0, "\u7b49\u5f85\u7528\u6237\u5728\u63a5\u4e0b\u6765\u7684\u6743\u9650\u7533\u8bf7\u4e2d\u505a\u51fa\u9009\u62e9\u3002"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRationaleDenied(I)V
    .locals 1

    const-string p1, "h3d"

    const-string v0, "\u7528\u6237\u62d2\u7edd\u518d\u6b21\u5f39\u51fa\u6388\u6743\u63d0\u793a\u3002"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/h3d/base/MainActivityBase;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lcom/tencent/baiye/InternationalSdk;->MyRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/h3d/base/MainActivityBase;->onStop()V

    return-void
.end method
