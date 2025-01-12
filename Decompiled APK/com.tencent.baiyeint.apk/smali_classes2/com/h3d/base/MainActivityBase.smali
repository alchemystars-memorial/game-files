.class public abstract Lcom/h3d/base/MainActivityBase;
.super Lcom/h3d/base/UnityPlayerActivity;
.source "MainActivityBase.java"


# static fields
.field public static Instance:Lcom/h3d/base/MainActivityBase; = null

.field public static final LOG_TAG:Ljava/lang/String; = "h3d"

.field protected static final MS_Inland:I = 0x1

.field protected static final MS_International:I = 0x2

.field protected static final MS_None:I = 0x0

.field protected static mMsdkStatus:I = 0x1


# instance fields
.field private final PermissionRequestCode:I

.field private layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mContext:Landroid/content/Context;

.field private mlistener:Lcom/h3d/base/ConfigurationChangedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/h3d/base/UnityPlayerActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/h3d/base/MainActivityBase;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/h3d/base/MainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/h3d/base/MainActivityBase$1;-><init>(Lcom/h3d/base/MainActivityBase;)V

    iput-object v0, p0, Lcom/h3d/base/MainActivityBase;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/16 v0, 0x64

    iput v0, p0, Lcom/h3d/base/MainActivityBase;->PermissionRequestCode:I

    return-void
.end method

.method public static GetFreeDiskSpace()J
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v2, v0

    return-wide v2

    :catchall_0
    const-wide/16 v0, 0x400

    return-wide v0
.end method

.method static synthetic access$000(Lcom/h3d/base/MainActivityBase;)Lcom/h3d/base/ConfigurationChangedHandler;
    .locals 0

    iget-object p0, p0, Lcom/h3d/base/MainActivityBase;->mlistener:Lcom/h3d/base/ConfigurationChangedHandler;

    return-object p0
.end method

.method public static loadPluginByReflection(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "com.gcore.gcloud.plugin.PluginUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadLibrary"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private readMetaDataFromActivity()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/h3d/base/MainActivityBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/h3d/base/MainActivityBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "msdk_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/h3d/base/MainActivityBase;->mMsdkStatus:I

    const-string v0, "h3d"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMetaDataFromActivity, mMsdkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/h3d/base/MainActivityBase;->mMsdkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public GetMsdkStatus()I
    .locals 1

    sget v0, Lcom/h3d/base/MainActivityBase;->mMsdkStatus:I

    return v0
.end method

.method public InitConfigurationChangedCallBack(Lcom/h3d/base/ConfigurationChangedHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/h3d/base/MainActivityBase;->mlistener:Lcom/h3d/base/ConfigurationChangedHandler;

    return-void
.end method

.method protected abstract MsdkLoadPlugin()V
.end method

.method protected RequestPermission_impl(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/h3d/base/MainActivityBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public UnZipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/h3d/base/MainActivityBase;->mAssetManager:Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string p1, "h3d"

    const-string p2, "AssetManager Is Null"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    new-array v3, p1, [B

    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "GB2312"

    const-string v7, "8859_1"

    if-eqz v4, :cond_4

    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    invoke-virtual {v0, v3, v2, p1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    invoke-virtual {v5, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "UnZipFile:\u76ee\u6807\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "UnZipFile:\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/h3d/base/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult,"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "h3d"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/h3d/base/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/h3d/base/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/h3d/base/MainActivityBase;->Instance:Lcom/h3d/base/MainActivityBase;

    invoke-direct {p0}, Lcom/h3d/base/MainActivityBase;->readMetaDataFromActivity()V

    const-string v0, "h3d"

    const-string v1, "MainActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/h3d/base/MainActivityBase;->MsdkLoadPlugin()V

    iput-object p0, p0, Lcom/h3d/base/MainActivityBase;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/h3d/base/MainActivityBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/h3d/base/MainActivityBase;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onDestroy()V

    const-string v0, "h3d"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/h3d/base/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "h3d"

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onPause()V

    const-string v0, "h3d"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/h3d/base/UnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p1, "h3d"

    const-string p2, "onRequestPermissionsResult"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onRestart()V

    const-string v0, "h3d"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onResume()V

    const-string v0, "h3d"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onStart()V

    const-string v0, "h3d"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/h3d/base/UnityPlayerActivity;->onStop()V

    const-string v0, "h3d"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
