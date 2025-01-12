.class public Lcom/gcore/abase/hotfix/GCloudFix;
.super Ljava/lang/Object;
.source "GCloudFix.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCloud.GCloudFix"

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanAllPatch()V
    .locals 2

    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gcore/abase/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public static cleanPatch(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    sput-object p0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/gcore/abase/hotfix/GCloudFix;->openSafeMode()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/gcore/abase/hotfix/GCloudFix;->loadPatch()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPatch cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloud.GCloudFix"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/gcore/abase/hotfix/GCloudSoFix;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static loadPatch()V
    .locals 6

    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "GCloud.GCloudFix"

    if-nez v0, :cond_0

    const-string v0, "GCloudPatch folder is not exits"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gcore/abase/utils/SDKUtils;->getAllSDKNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchSDKPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/gcore/abase/hotfix/PatchManager;->getPatchFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/gcore/abase/hotfix/SecurityCheck;

    sget-object v5, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/gcore/abase/hotfix/SecurityCheck;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/gcore/abase/hotfix/PatchCheck;->checkComplete(Landroid/content/Context;Ljava/io/File;Lcom/gcore/abase/hotfix/SecurityCheck;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "check complete failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/gcore/abase/hotfix/GCloudFix;->cleanPatch(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/gcore/abase/hotfix/SecurityCheck;->getPatchInfo()Lcom/gcore/abase/hotfix/PatchInfo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/gcore/abase/hotfix/SecurityCheck;->getSoInfos()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_3

    const-string v0, "patchInfo is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, v2, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gcore/abase/hotfix/PatchManager;->setPatchSoInfos(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static openSafeMode()V
    .locals 1

    sget-boolean v0, Lcom/gcore/abase/hotfix/GCloudFixConfig;->useSafeMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gcore/abase/hotfix/PatchCheck;->checkSafeModeCount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gcore/abase/hotfix/GCloudFix;->cleanAllPatch()V

    :cond_0
    return-void
.end method

.method public static recievePatch(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gcore/abase/utils/FileUtils;->isLegalFile(Ljava/io/File;)Z

    move-result v1

    const-string v2, "GCloud.GCloudFix"

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file is illegal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Lcom/gcore/abase/hotfix/SecurityCheck;

    sget-object v1, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/gcore/abase/hotfix/SecurityCheck;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/gcore/abase/hotfix/PatchCheck;->checkPatch(Landroid/content/Context;Ljava/io/File;Lcom/gcore/abase/hotfix/SecurityCheck;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "check patch failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/gcore/abase/hotfix/SecurityCheck;->getPatchInfo()Lcom/gcore/abase/hotfix/PatchInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "patchInfo is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v3, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/gcore/abase/hotfix/PatchManager;->copyPatch(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "copy patch failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/gcore/abase/hotfix/SecurityCheck;->getSoInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {v0, v3, p0}, Lcom/gcore/abase/hotfix/PatchManager;->excractSo(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "excract so failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget-object p0, Lcom/gcore/abase/hotfix/GCloudFix;->sContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/gcore/abase/hotfix/PatchManager;->updateSDKPatchVersion(Landroid/content/Context;Lcom/gcore/abase/hotfix/PatchInfo;)V

    const-string p0, "patch success! reboot effect!"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
