.class public Lcom/appsflyer/internal/AFa1vSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFLogger$LogLevel:[B = null

.field private static AppsFlyer2dXConversionCallback:Ljava/lang/Object; = null

.field public static onAppOpenAttributionNative:[B = null

.field private static onAttributionFailureNative:Ljava/lang/Object; = null

.field public static final onConversionDataFail:I = 0x0

.field private static onConversionDataSuccess:I = 0x0

.field private static onInstallConversionDataLoadedNative:I = 0x0

.field private static onInstallConversionFailureNative:J = 0x0L

.field private static onResponseErrorNative:I = 0x1

.field public static final onResponseNative:[B


# direct methods
.method private static $$c(SIS)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    or-int/lit8 v1, v0, 0x67

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x67

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x54

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    const/4 v3, 0x0

    if-eq v1, v0, :cond_2

    neg-int p0, p0

    not-int p0, p0

    const/16 v0, 0x24

    rsub-int/lit8 p0, p0, 0x24

    sub-int/2addr p0, v2

    or-int/lit8 v1, p1, 0x29

    shl-int/2addr v1, v2

    xor-int/lit8 p1, p1, 0x29

    sub-int/2addr v1, p1

    sget-object p1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    or-int/lit8 v4, p2, 0x4

    shl-int/2addr v4, v2

    xor-int/lit8 p2, p2, 0x4

    sub-int/2addr v4, p2

    new-array p2, p0, [B

    or-int/lit8 v5, p0, -0x1

    shl-int/2addr v5, v2

    not-int p0, p0

    sub-int/2addr v5, p0

    const/16 p0, 0x2f

    if-nez p1, :cond_1

    move v0, p0

    :cond_1
    if-eq v0, p0, :cond_4

    :goto_1
    move v0, v3

    goto :goto_4

    :cond_2
    const/16 v0, 0x30

    shl-int p0, v0, p0

    xor-int/lit8 v0, p1, -0x7

    and-int/lit8 p1, p1, -0x7

    shl-int/2addr p1, v2

    add-int/2addr v0, p1

    xor-int/lit8 p1, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    shl-int/2addr v0, v2

    add-int v1, p1, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    and-int/lit8 v0, p2, 0x2a

    or-int/lit8 p2, p2, 0x2a

    add-int v4, v0, p2

    new-array p2, p0, [B

    and-int/lit16 v0, p0, 0xec

    or-int/lit16 p0, p0, 0xec

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, -0x6f

    or-int/lit8 v0, v0, -0x6f

    add-int v5, p0, v0

    if-nez p1, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    move p0, v4

    :goto_3
    neg-int v4, v4

    xor-int v6, v1, v4

    and-int/2addr v1, v4

    shl-int/2addr v1, v2

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v1, v6, -0x1

    sget v4, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    or-int/lit8 v6, v4, 0x1d

    shl-int/2addr v6, v2

    xor-int/lit8 v4, v4, 0x1d

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v6, v6, 0x2

    move v4, p0

    :goto_4
    int-to-byte p0, v1

    aput-byte p0, p2, v0

    xor-int/lit8 p0, v4, 0x1

    and-int/2addr v4, v2

    shl-int/2addr v4, v2

    add-int/2addr p0, v4

    if-ne v0, v5, :cond_7

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    and-int/lit8 p2, p1, 0x27

    or-int/lit8 p1, p1, 0x27

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p1, 0x5

    if-nez p2, :cond_5

    const/16 p2, 0x53

    goto :goto_5

    :cond_5
    move p2, p1

    :goto_5
    if-ne p2, p1, :cond_6

    return-object p0

    :cond_6
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    aget-byte v4, p1, p0

    goto :goto_3
.end method

.method static constructor <clinit>()V
    .locals 49

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFa1vSDK;->init$0()V

    const/4 v2, 0x4

    sput v2, Lcom/appsflyer/internal/AFa1vSDK;->onInstallConversionDataLoadedNative:I

    const-wide v3, 0x18afa8f96c5663a4L    # 8.882279232351393E-190

    sput-wide v3, Lcom/appsflyer/internal/AFa1vSDK;->onInstallConversionFailureNative:J

    :try_start_0
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x29

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v5, 0x53

    aget-byte v6, v3, v5

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x105

    and-int/lit16 v8, v6, 0x105

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    const/4 v9, 0x0

    if-eqz v6, :cond_1

    move-object v6, v9

    goto :goto_1

    :cond_1
    const/16 v6, 0xb

    aget-byte v6, v3, v6

    neg-int v6, v6

    int-to-byte v6, v6

    aget-byte v10, v3, v5

    int-to-byte v10, v10

    const/16 v11, 0x3a4

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    :goto_1
    const/16 v10, 0x11

    const/16 v11, 0x1d

    const/4 v12, 0x6

    const/16 v13, 0xa

    :try_start_1
    aget-byte v10, v3, v10

    int-to-byte v10, v10

    const/16 v14, 0x264

    aget-byte v14, v3, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v15, 0x2d2

    int-to-short v15, v15

    invoke-static {v10, v14, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v14, v3, v12

    int-to-byte v14, v14

    aget-byte v15, v3, v5

    int-to-byte v15, v15

    const/16 v16, 0x17b

    aget-byte v3, v3, v16

    int-to-short v3, v3

    invoke-static {v14, v15, v3}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    new-array v14, v7, [Ljava/lang/Class;

    invoke-virtual {v10, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    if-eqz v10, :cond_3

    goto :goto_3

    :catch_0
    move-object v3, v9

    :goto_3
    :try_start_2
    sget-object v10, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v14, 0x81

    aget-byte v14, v10, v14

    int-to-byte v14, v14

    const/16 v15, 0x264

    aget-byte v15, v10, v15

    neg-int v15, v15

    int-to-byte v15, v15

    sget v12, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    or-int/lit16 v12, v12, 0x1a4

    int-to-short v12, v12

    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aget-byte v14, v10, v11

    neg-int v14, v14

    int-to-byte v14, v14

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    const/16 v15, 0x34a

    int-to-short v15, v15

    invoke-static {v14, v10, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v10

    new-array v14, v7, [Ljava/lang/Class;

    invoke-virtual {v12, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v12, v9

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    const/16 v10, 0x34b

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v15, v14, v10

    int-to-byte v15, v15

    aget-byte v14, v14, v13

    int-to-byte v14, v14

    const/16 v11, 0xe8

    int-to-short v11, v11

    invoke-static {v15, v14, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v11

    move-object v14, v9

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v12, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v9

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v11, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    :cond_4
    move-object v11, v9

    :goto_4
    if-eqz v3, :cond_5

    const/16 v12, 0x5a

    goto :goto_5

    :cond_5
    const/16 v12, 0x19

    :goto_5
    const/16 v14, 0x5a

    if-eq v12, v14, :cond_6

    goto :goto_6

    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v15, 0x1a4

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    aget-byte v14, v14, v13

    int-to-byte v14, v14

    sget v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v7, v5, 0x14e

    and-int/lit16 v5, v5, 0x14e

    or-int/2addr v5, v7

    int-to-short v5, v5

    invoke-static {v15, v14, v5}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    move-object v7, v9

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v12, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v7, v9

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    :goto_6
    move-object v5, v9

    :goto_7
    if-eqz v3, :cond_7

    const/16 v7, 0x54

    goto :goto_8

    :cond_7
    const/16 v7, 0x33

    :goto_8
    const/16 v12, 0x54

    if-eq v7, v12, :cond_8

    goto :goto_9

    :cond_8
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v12, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v14, v12, v10

    int-to-byte v14, v14

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v15, 0xf6

    int-to-short v15, v15

    invoke-static {v14, v12, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v12

    move-object v14, v9

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v7, v12, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v12, v9

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_4
    :goto_9
    move-object v3, v9

    :goto_a
    if-eqz v11, :cond_9

    const/4 v7, 0x0

    goto :goto_b

    :cond_9
    move v7, v8

    :goto_b
    const/16 v12, 0x13

    const/16 v14, 0xd9

    const/4 v15, 0x2

    if-eqz v7, :cond_d

    if-nez v6, :cond_a

    const/4 v7, 0x0

    goto :goto_c

    :cond_a
    move v7, v8

    :goto_c
    if-eqz v7, :cond_c

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v9, v11, v10

    int-to-byte v9, v9

    aget-byte v13, v11, v2

    int-to-byte v13, v13

    or-int/lit16 v2, v13, 0x259

    int-to-short v2, v2

    invoke-static {v9, v13, v2}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    :try_start_7
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aget-byte v2, v11, v12

    int-to-byte v2, v2

    aget-byte v7, v11, v14

    int-to-byte v7, v7

    const/16 v9, 0x35e

    int-to-short v9, v9

    invoke-static {v2, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v7, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v7, v11

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_b

    throw v2

    :cond_b
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    :cond_c
    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v2, v2, 0x1c

    sub-int/2addr v2, v8

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v2, v15

    const/4 v11, 0x0

    :cond_d
    :goto_d
    if-eqz v3, :cond_e

    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v2, v2, 0x1a

    sub-int/2addr v2, v8

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/2addr v2, v15

    goto/16 :goto_e

    :cond_e
    :try_start_9
    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v3, 0x1d9

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v6, v2, v14

    int-to-byte v6, v6

    const/16 v7, 0x2ad

    int-to-short v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    xor-int/lit8 v7, v6, 0x3b

    and-int/lit8 v6, v6, 0x3b

    shl-int/2addr v6, v8

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v7, v15

    :try_start_a
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/16 v3, 0x186

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v7, v2, v14

    int-to-byte v7, v7

    aget-byte v9, v2, v10

    int-to-short v9, v9

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v7, v2, v10

    int-to-byte v7, v7

    const/16 v9, 0xa

    aget-byte v13, v2, v9

    int-to-byte v9, v13

    const/16 v13, 0x2ba

    int-to-short v13, v13

    invoke-static {v7, v9, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v13, v9, v17

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_50

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    and-int/lit8 v7, v6, 0x71

    or-int/lit8 v6, v6, 0x71

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v7, v15

    :try_start_b
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aget-byte v3, v2, v12

    int-to-byte v3, v3

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    const/16 v7, 0x35e

    int-to-short v7, v7

    invoke-static {v3, v2, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4f

    :goto_e
    if-nez v5, :cond_10

    if-eqz v11, :cond_10

    :try_start_c
    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v5, 0x244

    aget-byte v5, v2, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x53

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    sget v7, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v9, v7, 0x106

    and-int/lit16 v7, v7, 0x106

    or-int/2addr v7, v9

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    :try_start_d
    new-array v6, v15, [Ljava/lang/Object;

    aput-object v5, v6, v8

    const/4 v5, 0x0

    aput-object v11, v6, v5

    aget-byte v5, v2, v12

    int-to-byte v5, v5

    aget-byte v7, v2, v14

    int-to-byte v7, v7

    const/16 v9, 0x35e

    int-to-short v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v15, [Ljava/lang/Class;

    aget-byte v13, v2, v12

    int-to-byte v13, v13

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v13, v2, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v7, v9

    const-class v2, Ljava/lang/String;

    aput-object v2, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    throw v2

    :cond_f
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    :cond_10
    :goto_f
    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v2, v2, 0x58

    sub-int/2addr v2, v8

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v2, v15

    :try_start_f
    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v6, 0x81

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x264

    aget-byte v7, v2, v7

    neg-int v7, v7

    int-to-byte v7, v7

    sget v9, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v13, v9, 0x224

    and-int/lit16 v9, v9, 0x224

    or-int/2addr v9, v13

    int-to-short v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x7c

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v9, 0xa

    aget-byte v13, v2, v9

    int-to-byte v9, v13

    const/16 v13, 0x1ca

    int-to-short v13, v13

    invoke-static {v7, v9, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4e

    :try_start_10
    aget-byte v7, v2, v12

    int-to-byte v7, v7

    aget-byte v9, v2, v14

    int-to-byte v9, v9

    const/16 v13, 0x35e

    int-to-short v13, v13

    invoke-static {v7, v9, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x9

    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v17, v7, v18

    aput-object v5, v7, v8

    aput-object v11, v7, v15

    const/4 v10, 0x3

    aput-object v3, v7, v10

    const/16 v19, 0x4

    aput-object v6, v7, v19

    const/16 v20, 0x5

    aput-object v5, v7, v20

    const/4 v5, 0x6

    aput-object v11, v7, v5

    const/4 v5, 0x7

    aput-object v3, v7, v5

    const/16 v3, 0x8

    aput-object v6, v7, v3

    new-array v3, v9, [Z

    const/4 v5, 0x0

    aput-boolean v5, v3, v5

    aput-boolean v8, v3, v8

    aput-boolean v8, v3, v15

    aput-boolean v8, v3, v10

    const/4 v5, 0x4

    aput-boolean v8, v3, v5

    aput-boolean v8, v3, v20

    const/4 v5, 0x6

    aput-boolean v8, v3, v5

    const/4 v5, 0x7

    aput-boolean v8, v3, v5

    const/16 v5, 0x8

    aput-boolean v8, v3, v5

    new-array v5, v9, [Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v6

    aput-boolean v6, v5, v8

    aput-boolean v6, v5, v15

    aput-boolean v6, v5, v10

    const/4 v11, 0x4

    aput-boolean v6, v5, v11

    aput-boolean v8, v5, v20

    const/4 v6, 0x6

    aput-boolean v8, v5, v6

    const/4 v6, 0x7

    aput-boolean v8, v5, v6

    const/16 v6, 0x8

    aput-boolean v8, v5, v6

    new-array v6, v9, [Z

    const/4 v11, 0x0

    aput-boolean v11, v6, v11

    aput-boolean v11, v6, v8

    aput-boolean v8, v6, v15

    aput-boolean v8, v6, v10

    const/16 v17, 0x4

    aput-boolean v11, v6, v17

    aput-boolean v11, v6, v20

    const/16 v16, 0x6

    aput-boolean v8, v6, v16

    const/16 v17, 0x7

    aput-boolean v8, v6, v17

    const/16 v17, 0x8

    aput-boolean v11, v6, v17
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    const/16 v11, 0xd

    :try_start_11
    aget-byte v10, v2, v11

    int-to-byte v10, v10

    const/16 v22, 0x264

    aget-byte v11, v2, v22

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v14, 0x6b

    int-to-short v14, v14

    invoke-static {v10, v11, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0x180

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    const/16 v14, 0x178

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    const/16 v14, 0x272

    int-to-short v14, v14

    invoke-static {v11, v2, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/16 v10, 0x1d

    if-ne v2, v10, :cond_11

    move v10, v8

    goto :goto_10

    :cond_11
    const/4 v10, 0x0

    :goto_10
    if-eq v10, v8, :cond_12

    const/16 v10, 0x1a

    if-lt v2, v10, :cond_12

    move/from16 v17, v8

    const/4 v10, 0x0

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_11
    aput-boolean v17, v6, v10
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    const/16 v10, 0x15

    if-lt v2, v10, :cond_14

    sget v10, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    or-int/lit8 v11, v10, 0x7d

    shl-int/2addr v11, v8

    xor-int/lit8 v10, v10, 0x7d

    sub-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/2addr v11, v15

    if-nez v11, :cond_13

    const/4 v10, 0x0

    goto :goto_12

    :cond_13
    move v10, v8

    :goto_12
    if-eqz v10, :cond_14

    move v10, v8

    goto :goto_13

    :cond_14
    const/4 v10, 0x0

    :goto_13
    :try_start_12
    aput-boolean v10, v6, v8

    const/16 v10, 0x15

    if-lt v2, v10, :cond_15

    move v10, v8

    goto :goto_14

    :cond_15
    const/4 v10, 0x0

    :goto_14
    aput-boolean v10, v6, v20

    const/16 v10, 0x10

    if-ge v2, v10, :cond_16

    const/16 v10, 0x4c

    goto :goto_15

    :cond_16
    const/16 v10, 0x4b

    :goto_15
    const/16 v11, 0x4b

    if-eq v10, v11, :cond_17

    move v10, v8

    goto :goto_16

    :cond_17
    const/4 v10, 0x0

    :goto_16
    const/4 v11, 0x4

    aput-boolean v10, v6, v11
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    const/16 v10, 0x8

    const/16 v11, 0x10

    if-ge v2, v11, :cond_19

    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    xor-int/lit8 v11, v2, 0x73

    and-int/lit8 v2, v2, 0x73

    shl-int/2addr v2, v8

    add-int/2addr v11, v2

    rem-int/lit16 v2, v11, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v11, v15

    if-eqz v11, :cond_18

    goto :goto_17

    :cond_18
    move v2, v8

    goto :goto_18

    :cond_19
    :goto_17
    const/4 v2, 0x0

    :goto_18
    :try_start_13
    aput-boolean v2, v6, v10
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    :catch_5
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_19
    if-nez v2, :cond_7e

    if-ge v10, v9, :cond_7e

    :try_start_14
    aget-boolean v11, v6, v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    if-eqz v11, :cond_7d

    :try_start_15
    aget-boolean v23, v3, v10

    aget-object v9, v7, v10

    aget-boolean v24, v5, v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4b

    const/16 v25, 0x16a

    if-eqz v23, :cond_1d

    if-eqz v9, :cond_1b

    sget v26, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    and-int/lit8 v27, v26, 0x3f

    or-int/lit8 v26, v26, 0x3f

    add-int v14, v27, v26

    rem-int/lit16 v11, v14, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/2addr v14, v15

    add-int/lit8 v11, v11, 0x72

    sub-int/2addr v11, v8

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v11, v15

    :try_start_16
    sget-object v11, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v14, v11, v12

    int-to-byte v14, v14

    const/16 v22, 0xd9

    aget-byte v12, v11, v22

    int-to-byte v12, v12

    invoke-static {v14, v12, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v14, 0x336

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    const/16 v15, 0x53

    aget-byte v11, v11, v15

    int-to-byte v11, v11

    const/16 v15, 0x308

    int-to-short v15, v15

    invoke-static {v14, v11, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-nez v11, :cond_1d

    goto :goto_1a

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_17
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_1a

    throw v11

    :cond_1a
    throw v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4b

    :cond_1b
    :goto_1a
    :try_start_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v14, v12, v25

    int-to-byte v14, v14

    const/16 v15, 0x336

    aget-byte v8, v12, v15

    int-to-byte v8, v8

    sget v15, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move/from16 v30, v2

    or-int/lit16 v2, v15, 0x184

    int-to-short v2, v2

    :try_start_19
    invoke-static {v14, v8, v2}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    aget-byte v2, v12, v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    int-to-byte v2, v2

    const/16 v8, 0x2e

    aget-byte v8, v12, v8

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x103

    and-int/lit16 v14, v8, 0x103

    or-int/2addr v9, v14

    int-to-short v9, v9

    invoke-static {v2, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    sget v8, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    xor-int/lit8 v9, v8, 0x53

    const/16 v11, 0x53

    and-int/2addr v8, v11

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    :try_start_1a
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    int-to-byte v2, v15

    const/16 v9, 0xd9

    aget-byte v11, v12, v9

    int-to-byte v9, v11

    const/16 v11, 0x30f

    int-to-short v11, v11

    invoke-static {v2, v9, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_1c

    throw v8

    :cond_1c
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    move/from16 v30, v2

    :goto_1b
    move-object v2, v0

    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v16, v6

    move-object/from16 v35, v7

    goto/16 :goto_2d

    :cond_1d
    move/from16 v30, v2

    if-eqz v23, :cond_39

    :try_start_1c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    sget v8, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    xor-int/lit8 v11, v8, 0xd

    const/16 v12, 0xd

    and-int/2addr v8, v12

    const/4 v12, 0x1

    shl-int/2addr v8, v12

    add-int/2addr v11, v8

    rem-int/lit16 v8, v11, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v8, 0x2

    rem-int/2addr v11, v8

    :try_start_1d
    sget-object v8, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v11, 0x186

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    const/16 v12, 0xd9

    aget-byte v14, v8, v12

    int-to-byte v12, v14

    const/16 v14, 0x34b

    aget-byte v15, v8, v14

    int-to-short v14, v15

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x19c

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    const/16 v14, 0x53

    aget-byte v8, v8, v14

    int-to-byte v8, v8

    const/16 v14, 0x36d

    int-to-short v14, v14

    invoke-static {v12, v8, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    const-wide/32 v14, -0x606386e4

    xor-long/2addr v11, v14

    :try_start_1e
    invoke-virtual {v2, v11, v12}, Ljava/util/Random;->setSeed(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1c
    if-nez v8, :cond_37

    if-nez v11, :cond_1e

    move-object/from16 v31, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    goto :goto_1d

    :cond_1e
    move-object/from16 v31, v3

    const/4 v3, 0x1

    const/4 v15, 0x1

    :goto_1d
    if-eq v15, v3, :cond_1f

    const/4 v3, 0x6

    goto :goto_1f

    :cond_1f
    if-nez v12, :cond_20

    const/16 v3, 0x17

    goto :goto_1e

    :cond_20
    const/16 v3, 0x22

    :goto_1e
    const/16 v15, 0x22

    if-eq v3, v15, :cond_21

    move/from16 v3, v20

    goto :goto_1f

    :cond_21
    if-nez v14, :cond_22

    const/4 v3, 0x4

    goto :goto_1f

    :cond_22
    const/4 v3, 0x3

    :goto_1f
    :try_start_1f
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    xor-int/lit8 v32, v3, 0x1

    and-int/lit8 v33, v3, 0x1

    const/16 v29, 0x1

    shl-int/lit8 v33, v33, 0x1

    move-object/from16 v34, v4

    add-int v4, v32, v33

    :try_start_20
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x2e

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_23

    const/16 v32, 0x5c

    goto :goto_21

    :cond_23
    const/16 v32, 0x5e

    :goto_21
    move/from16 v33, v3

    move/from16 v3, v32

    move-object/from16 v32, v5

    const/16 v5, 0x5e

    if-eq v3, v5, :cond_28

    sget v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v3, v3, 0x10

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    const/16 v28, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v24, :cond_24

    const/16 v3, 0x5a

    move-object/from16 v35, v7

    goto :goto_22

    :cond_24
    move-object/from16 v35, v7

    const/16 v3, 0x53

    :goto_22
    const/16 v7, 0x5a

    if-eq v3, v7, :cond_25

    const/16 v3, 0xc

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    not-int v3, v3

    rsub-int v3, v3, 0x2000

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    goto :goto_25

    :cond_25
    and-int/lit8 v3, v5, 0x7d

    or-int/lit8 v5, v5, 0x7d

    add-int/2addr v3, v5

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    if-nez v3, :cond_26

    const/16 v3, 0xb

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_23

    :cond_26
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_27

    :goto_23
    or-int/lit8 v5, v3, 0x41

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    xor-int/lit8 v3, v3, 0x41

    sub-int/2addr v5, v3

    goto :goto_24

    :cond_27
    add-int/lit8 v5, v3, 0x60

    :goto_24
    int-to-char v3, v5

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 v4, v4, 0x2

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    move-object/from16 v5, v32

    move/from16 v3, v33

    move-object/from16 v7, v35

    goto :goto_20

    :cond_28
    move-object/from16 v35, v7

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    if-nez v11, :cond_29

    const/4 v4, 0x0

    goto :goto_26

    :cond_29
    const/4 v4, 0x1

    :goto_26
    if-eqz v4, :cond_35

    if-nez v12, :cond_2a

    const/16 v4, 0x61

    goto :goto_27

    :cond_2a
    const/16 v4, 0x42

    :goto_27
    const/16 v5, 0x42

    if-eq v4, v5, :cond_2c

    const/4 v4, 0x2

    :try_start_23
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x0

    aput-object v9, v5, v3

    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x13

    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xd9

    aget-byte v12, v3, v7

    int-to-byte v7, v12

    invoke-static {v4, v7, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/Class;

    const/16 v7, 0x13

    aget-byte v15, v3, v7

    int-to-byte v7, v15

    const/16 v15, 0xd9

    aget-byte v3, v3, v15

    int-to-byte v3, v3

    invoke-static {v7, v3, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v12, v7

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v12, v7

    invoke-virtual {v4, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-object/from16 v33, v2

    move-object v12, v3

    goto/16 :goto_29

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2b

    throw v3

    :cond_2b
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    :cond_2c
    if-nez v14, :cond_30

    sget v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_2d

    const/4 v4, 0x0

    goto :goto_28

    :cond_2d
    const/4 v4, 0x1

    :goto_28
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2f

    :try_start_25
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v7

    const/4 v3, 0x0

    aput-object v9, v4, v3

    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v5, 0x13

    aget-byte v7, v3, v5

    int-to-byte v5, v7

    const/16 v7, 0xd9

    aget-byte v14, v3, v7

    int-to-byte v7, v14

    invoke-static {v5, v7, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    new-array v14, v7, [Ljava/lang/Class;

    const/16 v7, 0x13

    aget-byte v15, v3, v7

    int-to-byte v7, v15

    const/16 v15, 0xd9

    aget-byte v3, v3, v15

    int-to-byte v3, v3

    invoke-static {v7, v3, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v14, v7

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v14, v7

    invoke-virtual {v5, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    move-object/from16 v33, v2

    move-object v14, v3

    goto/16 :goto_29

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2e

    throw v3

    :cond_2e
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    :cond_2f
    const/4 v2, 0x0

    :try_start_27
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    :catchall_8
    move-exception v0

    goto/16 :goto_2c

    :cond_30
    const/4 v4, 0x2

    :try_start_28
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x0

    aput-object v9, v5, v3

    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x13

    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v7, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x13

    aget-byte v15, v3, v7

    int-to-byte v7, v15

    move-object/from16 v33, v2

    const/16 v15, 0xd9

    aget-byte v2, v3, v15

    int-to-byte v2, v2

    invoke-static {v7, v2, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v8, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    :try_start_29
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/16 v5, 0xd

    aget-byte v7, v3, v5

    int-to-byte v5, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x2b0

    and-int/lit16 v15, v7, 0x2b0

    or-int/2addr v8, v15

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x13

    aget-byte v15, v3, v7

    int-to-byte v7, v15

    move-object/from16 v36, v11

    const/16 v15, 0xd9

    aget-byte v11, v3, v15

    int-to-byte v11, v11

    invoke-static {v7, v11, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v8, v11

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    const/16 v5, 0xd

    :try_start_2a
    aget-byte v7, v3, v5

    int-to-byte v5, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x2b0

    and-int/lit16 v11, v7, 0x2b0

    or-int/2addr v8, v11

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v3, v25

    int-to-byte v7, v7

    const/16 v8, 0x53

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x290

    int-to-short v8, v8

    invoke-static {v7, v3, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    move-object v8, v2

    move-object/from16 v11, v36

    goto/16 :goto_29

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_2b
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_31

    throw v4

    :cond_31
    throw v3

    :catchall_a
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_32

    throw v4

    :cond_32
    throw v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    :catch_6
    move-exception v0

    move-object v3, v0

    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v7, v5, v25

    int-to-byte v7, v7

    const/16 v8, 0x336

    aget-byte v9, v5, v8

    int-to-byte v8, v9

    const/16 v9, 0x369

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    aget-byte v2, v5, v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    int-to-byte v2, v2

    const/16 v7, 0x2e

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x103

    and-int/lit16 v9, v7, 0x103

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v2, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    const/4 v4, 0x2

    :try_start_2d
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const/4 v3, 0x0

    aput-object v2, v7, v3

    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v2, v2

    const/16 v3, 0xd9

    aget-byte v4, v5, v3

    int-to-byte v3, v4

    const/16 v4, 0x30f

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_33

    throw v3

    :cond_33
    throw v2

    :catchall_c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_34

    throw v3

    :cond_34
    throw v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    :cond_35
    move-object/from16 v33, v2

    const/4 v2, 0x2

    :try_start_2f
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x0

    aput-object v9, v4, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v3, 0x13

    aget-byte v5, v2, v3

    int-to-byte v3, v5

    const/16 v5, 0xd9

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    invoke-static {v3, v5, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    const/16 v5, 0x13

    aget-byte v11, v2, v5

    int-to-byte v5, v11

    const/16 v11, 0xd9

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    invoke-static {v5, v2, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v7, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    move-object v11, v2

    :goto_29
    move-object/from16 v3, v31

    move-object/from16 v5, v32

    move-object/from16 v2, v33

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    goto/16 :goto_1c

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_30
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_36

    throw v3

    :cond_36
    throw v2

    :catchall_e
    move-exception v0

    goto :goto_2b

    :catchall_f
    move-exception v0

    goto :goto_2a

    :cond_37
    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v35, v7

    move-object/from16 v36, v11

    goto :goto_2f

    :catchall_10
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v35, v7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_38

    throw v3

    :cond_38
    throw v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_2c

    :catchall_12
    move-exception v0

    move-object/from16 v31, v3

    :goto_2a
    move-object/from16 v34, v4

    :goto_2b
    move-object/from16 v32, v5

    move-object/from16 v35, v7

    :goto_2c
    move-object v2, v0

    move-object/from16 v16, v6

    :goto_2d
    move/from16 v38, v10

    :goto_2e
    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    goto/16 :goto_5b

    :cond_39
    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v35, v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v36, 0x0

    :goto_2f
    const/16 v2, 0x1cc8

    :try_start_31
    new-array v2, v2, [B

    const-class v3, Lcom/appsflyer/internal/AFa1vSDK;

    sget-object v4, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v5, 0x11

    aget-byte v5, v4, v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4a

    int-to-byte v5, v5

    const/4 v7, 0x4

    :try_start_32
    aget-byte v9, v4, v7
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_49

    int-to-byte v7, v9

    const/16 v9, 0x294

    int-to-short v9, v9

    :try_start_33
    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4a

    const/4 v5, 0x1

    :try_start_34
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v7, v5

    const/16 v3, 0x252

    aget-byte v5, v4, v3

    int-to-byte v3, v5

    const/16 v5, 0xd9

    aget-byte v9, v4, v5

    int-to-byte v5, v9

    xor-int/lit16 v9, v5, 0x1bc

    and-int/lit16 v11, v5, 0x1bc

    or-int/2addr v9, v11

    int-to-short v9, v9

    invoke-static {v3, v5, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Class;

    sget v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v5, v5

    const/16 v11, 0xd9

    aget-byte v15, v4, v11

    int-to-byte v11, v15

    const/16 v15, 0x3ca

    int-to-short v15, v15

    invoke-static {v5, v11, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_47

    sget v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    and-int/lit8 v7, v5, 0x65

    or-int/lit8 v5, v5, 0x65

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v7, v5

    const/4 v5, 0x1

    :try_start_35
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v7, v5

    const/16 v5, 0x252

    aget-byte v9, v4, v5

    int-to-byte v5, v9

    const/16 v9, 0xd9

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    xor-int/lit16 v11, v9, 0x1bc

    and-int/lit16 v15, v9, 0x1bc

    or-int/2addr v11, v15

    int-to-short v11, v11

    invoke-static {v5, v9, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v9, 0xc8

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0xe7

    aget-byte v11, v4, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v15, 0xc0

    int-to-short v15, v15

    invoke-static {v9, v11, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v15, v11

    invoke-virtual {v5, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_46

    const/16 v5, 0x252

    :try_start_36
    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0xd9

    aget-byte v9, v4, v7

    int-to-byte v7, v9

    xor-int/lit16 v9, v7, 0x1bc

    and-int/lit16 v11, v7, 0x1bc

    or-int/2addr v9, v11

    int-to-short v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v4, v25
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_45

    int-to-byte v7, v7

    const/16 v9, 0x53

    :try_start_37
    aget-byte v4, v4, v9
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_44

    int-to-byte v4, v4

    const/16 v9, 0x290

    int-to-short v9, v9

    :try_start_38
    invoke-static {v7, v4, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_45

    const/16 v3, 0x10

    const/16 v5, 0x1ca2

    move-object/from16 v9, v34

    const/4 v7, 0x0

    :goto_30
    add-int/lit16 v11, v3, 0xfa

    or-int/lit16 v15, v3, 0x1cb7

    const/16 v24, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/lit16 v4, v3, 0x1cb7

    sub-int/2addr v15, v4

    :try_start_39
    aget-byte v4, v2, v15

    and-int/lit8 v15, v4, -0x7d

    or-int/lit8 v4, v4, -0x7d

    add-int/2addr v15, v4

    int-to-byte v4, v15

    aput-byte v4, v2, v11

    array-length v4, v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_4a

    neg-int v11, v3

    not-int v11, v11

    sub-int/2addr v4, v11

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    const/4 v15, 0x3

    :try_start_3a
    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x2

    aput-object v4, v11, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v11, v15

    const/4 v4, 0x0

    aput-object v2, v11, v4

    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x23

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    move/from16 v33, v5

    const/16 v15, 0xd9

    aget-byte v5, v2, v15

    int-to-byte v5, v5

    shl-int/lit8 v15, v5, 0x1

    int-to-short v15, v15

    invoke-static {v4, v5, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v15, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v15, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x1

    aput-object v5, v15, v29

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v5, v15, v28

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v38, v4

    check-cast v38, Ljava/io/InputStream;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_43

    :try_start_3b
    sget-object v4, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_4a

    if-nez v4, :cond_3b

    const/16 v40, 0x0

    const v4, -0x18e32876

    :try_start_3c
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    const-string v4, ""
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_11

    const/4 v11, 0x2

    :try_start_3d
    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v29, 0x1

    aput-object v17, v15, v29

    aput-object v4, v15, v11

    const/16 v4, 0x81

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v11, 0x264

    aget-byte v11, v2, v11

    neg-int v11, v11

    int-to-byte v11, v11

    move-object/from16 v44, v8

    const/16 v8, 0x321

    int-to-short v8, v8

    invoke-static {v4, v11, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x1d9

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    move-object/from16 v45, v12

    const/16 v11, 0xa

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    move-object/from16 v46, v14

    const/16 v12, 0x336

    int-to-short v14, v12

    invoke-static {v8, v11, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aput-object v11, v12, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v11, v12, v14

    invoke-virtual {v4, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_13

    neg-int v4, v4

    xor-int/lit8 v8, v4, 0x1

    const/4 v11, 0x1

    and-int/2addr v4, v11

    shl-int/2addr v4, v11

    add-int v43, v8, v4

    const/4 v4, 0x2

    :try_start_3e
    new-array v8, v4, [I

    sget-wide v11, Lcom/appsflyer/internal/AFa1vSDK;->onInstallConversionFailureNative:J

    const/16 v4, 0x20

    ushr-long v14, v11, v4

    long-to-int v4, v14

    xor-int/2addr v4, v5

    const/4 v14, 0x0

    aput v4, v8, v14

    long-to-int v4, v11

    not-int v11, v5

    and-int/2addr v11, v4

    not-int v4, v4

    and-int/2addr v4, v5

    or-int/2addr v4, v11

    const/4 v5, 0x1

    aput v4, v8, v5

    new-instance v4, Lcom/appsflyer/internal/AFe1cSDK;

    sget v41, Lcom/appsflyer/internal/AFa1vSDK;->onInstallConversionDataLoadedNative:I

    const/16 v42, 0x0

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    invoke-direct/range {v37 .. v43}, Lcom/appsflyer/internal/AFe1cSDK;-><init>(Ljava/io/InputStream;[I[BIZI)V

    move-object/from16 v16, v6

    :goto_31
    const/16 v5, 0x10

    goto/16 :goto_32

    :catchall_13
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3a

    throw v3

    :cond_3a
    throw v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_11

    :cond_3b
    move-object/from16 v44, v8

    move-object/from16 v45, v12

    move-object/from16 v46, v14

    const/16 v5, 0x10

    :try_start_3f
    new-array v5, v5, [B

    const/16 v8, -0x6d

    const/4 v11, 0x0

    aput-byte v8, v5, v11

    const/16 v8, 0x3f

    const/4 v11, 0x1

    aput-byte v8, v5, v11

    const/16 v8, 0x41

    const/4 v11, 0x2

    aput-byte v8, v5, v11

    const/16 v8, 0x9

    const/4 v11, 0x3

    aput-byte v8, v5, v11
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4a

    const/16 v8, 0x3a

    const/4 v11, 0x4

    :try_start_40
    aput-byte v8, v5, v11
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_42

    const/16 v8, 0x65

    :try_start_41
    aput-byte v8, v5, v20

    const/16 v8, 0xb

    const/4 v11, 0x6

    aput-byte v8, v5, v11

    const/4 v8, 0x7

    const/16 v12, 0xf

    aput-byte v12, v5, v8

    const/16 v8, 0x8

    const/16 v12, -0x3f

    aput-byte v12, v5, v8

    const/16 v8, -0x49

    const/16 v12, 0x9

    aput-byte v8, v5, v12

    const/16 v8, 0x50

    const/16 v12, 0xa

    aput-byte v8, v5, v12

    const/16 v8, 0xb

    const/16 v12, -0x25

    aput-byte v12, v5, v8

    const/16 v8, 0xc

    const/16 v12, 0x47

    aput-byte v12, v5, v8
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_4a

    const/16 v8, -0x19

    const/16 v12, 0xd

    :try_start_42
    aput-byte v8, v5, v12
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_41

    const/16 v8, 0xe

    const/16 v12, -0x10

    :try_start_43
    aput-byte v12, v5, v8

    const/16 v8, 0xf

    const/16 v12, -0x55

    aput-byte v12, v5, v8

    const v8, 0x1bb16cc6

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    neg-int v12, v12

    not-int v12, v12

    sub-int/2addr v8, v12

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v14
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_4a

    shr-int/lit8 v14, v14, 0x10

    neg-int v14, v14

    or-int/lit8 v15, v14, 0x4

    shl-int/2addr v15, v12

    const/4 v12, 0x4

    xor-int/2addr v14, v12

    sub-int/2addr v15, v14

    :try_start_44
    new-array v14, v12, [Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_40

    :try_start_45
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x3

    aput-object v12, v14, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v14, v12

    const/4 v8, 0x1

    aput-object v5, v14, v8

    const/4 v5, 0x0

    aput-object v38, v14, v5

    const/16 v5, 0x29

    aget-byte v5, v2, v5
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3f

    int-to-byte v5, v5

    const/16 v8, 0x53

    :try_start_46
    aget-byte v12, v2, v8
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_3e

    int-to-byte v8, v12

    const/16 v12, 0xc8

    int-to-short v12, v12

    :try_start_47
    invoke-static {v5, v8, v12}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    check-cast v8, Ljava/lang/ClassLoader;

    const/4 v12, 0x1

    invoke-static {v5, v12, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x180

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v12, 0x18a

    aget-byte v12, v2, v12

    or-int/lit8 v15, v12, 0x1

    const/16 v16, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/lit8 v12, v12, 0x1

    sub-int/2addr v15, v12

    int-to-byte v12, v15

    const/16 v15, 0x2eb

    int-to-short v15, v15

    invoke-static {v8, v12, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3f

    const/4 v12, 0x4

    :try_start_48
    new-array v15, v12, [Ljava/lang/Class;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_40

    :try_start_49
    sget v12, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v12, v12

    const/16 v16, 0xd9

    aget-byte v11, v2, v16
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3f

    int-to-byte v11, v11

    move-object/from16 v16, v6

    const/16 v6, 0x3ca

    int-to-short v6, v6

    :try_start_4a
    invoke-static {v12, v11, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v15, v11

    const/4 v6, 0x1

    aput-object v1, v15, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v6, v15, v11

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v6, v15, v11

    invoke-virtual {v5, v8, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3d

    goto/16 :goto_31

    :goto_32
    int-to-long v11, v5

    const/4 v6, 0x1

    :try_start_4b
    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v8, v11

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v11, v6

    const/16 v12, 0xd9

    aget-byte v14, v2, v12

    int-to-byte v12, v14

    const/16 v14, 0x3ca

    int-to-short v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x59

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    const/16 v15, 0x4a

    int-to-byte v15, v15

    or-int/lit16 v5, v15, 0x205

    int-to-short v5, v5

    invoke-static {v12, v15, v5}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3c

    move/from16 v38, v10

    const/4 v12, 0x1

    :try_start_4c
    new-array v10, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v12, v10, v17

    invoke-virtual {v11, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_3b

    if-eqz v23, :cond_51

    :try_start_4d
    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_24

    if-nez v5, :cond_3c

    move-object/from16 v6, v36

    goto :goto_33

    :cond_3c
    move-object/from16 v6, v45

    :goto_33
    if-nez v5, :cond_3d

    move-object/from16 v5, v46

    goto :goto_34

    :cond_3d
    move-object/from16 v5, v44

    :goto_34
    const/4 v8, 0x1

    :try_start_4e
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v10, v8

    const/16 v8, 0xd

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    const/16 v11, 0xd9

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    xor-int/lit16 v12, v11, 0x2b0

    move-object/from16 v39, v7

    and-int/lit16 v7, v11, 0x2b0

    or-int/2addr v7, v12

    int-to-short v7, v7

    invoke-static {v8, v11, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const/16 v8, 0x13

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    const/16 v12, 0xd9

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v8, v2, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v11, v8

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1e

    const/16 v7, 0x400

    :try_start_4f
    new-array v8, v7, [B
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1f

    sget v10, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    or-int/lit8 v11, v10, 0x73

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    xor-int/lit8 v10, v10, 0x73

    sub-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    move/from16 v10, v33

    :goto_35
    if-lez v10, :cond_3e

    const/4 v11, 0x1

    goto :goto_36

    :cond_3e
    const/4 v11, 0x0

    :goto_36
    const/4 v12, 0x1

    if-eq v11, v12, :cond_3f

    move/from16 v40, v3

    move-object/from16 v42, v9

    move/from16 v41, v14

    goto/16 :goto_37

    :cond_3f
    :try_start_50
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1f

    const/4 v12, 0x3

    :try_start_51
    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v7, v12

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v7, v17

    aput-object v8, v7, v11

    sget v11, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v11, v11

    sget-object v12, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    move/from16 v40, v3

    const/16 v22, 0xd9

    aget-byte v3, v12, v22

    int-to-byte v3, v3

    invoke-static {v11, v3, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v11, 0x59

    aget-byte v11, v12, v11

    int-to-byte v11, v11

    const/16 v41, 0xe7

    move-object/from16 v42, v9

    aget-byte v9, v12, v41

    neg-int v9, v9

    int-to-byte v9, v9

    move/from16 v41, v14

    const/16 v14, 0x100

    int-to-short v14, v14

    invoke-static {v11, v9, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v14, v11

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x1

    aput-object v11, v14, v29

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v11, v14, v28

    invoke-virtual {v3, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1d

    const/4 v7, -0x1

    if-eq v3, v7, :cond_41

    sget v7, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v7, v7, 0x5f

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v9, 0x2

    rem-int/2addr v7, v9

    const/4 v7, 0x3

    :try_start_52
    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v9

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v11, v14

    aput-object v8, v11, v7

    const/16 v7, 0xd

    aget-byte v9, v12, v7

    int-to-byte v7, v9

    const/16 v9, 0xd9

    aget-byte v14, v12, v9

    int-to-byte v9, v14

    or-int/lit16 v14, v9, 0x2b0

    int-to-short v14, v14

    invoke-static {v7, v9, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v9, v12, v25

    int-to-byte v9, v9

    const/16 v12, 0x4e

    int-to-byte v12, v12

    const/16 v14, 0xf2

    int-to-short v14, v14

    invoke-static {v9, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x1

    aput-object v12, v14, v29

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v12, v14, v28

    invoke-virtual {v7, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_14

    neg-int v3, v3

    not-int v3, v3

    sub-int/2addr v10, v3

    const/4 v3, 0x1

    sub-int/2addr v10, v3

    move/from16 v3, v40

    move/from16 v14, v41

    move-object/from16 v9, v42

    const/16 v7, 0x400

    goto/16 :goto_35

    :catchall_14
    move-exception v0

    move-object v2, v0

    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_40

    throw v3

    :cond_40
    throw v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1f

    :cond_41
    :goto_37
    :try_start_54
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0xd

    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    or-int/lit16 v8, v7, 0x2b0

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v7, v3, v25

    int-to-byte v7, v7

    const/16 v8, 0xa

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x26e

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1c

    const/16 v7, 0x81

    :try_start_55
    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v8, 0xd9

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    xor-int/lit16 v9, v8, 0x33c

    and-int/lit16 v10, v8, 0x33c

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x59

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0x16d

    int-to-short v9, v9

    invoke-static {v8, v15, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1b

    const/16 v4, 0xd

    :try_start_56
    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    or-int/lit16 v8, v7, 0x2b0

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v7, v3, v25

    int-to-byte v7, v7

    const/16 v8, 0x53

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x290

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1a

    const/16 v2, 0x1d

    :try_start_57
    aget-byte v4, v3, v2

    neg-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x40

    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0x103

    int-to-short v7, v7

    invoke-static {v2, v4, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x180

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v7, 0x331

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    sget v8, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v9, v8, 0x202

    and-int/lit16 v8, v8, 0x202

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v8, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1f

    const/16 v4, 0x13

    :try_start_58
    aget-byte v8, v3, v4

    int-to-byte v4, v8

    const/16 v8, 0xd9

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    invoke-static {v4, v8, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x1a4

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0xa

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    const/16 v10, 0x2c4

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_19

    const/4 v8, 0x0

    :try_start_59
    aput-object v4, v7, v8
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1f

    const/16 v4, 0x13

    :try_start_5a
    aget-byte v8, v3, v4

    int-to-byte v4, v8

    const/16 v8, 0xd9

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    invoke-static {v4, v8, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x1a4

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0xa

    aget-byte v11, v3, v9

    int-to-byte v9, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_18

    const/4 v8, 0x1

    :try_start_5b
    aput-object v4, v7, v8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x2

    aput-object v8, v7, v4

    invoke-virtual {v2, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1f

    const/16 v4, 0x13

    :try_start_5c
    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v7, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x18

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v8, 0x40

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x269

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_17

    const/16 v4, 0x13

    :try_start_5d
    aget-byte v6, v3, v4

    int-to-byte v4, v6

    const/16 v6, 0xd9

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    invoke-static {v4, v6, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x18

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x40

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_16

    :try_start_5e
    sget-object v4, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    if-nez v4, :cond_42

    const/16 v4, 0x2b

    goto :goto_38

    :cond_42
    const/4 v4, 0x2

    :goto_38
    const/4 v5, 0x2

    if-eq v4, v5, :cond_44

    const-class v4, Lcom/appsflyer/internal/AFa1vSDK;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_24

    :try_start_5f
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x1d9

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0xa

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    const/16 v7, 0x252

    int-to-short v8, v7

    invoke-static {v6, v3, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_15

    :try_start_60
    sput-object v3, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    goto :goto_39

    :catchall_15
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    throw v3

    :cond_43
    throw v2

    :cond_44
    :goto_39
    move/from16 v11, v41

    const/16 v12, 0xd

    goto/16 :goto_45

    :catchall_16
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_45

    throw v3

    :cond_45
    throw v2

    :catchall_17
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_46

    throw v3

    :cond_46
    throw v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_24

    :catchall_18
    move-exception v0

    move-object v2, v0

    :try_start_61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_47

    throw v3

    :cond_47
    throw v2

    :catchall_19
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_48

    throw v3

    :cond_48
    throw v2

    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_49

    throw v3

    :cond_49
    throw v2

    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4a

    throw v3

    :cond_4a
    throw v2

    :catchall_1c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4b

    throw v3

    :cond_4b
    throw v2

    :catchall_1d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4c

    throw v3

    :cond_4c
    throw v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1f

    :catchall_1e
    move-exception v0

    move-object v2, v0

    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4d

    throw v3

    :cond_4d
    throw v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_7
    .catchall {:try_start_62 .. :try_end_62} :catchall_1f

    :catchall_1f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_3a

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v7, v4, v25

    int-to-byte v7, v7

    const/16 v8, 0x336

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    sget v9, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v10, v9, 0x188

    and-int/lit16 v11, v9, 0x188

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5c

    aget-byte v7, v4, v7

    const/4 v8, 0x0

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x2e

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    xor-int/lit16 v10, v8, 0x103

    and-int/lit16 v11, v8, 0x103

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1f

    const/4 v7, 0x2

    :try_start_64
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v2, v8, v7

    const/4 v2, 0x0

    aput-object v3, v8, v2

    int-to-byte v2, v9

    const/16 v3, 0xd9

    aget-byte v4, v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x30f

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v3, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_20

    :catchall_20
    move-exception v0

    move-object v2, v0

    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4e

    throw v3

    :cond_4e
    throw v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1f

    :goto_3a
    :try_start_66
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_23

    const/16 v4, 0x13

    :try_start_67
    aget-byte v7, v3, v4
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_22

    int-to-byte v4, v7

    const/16 v7, 0xd9

    :try_start_68
    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v7, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x18

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v8, 0x40

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x269

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_23

    const/16 v7, 0x13

    :try_start_69
    aget-byte v4, v3, v7

    int-to-byte v4, v4

    const/16 v6, 0xd9

    aget-byte v8, v3, v6

    int-to-byte v6, v8

    invoke-static {v4, v6, v13}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x18

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v8, 0x40

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v6, v3, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_21

    :try_start_6a
    throw v2

    :catchall_21
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4f

    throw v3

    :cond_4f
    throw v2

    :catchall_22
    move-exception v0

    move v7, v4

    goto :goto_3b

    :catchall_23
    move-exception v0

    const/16 v7, 0x13

    :goto_3b
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_50

    throw v3

    :cond_50
    throw v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_24

    :catchall_24
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2e

    :cond_51
    move/from16 v40, v3

    move-object/from16 v39, v7

    move-object/from16 v42, v9

    move/from16 v41, v14

    const/16 v7, 0x13

    :try_start_6b
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3a

    sget v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v8, 0x1

    add-int/2addr v5, v8

    rem-int/lit16 v9, v5, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    const/4 v9, 0x2

    rem-int/2addr v5, v9

    :try_start_6c
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v5, v8

    const/16 v3, 0x7c

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v8, 0xd9

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/4 v9, 0x2

    aget-byte v10, v2, v9

    int-to-short v9, v10

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    int-to-byte v8, v6

    const/16 v10, 0xd9

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    move/from16 v11, v41

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_39

    const/16 v5, 0x71

    :try_start_6d
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v8, 0xd9

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    or-int/lit16 v6, v6, 0x208

    int-to-short v6, v6

    invoke-static {v5, v2, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_38

    const/16 v5, 0x400

    :try_start_6e
    new-array v5, v5, [B
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_3a

    const/4 v6, 0x0

    :goto_3c
    const/4 v8, 0x1

    :try_start_6f
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v9, v8

    sget-object v8, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v10, 0x7c

    aget-byte v10, v8, v10

    int-to-byte v10, v10

    const/16 v12, 0xd9

    aget-byte v14, v8, v12

    int-to-byte v12, v14

    const/4 v14, 0x2

    aget-byte v15, v8, v14

    int-to-short v14, v15

    invoke-static {v10, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x59

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    const/16 v14, 0xe7

    aget-byte v14, v8, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v15, 0x100

    int-to-short v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    invoke-virtual {v10, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_37

    if-lez v9, :cond_56

    sget v10, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    or-int/lit8 v12, v10, 0x2f

    const/4 v14, 0x1

    shl-int/2addr v12, v14

    xor-int/lit8 v10, v10, 0x2f

    sub-int/2addr v12, v10

    rem-int/lit16 v10, v12, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v10, 0x2

    rem-int/2addr v12, v10

    if-eqz v12, :cond_55

    int-to-long v14, v6

    :try_start_70
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v47
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_24

    cmp-long v10, v14, v47

    if-gez v10, :cond_52

    const/4 v10, 0x1

    goto :goto_3d

    :cond_52
    const/4 v10, 0x0

    :goto_3d
    const/4 v12, 0x1

    if-eq v10, v12, :cond_53

    goto :goto_3f

    :cond_53
    const/4 v10, 0x3

    :try_start_71
    new-array v12, v10, [Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_26

    :try_start_72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v12, v14

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    aput-object v5, v12, v10

    const/16 v10, 0x71

    aget-byte v10, v8, v10

    int-to-byte v10, v10

    const/16 v14, 0xd9

    aget-byte v15, v8, v14

    int-to-byte v14, v15

    sget v15, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v7, v15, 0x208

    and-int/lit16 v15, v15, 0x208

    or-int/2addr v7, v15

    int-to-short v7, v7

    invoke-static {v10, v14, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v8, v8, v25

    int-to-byte v8, v8

    const/16 v10, 0x4e

    int-to-byte v10, v10

    const/16 v14, 0xf2

    int-to-short v14, v14

    invoke-static {v8, v10, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_25

    const/4 v10, 0x3

    :try_start_73
    new-array v14, v10, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x1

    aput-object v15, v14, v21

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x2

    aput-object v15, v14, v21

    invoke-virtual {v7, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_26

    xor-int v7, v6, v9

    and-int/2addr v6, v9

    const/4 v8, 0x1

    shl-int/2addr v6, v8

    add-int/2addr v6, v7

    const/16 v7, 0x13

    goto/16 :goto_3c

    :catchall_25
    move-exception v0

    const/4 v10, 0x3

    goto :goto_3e

    :catchall_26
    move-exception v0

    :goto_3e
    move-object v2, v0

    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_54

    throw v3

    :cond_54
    throw v2

    :cond_55
    const/4 v10, 0x3

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    const/4 v2, 0x0

    throw v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_24

    :cond_56
    :goto_3f
    const/4 v10, 0x3

    sget v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    const/16 v4, 0x71

    :try_start_75
    aget-byte v4, v8, v4

    int-to-byte v4, v4

    const/16 v5, 0xd9

    aget-byte v6, v8, v5

    int-to-byte v5, v6

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v7, v6, 0x208

    and-int/lit16 v6, v6, 0x208

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x34b

    aget-byte v6, v8, v5

    int-to-byte v6, v6

    const/16 v7, 0x18a

    aget-byte v7, v8, v7

    xor-int/lit8 v9, v7, -0x1

    and-int/lit8 v7, v7, -0x1

    const/4 v12, 0x1

    shl-int/2addr v7, v12

    add-int/2addr v9, v7

    int-to-byte v7, v9

    const/16 v9, 0x392

    int-to-short v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_36

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v6, v6, 0x15

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    const/16 v6, 0x7c

    :try_start_76
    aget-byte v6, v8, v6

    int-to-byte v6, v6

    const/16 v7, 0xd9

    aget-byte v9, v8, v7

    int-to-byte v7, v9

    const/4 v9, 0x2

    aget-byte v12, v8, v9

    int-to-short v9, v12

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v8, v25

    int-to-byte v7, v7

    const/16 v9, 0x53

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x290

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_27

    goto :goto_40

    :catchall_27
    move-exception v0

    move-object v3, v0

    :try_start_77
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_57

    throw v6

    :cond_57
    throw v3
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_77} :catch_8
    .catchall {:try_start_77 .. :try_end_77} :catchall_24

    :catch_8
    :goto_40
    :try_start_78
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v6, 0x71

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0xd9

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    sget v8, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    or-int/lit16 v8, v8, 0x208

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v3, v25

    int-to-byte v7, v7

    const/16 v8, 0x53

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x290

    int-to-short v8, v8

    invoke-static {v7, v3, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_28

    goto :goto_41

    :catchall_28
    move-exception v0

    move-object v2, v0

    :try_start_79
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_58

    throw v3

    :cond_58
    throw v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_79} :catch_9
    .catchall {:try_start_79 .. :try_end_79} :catchall_24

    :catch_9
    :goto_41
    :try_start_7a
    const-class v2, Lcom/appsflyer/internal/AFa1vSDK;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3a

    :try_start_7b
    const-class v3, Ljava/lang/Class;

    sget-object v6, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v7, 0x1d9

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v8, 0xa

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    const/16 v9, 0x252

    int-to-short v12, v9

    invoke-static {v7, v8, v12}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_35

    const/16 v3, 0x2e

    :try_start_7c
    aget-byte v3, v6, v3

    int-to-byte v3, v3

    const/16 v7, 0x40

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    sget v8, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    xor-int/lit16 v9, v8, 0x8c

    and-int/lit16 v12, v8, 0x8c

    or-int/2addr v9, v12

    int-to-short v9, v9

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Class;

    int-to-byte v7, v8

    const/16 v12, 0xd9

    aget-byte v14, v6, v12

    int-to-byte v12, v14

    or-int/lit8 v14, v12, 0x18

    int-to-short v14, v14

    invoke-static {v7, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v9, v12

    const/16 v7, 0x1d

    aget-byte v12, v6, v7

    neg-int v7, v12

    int-to-byte v7, v7

    const/16 v12, 0xd9

    aget-byte v14, v6, v12

    int-to-byte v12, v14

    const/16 v14, 0x1a1

    int-to-short v14, v14

    invoke-static {v7, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v9, v12

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3a

    :try_start_7d
    new-array v7, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v7, v12

    int-to-byte v4, v8

    const/16 v12, 0xd9

    aget-byte v14, v6, v12

    int-to-byte v12, v14

    or-int/lit8 v14, v12, 0x18

    int-to-short v14, v14

    invoke-static {v4, v12, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v12, 0x59

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    const/16 v14, 0x4e

    int-to-byte v14, v14

    const/16 v15, 0x3b0

    int-to-short v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v1, v15, v17

    invoke-virtual {v4, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_34

    :try_start_7e
    aput-object v4, v9, v17

    aput-object v2, v9, v14

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3a

    const/16 v4, 0x25

    :try_start_7f
    aget-byte v4, v6, v4

    int-to-byte v4, v4

    const/16 v7, 0x40

    aget-byte v9, v6, v7

    int-to-byte v7, v9

    const/16 v9, 0x120

    int-to-short v9, v9

    invoke-static {v4, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x336

    aget-byte v9, v6, v7

    int-to-byte v7, v9

    const/16 v9, 0x199

    aget-byte v9, v6, v9

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    int-to-byte v9, v9

    const/16 v14, 0x343

    int-to-short v14, v14

    invoke-static {v7, v9, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_e
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3a

    const/16 v12, 0xd

    :try_start_80
    aget-byte v14, v6, v12

    int-to-byte v14, v14

    const/16 v15, 0x45

    int-to-byte v15, v15

    xor-int/lit16 v5, v8, 0x3a2

    and-int/lit16 v8, v8, 0x3a2

    or-int/2addr v5, v8

    int-to-short v5, v5

    invoke-static {v14, v15, v5}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v8, 0xc1

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x278

    int-to-short v8, v8

    invoke-static {v6, v15, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_d
    .catchall {:try_start_80 .. :try_end_80} :catchall_32

    const/4 v15, 0x0

    :goto_42
    if-ge v15, v14, :cond_59

    :try_start_81
    invoke-static {v7, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v15, v10}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_a
    .catchall {:try_start_81 .. :try_end_81} :catchall_2b

    add-int/lit8 v15, v15, -0x2

    const/4 v10, 0x1

    sub-int/2addr v15, v10

    add-int/lit8 v15, v15, 0x5

    sub-int/2addr v15, v10

    const/4 v10, 0x3

    goto :goto_42

    :catch_a
    move-exception v0

    move-object v3, v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    goto/16 :goto_4f

    :cond_59
    :try_start_82
    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_d
    .catchall {:try_start_82 .. :try_end_82} :catchall_32

    :try_start_83
    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    if-nez v2, :cond_5a

    const/4 v2, 0x0

    goto :goto_43

    :cond_5a
    const/4 v2, 0x1

    :goto_43
    if-eqz v2, :cond_5b

    goto :goto_44

    :cond_5b
    sput-object v3, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_32

    :goto_44
    move-object v2, v3

    :goto_45
    if-eqz v23, :cond_5f

    :try_start_84
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x1d

    aget-byte v5, v3, v4

    neg-int v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x40

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    const/16 v6, 0x103

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xc8

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x331

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x39c

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/16 v6, 0x1d

    aget-byte v8, v3, v6

    neg-int v6, v8

    int-to-byte v6, v6

    const/16 v8, 0xd9

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x1a1

    int-to-short v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v42, v7, v6

    const-class v6, Lcom/appsflyer/internal/AFa1vSDK;
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_2b

    :try_start_85
    const-class v8, Ljava/lang/Class;

    const/16 v9, 0x1d9

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v10, 0xa

    aget-byte v14, v3, v10

    int-to-byte v14, v14

    const/16 v15, 0x252

    int-to-short v10, v15

    invoke-static {v9, v14, v10}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2a

    const/4 v8, 0x1

    :try_start_86
    aput-object v6, v7, v8

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5c

    const/16 v6, 0x1a

    goto :goto_46

    :cond_5c
    const/16 v6, 0x1c

    :goto_46
    const/16 v7, 0x1c

    if-eq v6, v7, :cond_5d

    aget-byte v6, v3, v25
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2b

    int-to-byte v6, v6

    const/16 v7, 0x53

    :try_start_87
    aget-byte v3, v3, v7
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_29

    int-to-byte v3, v3

    const/16 v7, 0x290

    int-to-short v7, v7

    :try_start_88
    invoke-static {v6, v3, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :catchall_29
    move-exception v0

    move-object v2, v0

    move v8, v7

    goto :goto_48

    :cond_5d
    :goto_47
    move-object v3, v5

    const/16 v4, 0x1d

    goto :goto_49

    :catchall_2a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5e

    throw v3

    :cond_5e
    throw v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_2b

    :catchall_2b
    move-exception v0

    move-object v2, v0

    const/16 v8, 0x53

    :goto_48
    const/4 v10, 0x4

    goto/16 :goto_5b

    :cond_5f
    :try_start_89
    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x1d

    aget-byte v5, v3, v4

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xd9

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    const/16 v7, 0x1a1

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xc8

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x331

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    const/16 v7, 0x39c

    int-to-short v7, v7

    invoke-static {v6, v3, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_32

    :try_start_8a
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v42, v5, v9

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8a .. :try_end_8a} :catch_b
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2b

    goto :goto_49

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_8b
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8b .. :try_end_8b} :catch_c
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2b

    :catch_c
    const/4 v3, 0x0

    :goto_49
    if-eqz v3, :cond_65

    :try_start_8c
    move-object v7, v3

    check-cast v7, Ljava/lang/Class;

    sget-object v3, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v5, 0x29

    aget-byte v5, v3, v5
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_32

    int-to-byte v5, v5

    const/16 v6, 0x53

    :try_start_8d
    aget-byte v8, v3, v6
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_31

    int-to-byte v6, v8

    add-int/lit8 v8, v6, -0x1

    int-to-short v8, v8

    :try_start_8e
    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v8, v6

    if-nez v23, :cond_60

    const/16 v2, 0x13

    goto :goto_4a

    :cond_60
    const/16 v2, 0x28

    :goto_4a
    const/16 v6, 0x28

    if-eq v2, v6, :cond_61

    const/4 v2, 0x1

    goto :goto_4b

    :cond_61
    const/4 v2, 0x0

    :goto_4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    const/16 v2, 0x3250

    new-array v2, v2, [B

    const-class v6, Lcom/appsflyer/internal/AFa1vSDK;

    const/16 v8, 0x11

    aget-byte v8, v3, v8
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_32

    int-to-byte v8, v8

    const/4 v10, 0x4

    :try_start_8f
    aget-byte v14, v3, v10

    int-to-byte v14, v14

    const/16 v15, 0x1e4

    int-to-short v15, v15

    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_30

    const/4 v8, 0x1

    :try_start_90
    new-array v14, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v14, v8

    const/16 v6, 0x252

    aget-byte v8, v3, v6

    int-to-byte v6, v8

    const/16 v8, 0xd9

    aget-byte v15, v3, v8

    int-to-byte v8, v15

    xor-int/lit16 v15, v8, 0x1bc

    and-int/lit16 v4, v8, 0x1bc

    or-int/2addr v4, v15

    int-to-short v4, v4

    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    sget v6, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v6, v6

    const/16 v15, 0xd9

    aget-byte v5, v3, v15

    int-to-byte v5, v5

    invoke-static {v6, v5, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v8, v6

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_2f

    const/4 v5, 0x1

    :try_start_91
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v6

    const/16 v5, 0x252

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    const/16 v6, 0xd9

    aget-byte v11, v3, v6

    int-to-byte v6, v11

    xor-int/lit16 v11, v6, 0x1bc

    and-int/lit16 v14, v6, 0x1bc

    or-int/2addr v11, v14

    int-to-short v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xc8

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v11, 0xe7

    aget-byte v11, v3, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v14, 0xc0

    int-to-short v14, v14

    invoke-static {v6, v11, v14}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v14, v11

    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2e

    const/16 v5, 0x252

    :try_start_92
    aget-byte v6, v3, v5

    int-to-byte v5, v6

    const/16 v6, 0xd9

    aget-byte v8, v3, v6

    int-to-byte v6, v8

    xor-int/lit16 v8, v6, 0x1bc

    and-int/lit16 v11, v6, 0x1bc

    or-int/2addr v8, v11

    int-to-short v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v25
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_2d

    int-to-byte v6, v6

    const/16 v8, 0x53

    :try_start_93
    aget-byte v3, v3, v8

    int-to-byte v3, v3

    const/16 v11, 0x290

    int-to-short v11, v11

    invoke-static {v6, v3, v11}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2c

    :try_start_94
    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v3
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_48

    sget v4, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v4, v4, 0x4e

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    move-object/from16 v6, v16

    move/from16 v10, v38

    move-object/from16 v8, v44

    move-object/from16 v12, v45

    move-object/from16 v14, v46

    const/16 v5, 0x3228

    goto/16 :goto_30

    :catchall_2c
    move-exception v0

    goto :goto_4c

    :catchall_2d
    move-exception v0

    const/16 v8, 0x53

    :goto_4c
    move-object v2, v0

    :try_start_95
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_62

    throw v3

    :cond_62
    throw v2

    :catchall_2e
    move-exception v0

    const/16 v8, 0x53

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_63

    throw v3

    :cond_63
    throw v2

    :catchall_2f
    move-exception v0

    const/16 v8, 0x53

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_64

    throw v3

    :cond_64
    throw v2

    :catchall_30
    move-exception v0

    const/16 v8, 0x53

    goto/16 :goto_5a

    :catchall_31
    move-exception v0

    move v8, v6

    goto/16 :goto_55

    :cond_65
    const/16 v8, 0x53

    const/4 v10, 0x4

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    move-object/from16 v7, v39

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    if-nez v23, :cond_66

    const/4 v2, 0x1

    goto :goto_4d

    :cond_66
    const/4 v2, 0x0

    :goto_4d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_48

    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    or-int/lit8 v3, v2, 0x31

    shl-int/2addr v3, v4

    xor-int/lit8 v2, v2, 0x31

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    const/4 v2, 0x2

    const/16 v3, 0xd9

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v30, 0x1

    goto/16 :goto_62

    :catchall_32
    move-exception v0

    goto/16 :goto_54

    :catch_d
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    goto :goto_4e

    :catch_e
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    :goto_4e
    move-object v3, v0

    :goto_4f
    :try_start_96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    aget-byte v6, v5, v25

    int-to-byte v6, v6

    const/16 v7, 0x336

    aget-byte v9, v5, v7

    int-to-byte v7, v9

    xor-int/lit16 v9, v7, 0x181

    and-int/lit16 v11, v7, 0x181

    or-int/2addr v9, v11

    int-to-short v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    aget-byte v2, v5, v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v6, 0x2e

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    or-int/lit16 v7, v6, 0x103

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_48

    const/4 v4, 0x2

    :try_start_97
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x0

    aput-object v2, v6, v3

    sget v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v2, v2

    const/16 v3, 0xd9

    aget-byte v4, v5, v3

    int-to-byte v3, v4

    const/16 v4, 0x30f

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_33

    :catchall_33
    move-exception v0

    move-object v2, v0

    :try_start_98
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_67

    throw v3

    :cond_67
    throw v2

    :catchall_34
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_68

    throw v3

    :cond_68
    throw v2

    :catchall_35
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_69

    throw v3

    :cond_69
    throw v2

    :catchall_36
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6a

    throw v3

    :cond_6a
    throw v2

    :catchall_37
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6b

    throw v3

    :cond_6b
    throw v2

    :catchall_38
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6c

    throw v3

    :cond_6c
    throw v2

    :catchall_39
    move-exception v0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6d

    throw v3

    :cond_6d
    throw v2

    :catchall_3a
    move-exception v0

    goto/16 :goto_58

    :catchall_3b
    move-exception v0

    goto :goto_50

    :catchall_3c
    move-exception v0

    move/from16 v38, v10

    :goto_50
    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6e

    throw v3

    :cond_6e
    throw v2

    :catchall_3d
    move-exception v0

    goto :goto_51

    :catchall_3e
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    goto :goto_52

    :catchall_3f
    move-exception v0

    move-object/from16 v16, v6

    :goto_51
    move/from16 v38, v10

    const/16 v8, 0x53

    :goto_52
    const/4 v10, 0x4

    goto :goto_53

    :catchall_40
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    move v10, v12

    const/16 v8, 0x53

    :goto_53
    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6f

    throw v3

    :cond_6f
    throw v2

    :catchall_41
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    :goto_54
    const/16 v8, 0x53

    :goto_55
    const/4 v10, 0x4

    goto/16 :goto_5a

    :catchall_42
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    move v10, v11

    const/16 v8, 0x53

    goto/16 :goto_59

    :catchall_43
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_70

    throw v3

    :cond_70
    throw v2

    :catchall_44
    move-exception v0

    move-object/from16 v16, v6

    move v8, v9

    move/from16 v38, v10

    goto :goto_56

    :catchall_45
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    const/16 v8, 0x53

    :goto_56
    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_71

    throw v3

    :cond_71
    throw v2

    :catchall_46
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_72

    throw v3

    :cond_72
    throw v2

    :catchall_47
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_73

    throw v3

    :cond_73
    throw v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_48

    :catchall_48
    move-exception v0

    goto :goto_5a

    :catchall_49
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v38, v10

    const/16 v8, 0x53

    const/16 v12, 0xd

    move v10, v7

    goto :goto_5a

    :catchall_4a
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_57

    :catchall_4b
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v16, v6

    move-object/from16 v35, v7

    :goto_57
    move/from16 v38, v10

    :goto_58
    const/16 v8, 0x53

    const/4 v10, 0x4

    :goto_59
    const/16 v12, 0xd

    :goto_5a
    move-object v2, v0

    :goto_5b
    and-int/lit8 v3, v38, 0x1

    or-int/lit8 v4, v38, 0x1

    add-int/2addr v3, v4

    :goto_5c
    const/16 v4, 0x9

    if-ge v3, v4, :cond_78

    sget v5, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    and-int/lit8 v6, v5, 0x23

    or-int/lit8 v5, v5, 0x23

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    if-nez v6, :cond_74

    const/4 v5, 0x0

    goto :goto_5d

    :cond_74
    const/4 v5, 0x1

    :goto_5d
    if-eqz v5, :cond_77

    :try_start_99
    aget-boolean v5, v16, v3

    if-eqz v5, :cond_75

    const/4 v5, 0x0

    goto :goto_5e

    :cond_75
    const/4 v5, 0x1

    :goto_5e
    const/4 v6, 0x1

    if-eq v5, v6, :cond_76

    goto :goto_5f

    :cond_76
    xor-int/lit8 v5, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v3, v5

    goto :goto_5c

    :cond_77
    aget-boolean v1, v16, v3
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_f

    const/4 v1, 0x0

    :try_start_9a
    throw v1
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_f
    .catchall {:try_start_9a .. :try_end_9a} :catchall_4c

    :catchall_4c
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_78
    const/4 v6, 0x0

    :goto_5f
    if-nez v6, :cond_79

    const/16 v3, 0x1a

    goto :goto_60

    :cond_79
    const/16 v3, 0x40

    :goto_60
    const/16 v5, 0x40

    if-eq v3, v5, :cond_7c

    sget v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz v1, :cond_7a

    :try_start_9b
    sget-object v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v3, 0x6e32

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x77f5

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    xor-int/lit16 v4, v1, 0x5185

    and-int/lit16 v5, v1, 0x5185

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v3, v1, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v1

    goto :goto_61

    :cond_7a
    sget-object v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v3, 0x252

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x336

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    xor-int/lit16 v4, v1, 0x163

    and-int/lit16 v5, v1, 0x163

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v3, v1, v4}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v1
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9b} :catch_f

    :goto_61
    const/4 v3, 0x2

    :try_start_9c
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget v1, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    int-to-byte v1, v1

    sget-object v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v3, 0xd9

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x30f

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_4d

    :catchall_4d
    move-exception v0

    move-object v1, v0

    :try_start_9d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7b

    throw v2

    :cond_7b
    throw v1

    :cond_7c
    const/4 v2, 0x2

    const/16 v3, 0xd9

    const/4 v5, 0x0

    const/4 v6, 0x0

    sput-object v6, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    sput-object v6, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    goto :goto_62

    :cond_7d
    move/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v5

    move-object/from16 v16, v6

    move-object/from16 v35, v7

    move v4, v9

    move/from16 v38, v10

    move v2, v15

    const/16 v3, 0xd9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x53

    const/4 v10, 0x4

    const/16 v12, 0xd

    :goto_62
    add-int/lit8 v7, v38, -0x46

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    and-int/lit8 v11, v7, 0x48

    or-int/lit8 v7, v7, 0x48

    add-int/2addr v7, v11

    move v15, v2

    move v10, v7

    move v8, v9

    move-object/from16 v6, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    move-object/from16 v7, v35

    const/16 v12, 0x13

    move v9, v4

    move-object/from16 v4, v34

    goto/16 :goto_19

    :cond_7e
    return-void

    :catchall_4e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7f

    throw v2

    :cond_7f
    throw v1

    :catchall_4f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_80

    throw v2

    :cond_80
    throw v1

    :catchall_50
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_81

    throw v2

    :cond_81
    throw v1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_f

    :catch_f
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(I)I
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    xor-int/lit8 v1, v0, 0x71

    and-int/lit8 v0, v0, 0x71

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    xor-int/lit8 v3, v0, 0xd

    and-int/lit8 v4, v0, 0xd

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, 0x56

    sub-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object p0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x29

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x53

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0xc8

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x18

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x18a

    aget-byte p0, p0, v6

    or-int/lit8 v6, p0, 0x1

    shl-int/2addr v6, v2

    xor-int/2addr p0, v2

    sub-int/2addr v6, p0

    int-to-byte p0, v6

    const/16 v6, 0x24a

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v4, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Object;)I
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x48

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_0
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v4, 0x29

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x53

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0xc8

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x186

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x13

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    const/16 v6, 0x170

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v4, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method static init$0()V
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    xor-int/lit8 v1, v0, 0x7d

    and-int/lit8 v0, v0, 0x7d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "ISO-8859-1"

    const-string v4, "!\u008d\u00ff~\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00ca\u000c\u00fd\u00fe\u00f0\n\u00fe\u0018\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00d8\u00d7\u0003\u00fc\u000c\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f70\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00eb\u00f8\u00e2-\u00b8 \u000c\u00f6$\u00b0\u0006\u00e8\u00120\u00bd\u0002\u00f7>\u00e9\u00c6\u0002\u000c \u00ca\u000c\u00fd\u00fe\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e9\u00ca\t\u00fa\u0005=\u00cb\u000e\u00f0\u00fc\u0007\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5-\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e2\u00d8\u001e\u00e5\u00f5\u00fb\u00fa\u00f62\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\n\u0001\u00fa\u001b\u00ce\u0006\u00fd\u00f0\u00f1\u00ff<\u00ca\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0A\u00c2\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2;\u00ea\u00f8\u00e2-\u00b7!\u000c\u00f6$\u00fd\u00ff\u00ee+\u00da\u00fa\u0004\u00ef,\u00d8\u00f4\u0002\u0006\u00f2\u000c\u00ff\u00ee.\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\n\u0001\u00fa\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e7\u00dc\u00ea/\u00da\u00fa\u0004\u00f1\u0008\u00fc\u0003\u00f9\u00ff\u00fb\u00f8\u0000\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e9\u00de\u00eb\u000b\u001e\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00eb\u00f8\u00e2-\u00b7!\u000c\u00f6$\u00fd\u00ff\u00ee.\u00d1\u0008\u00fc\u001f\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\u00f7\u0008\u0008\u00f8\u00fa\u00d8*\u00ce\u00fd(\u00cc\u000e\u00f4\u00f7\u001d\u00d8\u0006\u0008\u0012\u00f6\u0014\u00f5\u00b7\u00fcL\u00b7\u0002\u00f2\u00fd\u0007\u00fe\u00fb\u00f5\u00f5P\u00b1\u0004\u00fc\u00efH\u0012\u00f7\u0013\u00f5\u0012\u00f9\u0011\u00f5\u0012\u00f5\u0015\u00f5\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00e8\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00ce\u00fd&\u00d8\u00fa\n\u00fe\u00f2\u00f6\u00ff\u00ee,\u00ca\u0001\u000c\u00f0\u0001\n\u00f2\u0016\u00dc\u0002\u00fa\u000e\u00f7\u00ff\u001e\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u00f6\u00c9\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00ca2\u0006\u00e8\u00120\u00c2\u00f7>\u00e7\u00e0\u00ea\u0010\u0015\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00fa\u000b\u00fa\u001d\u00dc\u00ea\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\'\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e6\u00d4\u00f5\n\u00f4\u0000\u00fe\u00fe\u0005\u00f4\u00f7\u0012\u00f2\u00f4\r\u00ef\u0005\u00ff\u00f6\u00ff\u00ee.\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00c8\u0000\u00ea\u0010/\u00c8\u0000\u00ea\u0010/\u00fc\u00f6\u0004\u00ee\u000c\u00ff\u00ee+\u00ff\u000c\u00f6\u00e9\u0013\u00f8\u00f7\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f6&\u00ec\u00ea\t \u00d6\u0004\u00f5\u0005\u00f4\u00f7\u00fe\u00f4\u00fa\u00f9\u000b\u00c9\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00cb1\u0006\u00e8\u00120\u00c2\u00f7>\u00b7\u0004\u00fa\t\u00f8\u00f4\u00ff\u00ee!\u00db\u0000\u00fc\u0008\u00f0\u00fb\u00f8\u00ff\u00ee0\u00dc\u00ec\u0001\u0000\u00f4\u00fe\u000c\u0012\u00ec\u00ea\t\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00db\u00ec\u0008\u00f0\n\u00f2\u00f8\"\u00e9\u00f3\n\u0001\u00fa\u0012\u00f2\u00f4\r\u0013\u00e6\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u0013\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00ff\u00f0\u0014\u00e2\u0006\u00f2\u000c\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00f7\u0007\u00ca\u0012\u00fb\u00f2\u00f9\u0008\u00f7\u00fe\u00f0\u0007\u00ef\u0000\u0003\u00023\u00b7\u000c\u00ea\u0001C\u00d7\u00ec\u00ea\u0001\u001c\u00de\u0008\u00fa\u00f6\u00ff\u00ee\"\u00e6\u00fd\u00f0\u000b\u00ee0\u00d8\u00ef\u000c\u00f0\u000c\u00ea\t\u0019\u00e0\u00f3\u00fc\u00ff\u00ee(\u00d8\u0002\u00f2\u0008\u0005\u00f2(\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u0012\u00fa\u0010\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f7\u001d\u00e8\u00f9\u0005\u0015\u00e1\u00fa\u00fd\u0000\u00f3\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u001e\u00dc\u00ef\r\u00ee\u0006\u00f6\u00f9\u0002\u00fa\u0002*\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\u00fa\u000b\u00fa\u001e\u00d4\u0008\u00eb\u00fd\u00f1\u00ff<\u00ca\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0\u0002\u000e\u00ee\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f62\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u0006\u0001\u00ef\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1"

    const/16 v5, 0x3e1

    if-eq v1, v2, :cond_1

    new-array v1, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v1, 0x61

    :goto_1
    sput v1, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataFail:I

    goto :goto_2

    :cond_1
    new-array v1, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 v1, 0x11

    goto :goto_1

    :goto_2
    sget v1, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    add-int/lit8 v1, v1, 0x26

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move v2, v0

    :goto_3
    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static values(ICI)Ljava/lang/Object;
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    sget-object v0, Lcom/appsflyer/internal/AFa1vSDK;->onAttributionFailureNative:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    rem-int/2addr v2, v3

    const/4 v2, 0x3

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    sget-object p0, Lcom/appsflyer/internal/AFa1vSDK;->onResponseNative:[B

    const/16 p2, 0x29

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v5, 0x53

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0xc8

    int-to-short v6, v6

    invoke-static {p2, v5, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/appsflyer/internal/AFa1vSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/16 v5, 0x180

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x18a

    aget-byte p0, p0, v6

    or-int/lit8 v6, p0, 0x1

    shl-int/2addr v6, v1

    xor-int/2addr p0, v1

    sub-int/2addr v6, p0

    int-to-byte p0, v6

    const/16 v6, 0x2eb

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFa1vSDK;->$$c(SIS)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, p1

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v2, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v2, v3

    invoke-virtual {p2, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p1, Lcom/appsflyer/internal/AFa1vSDK;->onConversionDataSuccess:I

    add-int/lit8 p1, p1, 0x4e

    sub-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1vSDK;->onResponseErrorNative:I

    rem-int/2addr p1, v3

    const/16 p2, 0x1a

    if-nez p1, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
.end method
