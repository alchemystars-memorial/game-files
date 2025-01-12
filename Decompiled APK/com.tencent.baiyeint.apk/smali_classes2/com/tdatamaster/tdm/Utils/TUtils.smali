.class public Lcom/tdatamaster/tdm/Utils/TUtils;
.super Ljava/lang/Object;
.source "TUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAssetsFileMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/tdatamaster/tdm/Utils/MD5Util;->encodeAssets2HexStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static calculateFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/MD5Util;->encodeFile2HexStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static copyAssertsToDest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "IOEXCeption"

    const-string v1, "IOEXCeption: "

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy dstPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tdatamaster/tdm/Utils/TUtils;->calculateFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/tdatamaster/tdm/Utils/TUtils;->calculateAssetsFileMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    const-string p1, "json file already exits and md5 is right"

    invoke-static {p0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :goto_2
    sget-object p1, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    :catch_1
    move-exception p2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto/16 :goto_b

    :catch_2
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_3

    :catch_3
    move-object p1, p2

    :catch_4
    move-object p2, p0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, p1

    goto/16 :goto_b

    :catch_5
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, p1

    :goto_3
    :try_start_4
    sget-object v2, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_6
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_a

    :goto_5
    sget-object p1, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9

    :catchall_2
    move-exception p2

    goto :goto_b

    :catch_7
    move-object p1, p2

    :goto_6
    :try_start_6
    sget-object p0, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    const-string v2, "FileNotFoundException,may not be noticed if not using the encrypt function"

    invoke-static {p0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p2, :cond_4

    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_8
    move-exception p0

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_a

    :goto_8
    sget-object p1, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_a
    return-void

    :catchall_3
    move-exception p0

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    :goto_b
    if-eqz p0, :cond_6

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catch_9
    move-exception p0

    goto :goto_d

    :cond_6
    :goto_c
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_e

    :goto_d
    sget-object p1, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/tdatamaster/tdm/Utils/TUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_e
    throw p2
.end method
