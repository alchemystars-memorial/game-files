.class public final Lo/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = true

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = ""

.field public static g:Ljava/lang/String; = ""

.field public static h:Ljava/lang/String; = ""

.field public static i:Ljava/lang/String; = ""

.field public static j:Ljava/lang/String; = ""

.field public static k:[Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/i;->k:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->j:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lo/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    sget-boolean v0, Lo/i;->a:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lo/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lo/i;->c:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CentauriOversea"

    const/4 v3, 0x0

    const-string v4, "GUID"

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/2addr v1, v5

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    move v1, v5

    :goto_0
    if-eqz v1, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v7, v7, [B

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lo/i;->c:Ljava/lang/String;

    :cond_5
    sget-object v1, Lo/i;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lo/i;->h()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/i;->c:Ljava/lang/String;

    if-eqz v6, :cond_7

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_9
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lo/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_a
    sget-object p0, Lo/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->i:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lo/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->g:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v0, Lo/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lo/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lo/i;->a:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lo/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->d:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/i;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->h:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lo/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lo/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lo/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/i;->l:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/i;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lo/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lo/i;->a:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lo/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lo/i;->e:Ljava/lang/String;

    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/i;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method
