.class Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;
.super Ljava/lang/Object;
.source "UserAgentGenerator.java"


# static fields
.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "UNK"

.field private static final DEFAULT_VERSION_NAME:Ljava/lang/String; = "UNK"


# instance fields
.field private cachedUserAgent:Ljava/lang/String;

.field private final packageInfo:Landroid/content/pm/PackageInfo;

.field private final sdkVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->cachedUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->packageInfo:Landroid/content/pm/PackageInfo;

    const-string v1, "UNK"

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ChannelSDK/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Linux; U; Android "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Build/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->cachedUserAgent:Ljava/lang/String;

    return-object v0
.end method
