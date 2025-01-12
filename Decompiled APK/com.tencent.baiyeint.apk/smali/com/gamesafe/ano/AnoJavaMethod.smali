.class public Lcom/gamesafe/ano/AnoJavaMethod;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 9

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    const/4 v6, 0x2

    aget-object v6, p0, v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    array-length v7, p0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    aget-object v1, p0, v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    move v0, v4

    :cond_4
    array-length v1, p0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    aget-object p0, p0, v8

    goto :goto_3

    :cond_5
    const-string p0, "0"

    :goto_3
    invoke-static {v2, v5, v6, v0, p0}, Lcom/gamesafe/ano/g;->a(ZZZZLjava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/gamesafe/ano/f;->c()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/gamesafe/ano/f;->b(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v1, "pkyvoz_vyw_zivwgzy_jqzm_pnw:%n:0:0"

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_1

    :cond_1
    const-string p0, "0"

    :goto_1
    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static initialize()V
    .locals 0

    invoke-static {}, Lcom/gamesafe/ano/f;->a()V

    return-void
.end method

.method public static scan()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-static {v0, v1, v1, v1, v2}, Lcom/gamesafe/ano/g;->a(ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static sendCmd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/gamesafe/ano/AnoJavaMethod;->sendCmdEx(Ljava/lang/String;)I

    return-void
.end method

.method public static sendCmdEx(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "didodvgduz"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/gamesafe/ano/f;->a()V

    goto/16 :goto_2

    :cond_1
    const-string v0, "ho:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gamesafe/ano/MainThreadDispatcher2;->SendCmd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "dia_xg:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gamesafe/ano/AnoJavaMethod;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "dn_hvdi_gjjkzm"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_a

    const-string p0, "DnHvdiOcmzvy"

    invoke-static {p0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "cdyz_hnbwjs:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "yg_adgz:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "pkyvoz_vyw_zivwgzy_jqzm_pnw:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/gamesafe/ano/AnoJavaMethod;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "zszx|"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*#07#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    :goto_1
    invoke-static {}, Lcom/gamesafe/ano/n;->a()Lcom/gamesafe/ano/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gamesafe/ano/n;->a(Ljava/lang/String;)V

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
