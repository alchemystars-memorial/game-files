.class public final Lcom/appsflyer/internal/AFd1nSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventParameterName:I = 0x1

.field private static AFInAppEventType:J = 0x7cd727a0b59eab44L

.field private static AFKeystoreWrapper:I

.field private static valueOf:I

.field private static values:C


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

.method private static AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->valueOf:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    aput-object p3, v0, v1

    const/4 p2, 0x3

    aput-object p4, v0, p2

    const/4 p2, 0x4

    const-string p3, ""

    aput-object p3, v0, p2

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xc

    if-ge p2, p3, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-eq p2, p1, :cond_1

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->valueOf:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    rem-int/2addr p1, v1

    return-object p0

    :cond_1
    invoke-virtual {p0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->valueOf:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    rem-int/2addr p1, v1

    return-object p0
.end method

.method private static AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1sSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1nSDK;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/appsflyer/internal/AFb1nSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1sSDK;->values:Lcom/appsflyer/internal/AFe1mSDK;

    sget-object p2, Lcom/appsflyer/internal/AFe1mSDK;->values:Lcom/appsflyer/internal/AFe1mSDK;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFe1lSDK;->valueOf:Lcom/appsflyer/internal/AFe1lSDK;

    invoke-direct {p1, v0, p0}, Lcom/appsflyer/internal/AFb1nSDK;-><init>(ZLcom/appsflyer/internal/AFe1lSDK;)V

    return-object p1

    :cond_1
    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "\uab44\ub59e\u27a0\u7cd7"

    const-string/jumbo v3, "\ud095\u63d9\u9b6c\ufa84\uff4a\uc4a3\ua0d7\ue558\ua29d\u42a8\ub1d6\ub073\udb5e\uf576\u92f3\uf60d\u7433\u326c\u30e6\udbc2\u3836\uf2a5\uaacf\u7fcc\u739e\ud860\ua7d9\ua5b0\u82c8\ud2ea\uc918\u5fa7\ua810\u2601\u4e9d\u22dd\u0b13\u2764\u8ce1\u449b\u34ad\u02b0\u49fb\u0107\u8c98\u2a83\ude44\u9251\u98c5\u410a\u1f83\u91bb\u6eb3\ub7f3\ubc2e\ub6e4\u31e1\u7435\u7ddc\u833f\u4dbe\u6055\u0f26\u612c"

    const-string/jumbo v5, "\ubda6\u8cb3\u442c\ufb2e"

    invoke-static {v0, v2, v1, v3, v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1sSDK;->values:Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->valueOf:Lcom/appsflyer/internal/AFe1mSDK;

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object p3, v0

    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1sSDK;->AFInAppEventParameterName:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android"

    const-string/jumbo v0, "v1"

    invoke-static {p2, p0, p3, v0, v4}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Lcom/appsflyer/internal/AFb1nSDK;

    if-eqz p0, :cond_3

    sget-object p2, Lcom/appsflyer/internal/AFe1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1lSDK;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/appsflyer/internal/AFe1lSDK;->values:Lcom/appsflyer/internal/AFe1lSDK;

    :goto_2
    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/AFb1nSDK;-><init>(ZLcom/appsflyer/internal/AFe1lSDK;)V

    return-object p1
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    :cond_1
    check-cast p3, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    sget-object v0, Lcom/appsflyer/internal/AFf1uSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p4, v1

    const/4 p1, 0x2

    aget-char v2, p0, p1

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p0, p1

    array-length p2, p3

    new-array v2, p2, [C

    sput v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    :goto_0
    sget v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    if-ge v1, p2, :cond_3

    sget v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x4

    sget v3, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    sget v4, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p0, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lcom/appsflyer/internal/AFf1uSDK;->AFInAppEventParameterName:C

    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p0, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p0, v3

    sget-char v1, Lcom/appsflyer/internal/AFf1uSDK;->AFInAppEventParameterName:C

    aput-char v1, p4, v3

    sget v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    sget v4, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    aget-char v4, p3, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType:J

    xor-long/2addr v3, v5

    sget v5, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lcom/appsflyer/internal/AFd1nSDK;->values:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    sget v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/appsflyer/internal/AFf1uSDK;->values:I

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final values(Lcom/appsflyer/internal/AFb1sSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1nSDK;
    .locals 5

    const/16 v0, 0x55

    if-eqz p1, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_4

    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->valueOf:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    if-eqz p3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_4

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    :goto_2
    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    new-instance p1, Lcom/appsflyer/internal/AFb1nSDK;

    sget-object p2, Lcom/appsflyer/internal/AFe1lSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1lSDK;

    invoke-direct {p1, v3, p2}, Lcom/appsflyer/internal/AFb1nSDK;-><init>(ZLcom/appsflyer/internal/AFe1lSDK;)V

    return-object p1

    :cond_6
    invoke-static {p1, p2, p3, p4}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1sSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1nSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->valueOf:I

    add-int/lit8 p2, p2, 0x7b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    const/16 p2, 0x9

    :try_start_1
    div-int/2addr p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :cond_7
    return-object p1
.end method
