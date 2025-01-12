.class public final Lcom/appsflyer/internal/AFa1dSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Ljava/lang/String;

.field public AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

.field AFKeystoreWrapper:Ljava/lang/String;

.field private valueOf:[B

.field public values:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFc1kSDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v1, p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "version="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v2, "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x5

    if-eqz v3, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-gt p1, v4, :cond_3

    const/16 v3, 0xb

    if-ge v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v3

    iput-object v3, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CACHE: Unknown task type: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-void
.end method

.method static AFKeystoreWrapper(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const-string/jumbo v2, "x_px"

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "y_px"

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "d_dpi"

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "size"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "xdp"

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "ydp"

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Couldn\'t aggregate screen stats: "

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()[B
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFa1dSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    iget-object v3, p1, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    :cond_8
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    if-ne v2, p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->valueOf:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
