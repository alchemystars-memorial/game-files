.class public Lcom/gcore/abase/hotfix/SecurityCheck;
.super Ljava/lang/Object;
.source "SecurityCheck.java"


# static fields
.field private static final GCLOUD_CRT_PATH:Ljava/lang/String; = "gcloud.crt"

.field private static final PATCH_INFO_FILE:Ljava/lang/String; = "patch_info.json"

.field private static final SO_INFO_FILE:Ljava/lang/String; = "so_info.json"

.field private static final TAG:Ljava/lang/String; = "ABase.SecurityCheck"

.field private static mCertificateMd5:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final metaContentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gcore/abase/hotfix/SecurityCheck;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/hotfix/SecurityCheck;->metaContentMap:Ljava/util/HashMap;

    sget-object v0, Lcom/gcore/abase/hotfix/SecurityCheck;->mCertificateMd5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/gcore/abase/hotfix/SecurityCheck;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .locals 5

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->getMD5([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gcore/abase/hotfix/SecurityCheck;->mCertificateMd5:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ABase.SecurityCheck"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ABase.SecurityCheck"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "X.509"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v3, "gcloud.crt"

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/gcore/abase/utils/FileUtils;->getMD5([B)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/gcore/abase/hotfix/SecurityCheck;->mCertificateMd5:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "mCertificateMd5 is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "get gcloud.crt failed! check if gcloud.crt exist!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v1}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public getPatchInfo()Lcom/gcore/abase/hotfix/PatchInfo;
    .locals 4

    iget-object v0, p0, Lcom/gcore/abase/hotfix/SecurityCheck;->metaContentMap:Ljava/util/HashMap;

    const-string v1, "patch_info.json"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/gcore/abase/hotfix/PatchInfo;

    invoke-direct {v0}, Lcom/gcore/abase/hotfix/PatchInfo;-><init>()V

    const-string v3, "sdk_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/gcore/abase/hotfix/PatchInfo;->sdkName:Ljava/lang/String;

    const-string v3, "sdk_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/gcore/abase/hotfix/PatchInfo;->sdkVersion:Ljava/lang/String;

    const-string v3, "patch_version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/gcore/abase/hotfix/PatchInfo;->patchVersion:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public getSoInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gcore/abase/hotfix/SoInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/gcore/abase/hotfix/SecurityCheck;->metaContentMap:Ljava/util/HashMap;

    const-string/jumbo v1, "so_info.json"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/gcore/abase/hotfix/SoInfo;

    invoke-direct {v4}, Lcom/gcore/abase/hotfix/SoInfo;-><init>()V

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gcore/abase/hotfix/SoInfo;->name:Ljava/lang/String;

    const-string v5, "arch"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gcore/abase/hotfix/SoInfo;->arch:Ljava/lang/String;

    const-string v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/gcore/abase/hotfix/SoInfo;->md5:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public verifyPatchMetaSignature(Ljava/io/File;)Z
    .locals 10

    sget-object v0, Lcom/gcore/abase/hotfix/SecurityCheck;->mCertificateMd5:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ABase.SecurityCheck"

    if-nez v0, :cond_0

    const-string p1, "mCertificateMd5 is null! check if gcloud.crt exist!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "_info.json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/gcore/abase/hotfix/SecurityCheck;->metaContentMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcom/gcore/abase/utils/FileUtils;->loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p1, v5}, Lcom/gcore/abase/hotfix/SecurityCheck;->check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_1

    :cond_5
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1

    :cond_6
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "SecurityCheck file %s, size %d verifyPatchMetaSignature fail"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_3
    return v3

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    throw v0
.end method
