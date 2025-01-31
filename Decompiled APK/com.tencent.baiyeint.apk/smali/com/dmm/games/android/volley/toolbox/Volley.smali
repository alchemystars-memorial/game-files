.class public Lcom/dmm/games/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/dmm/games/android/volley/RequestQueue;
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;

    invoke-static {p0, v0}, Lcom/dmm/games/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method private static newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/Network;)Lcom/dmm/games/android/volley/RequestQueue;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "volley"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/dmm/games/android/volley/RequestQueue;

    new-instance v1, Lcom/dmm/games/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/dmm/games/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, p1}, Lcom/dmm/games/android/volley/RequestQueue;-><init>(Lcom/dmm/games/android/volley/Cache;Lcom/dmm/games/android/volley/Network;)V

    invoke-virtual {p0}, Lcom/dmm/games/android/volley/RequestQueue;->start()V

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)Lcom/dmm/games/android/volley/RequestQueue;
    .locals 2

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;

    new-instance v0, Lcom/dmm/games/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/dmm/games/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p1, v0}, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;-><init>(Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)V

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "volley/0"

    :goto_0
    new-instance v0, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;

    new-instance v1, Lcom/dmm/games/android/volley/toolbox/HttpClientStack;

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/dmm/games/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v0, v1}, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;-><init>(Lcom/dmm/games/android/volley/toolbox/HttpStack;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;-><init>(Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)V

    :goto_1
    move-object p1, v0

    :goto_2
    invoke-static {p0, p1}, Lcom/dmm/games/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/Network;)Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/toolbox/HttpStack;)Lcom/dmm/games/android/volley/RequestQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;

    invoke-static {p0, p1}, Lcom/dmm/games/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;-><init>(Lcom/dmm/games/android/volley/toolbox/HttpStack;)V

    invoke-static {p0, v0}, Lcom/dmm/games/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/dmm/games/android/volley/Network;)Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method
