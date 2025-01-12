.class final Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AFa1xSDK"
.end annotation


# static fields
.field private static AFInAppEventParameterName:[C = null

.field private static AFKeystoreWrapper:C = '\u0001'

.field private static valueOf:I = 0x1

.field private static values:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFInAppEventParameterName:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4c

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x57

    :goto_1
    if-eq v0, v1, :cond_2

    return-object p0

    :cond_2
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private static AFInAppEventType([B)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x37

    if-ge v3, v1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x8

    :goto_1
    if-eq v5, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3d

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    const/16 v0, 0x48

    :goto_2
    if-eq v0, v1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    aget-byte v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v7

    sub-int/2addr v6, v7

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    rsub-int/lit8 v7, v7, 0x65

    int-to-byte v7, v7

    const-string v8, "e"

    invoke-static {v6, v8, v7}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    add-int/lit8 v5, v5, 0x39

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    rem-int/lit8 v5, v5, 0x2

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)[B

    move-result-object p0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFInAppEventType([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFInAppEventType([B)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static valueOf(ILjava/lang/String;B)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_0
    check-cast p1, [C

    sget-object v0, Lcom/appsflyer/internal/AFf1tSDK;->afRDLog:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFInAppEventParameterName:[C

    sget-char v2, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFKeystoreWrapper:C

    new-array v3, p0, [C

    rem-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_1

    add-int/lit8 p0, p0, -0x1

    aget-char v4, p1, p0

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p0

    :cond_1
    const/4 v4, 0x1

    if-le p0, v4, :cond_5

    const/4 v5, 0x0

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    :goto_0
    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    if-ge v5, p0, :cond_5

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    aget-char v5, p1, v5

    sput-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventParameterName:C

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType:C

    sget-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventParameterName:C

    sget-char v6, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType:C

    if-ne v5, v6, :cond_2

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    sget-char v6, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventParameterName:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    :cond_2
    sget-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventParameterName:C

    div-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    sget-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventParameterName:C

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    sget-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType:C

    div-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    sget-char v5, Lcom/appsflyer/internal/AFf1tSDK;->AFInAppEventType:C

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    if-ne v5, v6, :cond_3

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    mul-int/2addr v5, v2

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    add-int/2addr v5, v6

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    mul-int/2addr v6, v2

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    add-int/2addr v6, v7

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    goto :goto_1

    :cond_3
    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    if-ne v5, v6, :cond_4

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    mul-int/2addr v5, v2

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    add-int/2addr v5, v6

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    mul-int/2addr v6, v2

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    add-int/2addr v6, v7

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    goto :goto_1

    :cond_4
    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->valueOf:I

    mul-int/2addr v5, v2

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->afInfoLog:I

    add-int/2addr v5, v6

    sget v6, Lcom/appsflyer/internal/AFf1tSDK;->AFKeystoreWrapper:I

    mul-int/2addr v6, v2

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:I

    add-int/2addr v6, v7

    sget v7, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    :goto_1
    sget v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/appsflyer/internal/AFf1tSDK;->values:I

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static values([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/16 v2, 0x50

    if-ge v0, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/16 v1, 0x43

    :goto_1
    if-eq v1, v2, :cond_1

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->valueOf:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_1
    aget-byte v1, p0, v0

    rem-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2a

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
