.class public Lnet/aihelp/utils/DeviceUuidFactory;
.super Ljava/lang/Object;
.source "DeviceUuidFactory.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static sID:Ljava/lang/String;


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

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v0, Lnet/aihelp/utils/DeviceUuidFactory;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/utils/SpUtil;->get1_xDeviceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "INSTALLATION"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sput-object v1, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->writeInstallationFile(Ljava/io/File;)V

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    :goto_0
    :try_start_4
    sget-object p0, Lnet/aihelp/utils/DeviceUuidFactory;->sID:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
