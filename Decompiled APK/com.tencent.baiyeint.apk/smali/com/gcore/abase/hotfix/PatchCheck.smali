.class public Lcom/gcore/abase/hotfix/PatchCheck;
.super Ljava/lang/Object;
.source "PatchCheck.java"


# static fields
.field private static final PREFER_NAME:Ljava/lang/String; = "GCloud"

.field private static final SAFE_MODE_COUNT_NAME:Ljava/lang/String; = "SafeModeCoun"

.field private static final SAFE_MODE_DELAY_TIME:I = 0x1388

.field private static final SAFE_MODE_MAX_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GCloud.PatchCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkComplete(Landroid/content/Context;Ljava/io/File;Lcom/gcore/abase/hotfix/SecurityCheck;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GCloud.PatchCheck"

    if-nez v0, :cond_0

    const-string p0, "patch file not exist!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/gcore/abase/hotfix/SecurityCheck;->verifyPatchMetaSignature(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "verifyPatchMetaSignature failed!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/gcore/abase/hotfix/SecurityCheck;->getPatchInfo()Lcom/gcore/abase/hotfix/PatchInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "patch info is null!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/gcore/abase/utils/SDKUtils;->getSDKVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object v0, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    iget-object v0, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/gcore/abase/hotfix/PatchManager;->getSDKPatchVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iget p1, p1, Lcom/gcore/abase/hotfix/PatchInfo;->patchVersion:I

    if-eq p0, p1, :cond_4

    const-string p0, "patchVersion dismatch"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    const-string p0, "sdkVersion dismatch"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkPatch(Landroid/content/Context;Ljava/io/File;Lcom/gcore/abase/hotfix/SecurityCheck;)Z
    .locals 3

    invoke-virtual {p2, p1}, Lcom/gcore/abase/hotfix/SecurityCheck;->verifyPatchMetaSignature(Ljava/io/File;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "GCloud.PatchCheck"

    if-nez p1, :cond_0

    const-string/jumbo p0, "verifyPatchMetaSignature failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/gcore/abase/hotfix/SecurityCheck;->getPatchInfo()Lcom/gcore/abase/hotfix/PatchInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "patch info is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object p2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/gcore/abase/utils/SDKUtils;->getSDKVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    iget-object v2, p1, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    invoke-static {p0, p2, v2}, Lcom/gcore/abase/hotfix/PatchManager;->getSDKPatchVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iget p1, p1, Lcom/gcore/abase/hotfix/PatchInfo;->patchVersion:I

    if-ne p0, p1, :cond_3

    const-string p0, "patch is already exits"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const-string p0, "sdkVersion dismatch"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static checkSafeModeCount(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/gcore/abase/hotfix/PatchCheck;->getSafeModeCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gcore/abase/hotfix/PatchCheck;->setSafeModeCount(Landroid/content/Context;I)V

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/gcore/abase/hotfix/PatchCheck;->setSafeModeCount(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gcore/abase/hotfix/PatchCheck$1;

    invoke-direct {v2, p0}, Lcom/gcore/abase/hotfix/PatchCheck$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public static getSafeModeCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "GCloud"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "SafeModeCoun"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSafeModeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloud.PatchCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static setSafeModeCount(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "GCloud"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SafeModeCoun"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSafeModeCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GCloud.PatchCheck"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
