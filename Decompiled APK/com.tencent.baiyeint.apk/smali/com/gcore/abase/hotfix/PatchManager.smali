.class public Lcom/gcore/abase/hotfix/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field private static final PATCH_FILE_NAME:Ljava/lang/String; = "patch.zip"

.field private static final PATCH_INFO_FILE_NAME:Ljava/lang/String; = "patch_info.json"

.field private static final PATCH_LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final PATCH_ROOT_DIR_NAME:Ljava/lang/String; = "GCloudPatch"

.field private static final TAG:Ljava/lang/String; = "ABase.PatchManager"

.field private static sPatchSoInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gcore/abase/hotfix/SoInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/gcore/abase/hotfix/PatchManager;->sPatchSoInfos:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyPatch(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 6

    invoke-static {p0}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "failed!"

    const-string v3, "mkdir "

    const/4 v4, 0x0

    const-string v5, "ABase.PatchManager"

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2, p1}, Lcom/gcore/abase/utils/FileUtils;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    const-string p0, " delete originalFile success!"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v4
.end method

.method public static excractSo(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gcore/abase/hotfix/SoInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "ABase.PatchManager"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mkdir "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "failed!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object p0, v0

    move v4, v3

    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gcore/abase/hotfix/SoInfo;

    iget-object v5, v5, Lcom/gcore/abase/hotfix/SoInfo;->name:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not exist in patch file!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :cond_1
    :try_start_3
    invoke-virtual {p1, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p0, 0x400

    :try_start_4
    new-array p0, p0, [B

    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5, p0, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_5

    :cond_3
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p2

    move-object v5, p0

    :goto_4
    move-object p0, v0

    move-object v0, p1

    goto :goto_8

    :catch_3
    move-exception p2

    move-object v5, p0

    :goto_5
    move-object p0, v0

    move-object v0, p1

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object p0, v0

    move-object v5, p0

    goto :goto_8

    :catch_4
    move-exception p2

    move-object p0, v0

    move-object v5, p0

    :goto_6
    :try_start_6
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    invoke-static {p0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catchall_3
    move-exception p2

    :goto_8
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_9

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    invoke-static {p0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public static getPatchFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "patch.zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatchInfoFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "patch_info.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatchLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "lib"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatchRootPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GCloudPatch"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatchSoInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gcore/abase/hotfix/SoInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/gcore/abase/hotfix/PatchManager;->sPatchSoInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSDKPatchVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchInfoFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sdk_name"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "patch_version"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPatchSoInfos(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gcore/abase/hotfix/SoInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/gcore/abase/hotfix/PatchManager;->sPatchSoInfos:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateSDKPatchVersion(Landroid/content/Context;Lcom/gcore/abase/hotfix/PatchInfo;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sdk_name"

    iget-object v3, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_version"

    iget-object v3, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "patch_version"

    iget v3, p1, Lcom/gcore/abase/hotfix/PatchInfo;->patchVersion:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchInfoFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :goto_4
    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
