.class public Lcom/appsflyer/internal/AFb1jSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getOutOfStore:I = 0x0

.field public static getSdkVersion:[B = null

.field public static onPause:[B = null

.field private static setAndroidIdData:Ljava/lang/Object; = null

.field public static final setCustomerIdAndLogSession:I = 0x0

.field public static final setCustomerUserId:[B = null

.field private static setDebugLog:Ljava/lang/Object; = null

.field private static setImeiData:B = 0x0t

.field private static setOaidData:J = 0x0L

.field private static setOutOfStore:I = 0x1


# direct methods
.method private static $$c(ISI)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-object v1, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    neg-int p1, p1

    xor-int/lit8 v4, p1, 0x73

    and-int/lit8 p1, p1, 0x73

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    const/16 p1, 0x3fc3

    div-int/2addr p1, p0

    add-int/lit8 p2, p2, 0xc

    new-array p0, v4, [B

    const/16 v5, 0x63

    if-nez v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    const/16 v6, 0x4c

    :goto_1
    if-eq v6, v5, :cond_4

    goto :goto_3

    :cond_2
    sget-object v1, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    neg-int p1, p1

    xor-int/lit8 v4, p1, 0x24

    and-int/lit8 p1, p1, 0x24

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    neg-int p0, p0

    xor-int/lit16 p1, p0, 0x3e7

    and-int/lit16 p0, p0, 0x3e7

    shl-int/2addr p0, v3

    add-int/2addr p1, p0

    and-int/lit8 p0, p2, 0x29

    or-int/lit8 p2, p2, 0x29

    add-int/2addr p2, p0

    new-array p0, v4, [B

    const/4 v5, 0x6

    if-nez v1, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    const/16 v6, 0x4d

    :goto_2
    if-eq v6, v5, :cond_4

    :goto_3
    move v5, v2

    move v0, v4

    :goto_4
    move v4, p2

    goto :goto_7

    :cond_4
    and-int/lit8 p2, v0, 0x7d

    or-int/lit8 v0, v0, 0x7d

    add-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x32

    if-eqz p2, :cond_5

    const/16 p2, 0x42

    goto :goto_5

    :cond_5
    move p2, v0

    :goto_5
    if-ne p2, v0, :cond_7

    move p2, p1

    move v5, v2

    move v0, v4

    :goto_6
    add-int/2addr p1, v3

    not-int p2, p2

    sub-int/2addr v4, p2

    sub-int/2addr v4, v3

    and-int/lit8 p2, v4, -0x3

    or-int/lit8 v4, v4, -0x3

    add-int/2addr p2, v4

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v4, v4, 0x4

    sub-int/2addr v4, v3

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_4

    :goto_7
    int-to-byte p2, v4

    add-int/lit8 v6, v5, 0x1

    aput-byte p2, p0, v5

    if-ne v6, v0, :cond_6

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p1

    :cond_6
    aget-byte p2, v1, p1

    move v5, v6

    goto :goto_6

    :cond_7
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 49

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFb1jSDK;->init$0()V

    const-wide v2, -0x5bd385d66d52a1fL    # -8.522313543937889E280

    sput-wide v2, Lcom/appsflyer/internal/AFb1jSDK;->setOaidData:J

    const/16 v2, -0x2b

    sput-byte v2, Lcom/appsflyer/internal/AFb1jSDK;->setImeiData:B

    const/16 v2, 0x46

    int-to-short v2, v2

    :try_start_0
    sget-object v3, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v4, 0xa

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    const/16 v6, 0x91

    aget-byte v7, v3, v6

    int-to-byte v7, v7

    invoke-static {v2, v5, v7}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    if-nez v5, :cond_0

    const/16 v5, 0x52

    goto :goto_0

    :cond_0
    const/16 v5, 0xd

    :goto_0
    const/16 v7, 0x52

    const/4 v8, 0x0

    if-eq v5, v7, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_1
    const/16 v5, 0xea

    aget-byte v5, v3, v5

    int-to-short v5, v5

    const/16 v7, 0x24

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    aget-byte v9, v3, v6

    int-to-byte v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    const/16 v7, 0xf0

    int-to-short v7, v7

    const/16 v9, 0x63

    const/16 v10, 0x9

    const/4 v11, 0x5

    const/16 v12, 0x21

    const/4 v13, 0x0

    :try_start_1
    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v14, 0x1b

    aget-byte v14, v3, v14

    int-to-byte v14, v14

    invoke-static {v7, v9, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x381

    int-to-short v9, v9

    aget-byte v14, v3, v10

    int-to-byte v14, v14

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v9, v14, v3}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    new-array v9, v13, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v7, v8

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    goto :goto_2

    :catch_0
    move-object v3, v8

    :cond_2
    :try_start_2
    sget v7, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    or-int/lit16 v7, v7, 0x200

    int-to-short v7, v7

    sget-object v9, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v14, 0x19

    aget-byte v14, v9, v14

    int-to-byte v14, v14

    const/16 v15, 0x1b

    aget-byte v15, v9, v15

    int-to-byte v15, v15

    invoke-static {v7, v14, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v14, 0xa0

    int-to-short v14, v14

    aget-byte v15, v9, v11

    int-to-byte v15, v15

    aget-byte v9, v9, v12

    int-to-byte v9, v9

    invoke-static {v14, v15, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    new-array v14, v13, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v9, v8

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_2
    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    sget v14, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    xor-int/lit8 v15, v14, 0x31

    and-int/lit8 v14, v14, 0x31

    shl-int/2addr v14, v9

    add-int/2addr v15, v14

    rem-int/lit16 v14, v15, 0x80

    sput v14, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/2addr v15, v7

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const/16 v15, 0x2f0

    int-to-short v15, v15

    sget-object v16, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v17, 0x11f

    aget-byte v4, v16, v17

    int-to-byte v4, v4

    aget-byte v11, v16, v12

    int-to-byte v11, v11

    invoke-static {v15, v4, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    move-object v11, v8

    check-cast v11, [Ljava/lang/Class;

    invoke-virtual {v14, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    :cond_3
    move-object v4, v8

    :goto_3
    if-eqz v3, :cond_4

    move v11, v13

    goto :goto_4

    :cond_4
    move v11, v9

    :goto_4
    if-eq v11, v9, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x299

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v16, 0x5c

    aget-byte v10, v15, v16

    int-to-byte v10, v10

    aget-byte v15, v15, v12

    int-to-byte v15, v15

    invoke-static {v14, v10, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v11, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v10, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    :cond_5
    move-object v10, v8

    :goto_5
    if-eqz v3, :cond_8

    sget v11, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v11, v11, 0x3f

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/2addr v11, v7

    if-eqz v11, :cond_6

    move v11, v9

    goto :goto_6

    :cond_6
    move v11, v13

    :goto_6
    if-eq v11, v9, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x2e2

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v16, 0x11f

    aget-byte v6, v15, v16

    int-to-byte v6, v6

    aget-byte v15, v15, v12

    int-to-byte v15, v15

    invoke-static {v14, v6, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v11, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :goto_7
    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x7598

    int-to-short v11, v11

    sget-object v14, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v15, 0x63c4

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v16, 0x14

    aget-byte v14, v14, v16

    int-to-byte v14, v14

    invoke-static {v11, v15, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    :cond_8
    move-object v3, v8

    :goto_8
    if-eqz v4, :cond_9

    const/4 v11, 0x6

    goto :goto_9

    :cond_9
    const/16 v11, 0x4a

    :goto_9
    const/16 v14, 0x4a

    const/16 v15, 0x1e

    const/16 v16, 0x3b

    if-eq v11, v14, :cond_a

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    xor-int/lit8 v11, v5, 0x23

    and-int/lit8 v5, v5, 0x23

    shl-int/2addr v5, v9

    add-int/2addr v11, v5

    rem-int/lit16 v5, v11, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/2addr v11, v7

    goto :goto_a

    :cond_a
    if-nez v5, :cond_b

    move-object v4, v8

    goto :goto_a

    :cond_b
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v14, v11, 0x154

    and-int/lit16 v11, v11, 0x154

    or-int/2addr v11, v14

    int-to-short v11, v11

    sget-object v14, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v21, 0x11f

    aget-byte v6, v14, v21

    int-to-byte v6, v6

    const/16 v21, 0xb

    aget-byte v7, v14, v21

    int-to-byte v7, v7

    invoke-static {v11, v6, v7}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :try_start_7
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v13

    const/16 v4, 0x8c

    int-to-short v4, v4

    aget-byte v6, v14, v15

    int-to-byte v6, v6

    aget-byte v7, v14, v16

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v13

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5c

    :goto_a
    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    const/16 v3, 0x115

    int-to-short v3, v3

    :try_start_8
    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v6, 0x73

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    aget-byte v7, v5, v16

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    :try_start_9
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v13

    const/16 v3, 0x3b0

    int-to-short v3, v3

    const/16 v7, 0x19c

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    aget-byte v11, v5, v16

    int-to-byte v11, v11

    invoke-static {v3, v7, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v7, 0x108

    int-to-short v7, v7

    const/16 v11, 0x11f

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    aget-byte v14, v5, v12

    int-to-byte v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    new-array v11, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v13

    invoke-virtual {v3, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5b

    :try_start_a
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v13

    const/16 v3, 0x8c

    int-to-short v3, v3

    aget-byte v7, v5, v15

    int-to-byte v7, v7

    aget-byte v5, v5, v16

    int-to-byte v5, v5

    invoke-static {v3, v7, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v13

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5a

    :goto_b
    if-nez v10, :cond_d

    move v5, v9

    goto :goto_c

    :cond_d
    move v5, v13

    :goto_c
    if-eqz v5, :cond_10

    if-eqz v4, :cond_e

    move v5, v9

    goto :goto_d

    :cond_e
    move v5, v13

    :goto_d
    if-eqz v5, :cond_10

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    or-int/lit8 v6, v5, 0x47

    shl-int/2addr v6, v9

    xor-int/lit8 v5, v5, 0x47

    sub-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    const/16 v5, 0x2c1

    int-to-short v5, v5

    :try_start_b
    sget-object v6, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v7, 0x22d

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v10, 0x91

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v5, v7, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    sget v7, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    or-int/lit8 v10, v7, 0x21

    shl-int/2addr v10, v9

    xor-int/2addr v7, v12

    sub-int/2addr v10, v7

    rem-int/lit16 v7, v10, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v7, 0x2

    rem-int/2addr v10, v7

    :try_start_c
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v9

    aput-object v4, v10, v13

    const/16 v5, 0x8c

    int-to-short v5, v5

    aget-byte v7, v6, v15

    int-to-byte v7, v7

    aget-byte v11, v6, v16

    int-to-byte v11, v11

    invoke-static {v5, v7, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Class;

    aget-byte v11, v6, v15

    int-to-byte v11, v11

    aget-byte v6, v6, v16

    int-to-byte v6, v6

    invoke-static {v5, v11, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v14, v13

    const-class v5, Ljava/lang/String;

    aput-object v5, v14, v9

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    throw v2

    :cond_f
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :cond_10
    :goto_e
    const/16 v5, 0x1c4

    int-to-short v5, v5

    :try_start_e
    sget-object v6, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v7, 0x19

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v11, 0x1b

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v5, v7, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x216

    int-to-short v7, v7

    const/16 v11, 0xd

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    aget-byte v14, v6, v12

    int-to-byte v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_59

    const/16 v7, 0x8c

    int-to-short v7, v7

    :try_start_f
    aget-byte v11, v6, v15

    int-to-byte v11, v11

    aget-byte v14, v6, v16

    int-to-byte v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x9

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    aput-object v8, v11, v13

    aput-object v10, v11, v9

    const/4 v14, 0x2

    aput-object v4, v11, v14

    const/4 v14, 0x3

    aput-object v3, v11, v14

    const/4 v12, 0x4

    aput-object v5, v11, v12

    const/16 v17, 0x5

    aput-object v10, v11, v17

    const/4 v10, 0x6

    aput-object v4, v11, v10

    const/4 v4, 0x7

    aput-object v3, v11, v4

    const/16 v3, 0x8

    aput-object v5, v11, v3

    const/16 v4, 0x9

    new-array v5, v4, [Z

    aput-boolean v13, v5, v13

    aput-boolean v9, v5, v9

    const/4 v4, 0x2

    aput-boolean v9, v5, v4

    aput-boolean v9, v5, v14

    aput-boolean v9, v5, v12

    const/4 v4, 0x5

    aput-boolean v9, v5, v4

    const/4 v4, 0x6

    aput-boolean v9, v5, v4

    const/4 v4, 0x7

    aput-boolean v9, v5, v4

    aput-boolean v9, v5, v3

    const/16 v4, 0x9

    new-array v10, v4, [Z

    aput-boolean v13, v10, v13

    aput-boolean v13, v10, v9

    const/4 v4, 0x2

    aput-boolean v13, v10, v4

    aput-boolean v13, v10, v14

    aput-boolean v13, v10, v12

    const/4 v4, 0x5

    aput-boolean v9, v10, v4

    const/4 v4, 0x6

    aput-boolean v9, v10, v4

    const/4 v4, 0x7

    aput-boolean v9, v10, v4

    aput-boolean v9, v10, v3

    const/16 v4, 0x9

    new-array v8, v4, [Z

    aput-boolean v13, v8, v13

    aput-boolean v13, v8, v9

    const/4 v4, 0x2

    aput-boolean v9, v8, v4

    aput-boolean v9, v8, v14

    aput-boolean v13, v8, v12

    const/4 v4, 0x5

    aput-boolean v13, v8, v4

    const/4 v4, 0x6

    aput-boolean v9, v8, v4

    const/4 v4, 0x7

    aput-boolean v9, v8, v4

    aput-boolean v13, v8, v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    const/16 v4, 0x34d

    int-to-short v4, v4

    const/16 v24, 0x6a

    :try_start_10
    aget-byte v14, v6, v24

    int-to-byte v14, v14

    const/16 v26, 0x1b

    aget-byte v15, v6, v26

    int-to-byte v15, v15

    invoke-static {v4, v14, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v14, 0x16c

    int-to-short v14, v14

    const/16 v15, 0x16a

    aget-byte v15, v6, v15

    neg-int v15, v15

    int-to-byte v15, v15

    const/16 v26, 0x29e

    aget-byte v6, v6, v26

    int-to-byte v6, v6

    invoke-static {v14, v15, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    const/16 v6, 0x1d

    if-ne v4, v6, :cond_11

    goto :goto_f

    :cond_11
    const/16 v6, 0x1a

    if-lt v4, v6, :cond_12

    sget v6, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v6, v6, 0x27

    rem-int/lit16 v14, v6, 0x80

    sput v14, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v14, 0x2

    rem-int/2addr v6, v14

    move v6, v9

    goto :goto_10

    :cond_12
    :goto_f
    move v6, v13

    :goto_10
    :try_start_11
    aput-boolean v6, v8, v13

    const/16 v6, 0x15

    if-lt v4, v6, :cond_13

    move v6, v13

    goto :goto_11

    :cond_13
    move v6, v9

    :goto_11
    if-eqz v6, :cond_14

    move v6, v13

    goto :goto_12

    :cond_14
    move v6, v9

    :goto_12
    aput-boolean v6, v8, v9

    const/16 v6, 0x15

    if-lt v4, v6, :cond_15

    move v6, v9

    goto :goto_13

    :cond_15
    move v6, v13

    :goto_13
    if-eq v6, v9, :cond_16

    move v6, v13

    :goto_14
    const/4 v14, 0x5

    goto :goto_15

    :cond_16
    move v6, v9

    goto :goto_14

    :goto_15
    aput-boolean v6, v8, v14

    const/16 v6, 0x10

    if-ge v4, v6, :cond_17

    move v6, v9

    goto :goto_16

    :cond_17
    move v6, v13

    :goto_16
    aput-boolean v6, v8, v12

    const/16 v6, 0x10

    if-ge v4, v6, :cond_18

    move v4, v9

    goto :goto_17

    :cond_18
    move v4, v13

    :goto_17
    aput-boolean v4, v8, v3
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    :catch_5
    move v4, v13

    move v6, v4

    :goto_18
    if-nez v4, :cond_19

    move v14, v9

    goto :goto_19

    :cond_19
    move v14, v13

    :goto_19
    if-eq v14, v9, :cond_1a

    goto/16 :goto_63

    :cond_1a
    const/16 v14, 0x9

    if-ge v6, v14, :cond_1b

    move v14, v13

    goto :goto_1a

    :cond_1b
    move v14, v9

    :goto_1a
    if-eq v14, v9, :cond_7a

    :try_start_12
    aget-boolean v14, v8, v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    if-eqz v14, :cond_1c

    move v14, v9

    goto :goto_1b

    :cond_1c
    move v14, v13

    :goto_1b
    if-eqz v14, :cond_79

    sget v14, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    and-int/lit8 v15, v14, 0x57

    or-int/lit8 v14, v14, 0x57

    add-int/2addr v15, v14

    rem-int/lit16 v14, v15, 0x80

    sput v14, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/16 v23, 0x2

    rem-int/lit8 v15, v15, 0x2

    const/16 v15, 0xc0

    const/16 v26, 0x79

    :try_start_13
    aget-boolean v28, v5, v6

    aget-object v3, v11, v6

    aget-boolean v29, v10, v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_57

    if-eqz v28, :cond_1d

    const/16 v30, 0x20

    goto :goto_1c

    :cond_1d
    const/16 v30, 0x54

    :goto_1c
    move/from16 v12, v30

    const/16 v13, 0x20

    const/16 v31, 0x67

    if-eq v12, v13, :cond_1e

    goto :goto_1d

    :cond_1e
    if-eqz v3, :cond_71

    add-int/lit8 v14, v14, 0x70

    sub-int/2addr v14, v9

    rem-int/lit16 v12, v14, 0x80

    sput v12, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v12, 0x2

    rem-int/2addr v14, v12

    :try_start_14
    sget-object v12, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v13, 0x1e

    aget-byte v14, v12, v13

    int-to-byte v13, v14

    aget-byte v14, v12, v16

    int-to-byte v14, v14

    invoke-static {v7, v13, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    int-to-short v14, v15

    aget-byte v32, v12, v15
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_54

    xor-int/lit8 v33, v32, 0x1

    and-int/lit8 v32, v32, 0x1

    shl-int/lit8 v32, v32, 0x1

    add-int v15, v33, v32

    int-to-byte v15, v15

    const/16 v20, 0x91

    :try_start_15
    aget-byte v12, v12, v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_53

    int-to-byte v12, v12

    :try_start_16
    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_54

    if-eqz v12, :cond_71

    :goto_1d
    if-eqz v28, :cond_37

    :try_start_17
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    const/16 v13, 0x3b0

    int-to-short v13, v13

    :try_start_18
    sget-object v14, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v15, 0x19c

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    aget-byte v9, v14, v16

    int-to-byte v9, v9

    invoke-static {v13, v15, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v13, 0x7d

    int-to-short v13, v13

    const/16 v15, 0x295

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v20, 0x91

    aget-byte v14, v14, v20

    int-to-byte v14, v14

    invoke-static {v13, v15, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v14, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    const-wide/32 v34, -0x5eb422b9

    xor-long v13, v13, v34

    :try_start_19
    invoke-virtual {v12, v13, v14}, Ljava/util/Random;->setSeed(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1e
    if-nez v9, :cond_35

    sget v33, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    move-object/from16 v34, v2

    add-int/lit8 v2, v33, 0x4b

    move/from16 v33, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/16 v23, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    const/16 v2, 0x54

    goto :goto_1f

    :cond_1f
    const/16 v2, 0x4c

    :goto_1f
    move-object/from16 v35, v5

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_34

    if-nez v13, :cond_20

    const/4 v2, 0x1

    goto :goto_20

    :cond_20
    const/4 v2, 0x0

    :goto_20
    const/4 v5, 0x1

    if-eq v2, v5, :cond_24

    if-nez v14, :cond_21

    const/4 v2, 0x5

    goto :goto_21

    :cond_21
    if-nez v15, :cond_23

    or-int/lit8 v2, v4, 0x51

    shl-int/2addr v2, v5

    xor-int/lit8 v4, v4, 0x51

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-eqz v2, :cond_22

    const/4 v2, 0x2

    goto :goto_21

    :cond_22
    const/4 v2, 0x4

    goto :goto_21

    :cond_23
    const/4 v2, 0x3

    goto :goto_21

    :cond_24
    const/4 v2, 0x6

    :goto_21
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    or-int/lit8 v5, v2, 0x1

    const/16 v32, 0x1

    shl-int/lit8 v5, v5, 0x1

    xor-int/lit8 v36, v2, 0x1

    sub-int v5, v5, v36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v2, :cond_28

    move/from16 v36, v2

    if-eqz v29, :cond_27

    const/16 v2, 0x1a

    :try_start_1b
    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    move-result v37
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v37, :cond_25

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    const/4 v9, 0x0

    goto :goto_23

    :cond_25
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    const/4 v9, 0x1

    :goto_23
    const/4 v10, 0x1

    if-eq v9, v10, :cond_26

    neg-int v2, v2

    neg-int v2, v2

    or-int/lit8 v9, v2, 0x41

    shl-int/2addr v9, v10

    xor-int/lit8 v2, v2, 0x41

    sub-int/2addr v9, v2

    goto :goto_24

    :cond_26
    and-int/lit8 v9, v2, 0x60

    or-int/lit8 v2, v2, 0x60

    add-int/2addr v9, v2

    :goto_24
    int-to-char v2, v9

    :try_start_1c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :catchall_1
    move-exception v0

    move-object/from16 v38, v10

    goto :goto_26

    :cond_27
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2000

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :goto_25
    add-int/lit8 v5, v5, 0x2

    const/4 v2, 0x1

    sub-int/2addr v5, v2

    move/from16 v2, v36

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    goto :goto_22

    :catchall_2
    move-exception v0

    :goto_26
    move-object v2, v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    move-object/from16 v36, v11

    goto/16 :goto_2d

    :cond_28
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :try_start_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    if-nez v13, :cond_2a

    const/4 v4, 0x2

    :try_start_1e
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v4, 0x1e

    aget-byte v9, v2, v4

    int-to-byte v4, v9

    aget-byte v9, v2, v16

    int-to-byte v9, v9

    invoke-static {v7, v4, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const/16 v9, 0x1e

    aget-byte v13, v2, v9

    int-to-byte v9, v13

    aget-byte v2, v2, v16

    int-to-byte v2, v2

    invoke-static {v7, v9, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move-object v13, v2

    :goto_27
    move-object/from16 v36, v11

    move-object/from16 v39, v12

    move-object/from16 v9, v37

    goto/16 :goto_28

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_29

    throw v3

    :cond_29
    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :cond_2a
    if-nez v14, :cond_2d

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v4, v4, 0x12

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v9, 0x2

    rem-int/2addr v4, v9

    if-eqz v4, :cond_2c

    :try_start_20
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x0

    aput-object v3, v4, v2

    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v5, 0x1e

    aget-byte v9, v2, v5

    int-to-byte v5, v9

    aget-byte v9, v2, v16

    int-to-byte v9, v9

    invoke-static {v7, v5, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const/16 v9, 0x1e

    aget-byte v14, v2, v9

    int-to-byte v9, v14

    aget-byte v2, v2, v16

    int-to-byte v2, v2

    invoke-static {v7, v9, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move-object v14, v2

    goto :goto_27

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2b

    throw v3

    :cond_2b
    throw v2

    :cond_2c
    const/4 v2, 0x0

    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :cond_2d
    if-nez v15, :cond_2f

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v4, v4, 0x5b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    :try_start_22
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x0

    aput-object v3, v4, v2

    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v5, 0x1e

    aget-byte v9, v2, v5

    int-to-byte v5, v9

    aget-byte v9, v2, v16

    int-to-byte v9, v9

    invoke-static {v7, v5, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const/16 v9, 0x1e

    aget-byte v15, v2, v9

    int-to-byte v9, v15

    aget-byte v2, v2, v16

    int-to-byte v2, v2

    invoke-static {v7, v9, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object v15, v2

    goto/16 :goto_27

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2e

    throw v3

    :cond_2e
    throw v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    :cond_2f
    const/4 v4, 0x2

    :try_start_24
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v4, 0x1e

    aget-byte v9, v2, v4

    int-to-byte v4, v9

    aget-byte v9, v2, v16

    int-to-byte v9, v9

    invoke-static {v7, v4, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    move-object/from16 v36, v11

    const/16 v9, 0x1e

    :try_start_25
    aget-byte v11, v2, v9

    int-to-byte v9, v11

    aget-byte v11, v2, v16

    int-to-byte v11, v11

    invoke-static {v7, v9, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :try_start_26
    new-array v5, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    const/16 v9, 0xd7

    int-to-short v9, v9

    aget-byte v10, v2, v24

    int-to-byte v10, v10

    aget-byte v11, v2, v16

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v39, v12

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    move-object/from16 v40, v13

    const/16 v11, 0x1e

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    aget-byte v13, v2, v16

    int-to-byte v13, v13

    invoke-static {v7, v11, v13}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :try_start_27
    aget-byte v10, v2, v24

    int-to-byte v10, v10

    aget-byte v11, v2, v16

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v10, 0x142

    int-to-short v10, v10

    const/4 v11, 0x0

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    const/16 v12, 0x91

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v10, v11, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    move-object v9, v4

    move-object/from16 v13, v40

    :goto_28
    move/from16 v4, v33

    move-object/from16 v2, v34

    move-object/from16 v5, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v38

    move-object/from16 v12, v39

    goto/16 :goto_1e

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_30

    throw v3

    :cond_30
    throw v2

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_31

    throw v3

    :cond_31
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x81

    int-to-short v5, v5

    sget-object v9, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v10, 0x0

    aget-byte v11, v9, v10

    int-to-byte v10, v11

    and-int/lit8 v11, v10, -0x3

    or-int/lit8 v12, v10, -0x3

    add-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d5

    int-to-short v4, v4

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    and-int/lit16 v5, v5, 0xf7

    int-to-byte v5, v5

    aget-byte v10, v9, v31

    int-to-byte v10, v10

    invoke-static {v4, v5, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    const/4 v4, 0x2

    :try_start_2a
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v2, 0xb9

    int-to-short v2, v2

    aget-byte v3, v9, v26

    int-to-byte v3, v3

    aget-byte v4, v9, v16

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v4, v9

    const-class v3, Ljava/lang/Throwable;

    const/4 v9, 0x1

    aput-object v3, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_32

    throw v3

    :cond_32
    throw v2

    :catchall_9
    move-exception v0

    goto :goto_29

    :catchall_a
    move-exception v0

    move-object/from16 v36, v11

    :goto_29
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_33

    throw v3

    :cond_33
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    :catchall_b
    move-exception v0

    goto :goto_2b

    :catchall_c
    move-exception v0

    goto :goto_2a

    :cond_34
    move-object/from16 v38, v10

    move-object/from16 v36, v11

    const/4 v2, 0x0

    :try_start_2c
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_2c

    :cond_35
    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move-object/from16 v40, v13

    move-object v2, v14

    move-object/from16 v14, v40

    goto :goto_2e

    :catchall_e
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move-object v2, v0

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_36

    throw v3

    :cond_36
    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    :catchall_f
    move-exception v0

    goto :goto_2c

    :catchall_10
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    :goto_2a
    move-object/from16 v38, v10

    :goto_2b
    move-object/from16 v36, v11

    :goto_2c
    move-object v2, v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    :goto_2d
    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    goto/16 :goto_5c

    :cond_37
    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v37, 0x0

    :goto_2e
    const/16 v3, 0x1ac1

    :try_start_2e
    new-array v3, v3, [B

    const-class v4, Lcom/appsflyer/internal/AFb1jSDK;

    const/16 v5, 0x12e

    int-to-short v5, v5

    sget-object v9, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v10, 0x63

    aget-byte v10, v9, v10

    int-to-byte v10, v10

    const/16 v11, 0xb

    aget-byte v11, v9, v11

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_52

    const/4 v5, 0x1

    :try_start_2f
    new-array v10, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v10, v5

    const/16 v4, 0x1fc

    int-to-short v4, v4

    const/16 v5, 0xce

    aget-byte v5, v9, v5

    int-to-byte v5, v5

    aget-byte v11, v9, v16

    int-to-byte v11, v11

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    aget-byte v11, v9, v31

    int-to-short v11, v11

    aget-byte v13, v9, v26

    int-to-byte v13, v13

    move-object/from16 v29, v2

    aget-byte v2, v9, v16

    int-to-byte v2, v2

    invoke-static {v11, v13, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v12, v11

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_51

    const/4 v5, 0x1

    :try_start_30
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v3, v10, v11

    const/16 v5, 0xce

    aget-byte v5, v9, v5

    int-to-byte v5, v5

    aget-byte v11, v9, v16

    int-to-byte v11, v11

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v11, 0x2f8

    int-to-short v11, v11

    const/16 v12, 0xc0

    aget-byte v13, v9, v12

    int-to-byte v12, v13

    const/16 v13, 0x172

    aget-byte v13, v9, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v5, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_50

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    and-int/lit8 v10, v5, 0x79

    or-int/lit8 v5, v5, 0x79

    add-int/2addr v10, v5

    rem-int/lit16 v5, v10, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v10, v5

    const/16 v5, 0xce

    :try_start_31
    aget-byte v5, v9, v5

    int-to-byte v5, v5

    aget-byte v10, v9, v16

    int-to-byte v10, v10

    invoke-static {v4, v5, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x142

    int-to-short v5, v5

    const/4 v10, 0x0

    aget-byte v11, v9, v10
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4f

    int-to-byte v10, v11

    const/16 v11, 0x91

    :try_start_32
    aget-byte v9, v9, v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4e

    int-to-byte v9, v9

    :try_start_33
    invoke-static {v5, v10, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4f

    const/16 v2, 0x11

    const/16 v5, 0x1a8e

    move-object/from16 v10, v34

    const/4 v9, 0x0

    :goto_2f
    or-int/lit16 v11, v2, 0x159

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    xor-int/lit16 v13, v2, 0x159

    sub-int/2addr v11, v13

    or-int/lit16 v13, v2, 0xaef

    shl-int/2addr v13, v12

    xor-int/lit16 v12, v2, 0xaef

    sub-int/2addr v13, v12

    :try_start_34
    aget-byte v12, v3, v13

    add-int/lit8 v12, v12, 0x2c

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    array-length v11, v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_52

    neg-int v12, v2

    not-int v12, v12

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x3

    :try_start_35
    new-array v4, v13, [Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_4d

    :try_start_36
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v4, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v12

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/16 v3, 0x336

    int-to-short v3, v3

    sget-object v11, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v12, 0x13

    aget-byte v12, v11, v12

    int-to-byte v12, v12

    aget-byte v13, v11, v16

    int-to-byte v13, v13

    invoke-static {v3, v12, v13}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4c

    const/4 v12, 0x3

    :try_start_37
    new-array v13, v12, [Ljava/lang/Class;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_4b

    const/4 v12, 0x0

    :try_start_38
    aput-object v1, v13, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v32, 0x1

    aput-object v12, v13, v32

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v12, v13, v23

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4c

    :try_start_39
    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_52

    if-nez v4, :cond_39

    const/4 v12, 0x1

    :try_start_3a
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v13, v12

    const/16 v12, 0x370

    int-to-short v12, v12

    const/16 v19, 0x9

    aget-byte v4, v11, v19

    int-to-byte v4, v4

    const/16 v41, 0x1b

    move/from16 v42, v5

    aget-byte v5, v11, v41

    int-to-byte v5, v5

    invoke-static {v12, v4, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x13e

    int-to-short v5, v5

    const/16 v12, 0x295

    aget-byte v12, v11, v12

    int-to-byte v12, v12

    move-object/from16 v41, v14

    const/16 v21, 0x21

    aget-byte v14, v11, v21

    int-to-byte v14, v14

    invoke-static {v5, v12, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v30, 0x0

    aput-object v12, v14, v30

    invoke-virtual {v4, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_12

    and-int/lit8 v5, v4, 0x14

    or-int/lit8 v4, v4, 0x14

    add-int/2addr v5, v4

    const/4 v4, 0x6

    shr-int/2addr v5, v4

    neg-int v4, v5

    const v5, -0x72279cca

    xor-int v12, v4, v5

    and-int/2addr v4, v5

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v12, v4

    const/16 v4, 0x10

    :try_start_3b
    new-array v4, v4, [B

    const/16 v13, 0x78

    const/4 v14, 0x0

    aput-byte v13, v4, v14

    const/16 v13, 0x2c

    aput-byte v13, v4, v5

    const/16 v5, 0x7f

    const/4 v13, 0x2

    aput-byte v5, v4, v13
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_f

    const/16 v5, 0x6d

    const/4 v13, 0x3

    :try_start_3c
    aput-byte v5, v4, v13
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_11

    const/16 v5, -0x7b

    const/4 v13, 0x4

    :try_start_3d
    aput-byte v5, v4, v13

    const/16 v5, 0x58

    const/4 v13, 0x5

    aput-byte v5, v4, v13

    const/16 v5, 0x59

    const/4 v13, 0x6

    aput-byte v5, v4, v13

    const/4 v5, 0x7

    const/16 v13, -0x37

    aput-byte v13, v4, v5

    const/16 v5, -0x78

    const/16 v13, 0x8

    aput-byte v5, v4, v13

    const/16 v5, -0x13

    const/16 v13, 0x9

    aput-byte v5, v4, v13

    const/16 v5, -0x44

    const/16 v13, 0xa

    aput-byte v5, v4, v13

    const/16 v5, 0xb

    const/16 v13, 0x35

    aput-byte v13, v4, v5

    const/16 v5, 0xc

    const/16 v13, -0x37

    aput-byte v13, v4, v5

    const/16 v5, 0xd

    const/16 v13, 0x35

    aput-byte v13, v4, v5

    const/16 v5, 0xe

    const/16 v13, -0x59

    aput-byte v13, v4, v5

    const/16 v5, 0xf

    const/16 v13, 0x20

    aput-byte v13, v4, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    neg-int v5, v5

    neg-int v5, v5

    and-int/lit8 v13, v5, 0x8

    const/16 v14, 0x8

    or-int/2addr v5, v14

    add-int/2addr v13, v5

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sget-byte v5, Lcom/appsflyer/internal/AFb1jSDK;->setImeiData:B

    move-object/from16 v40, v15

    sget-wide v14, Lcom/appsflyer/internal/AFb1jSDK;->setOaidData:J

    invoke-static {v4, v5, v14, v15}, Lcom/appsflyer/internal/AFf1zSDK;->values([BBJ)V

    invoke-static {v12}, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventParameterName(I)[[B

    move-result-object v5

    new-instance v12, Lcom/appsflyer/internal/AFf1ySDK;

    invoke-direct {v12, v3, v13, v4, v5}, Lcom/appsflyer/internal/AFf1ySDK;-><init>(Ljava/io/InputStream;I[B[[B)V

    move-object/from16 v43, v8

    :goto_30
    const/16 v3, 0x16

    goto/16 :goto_32

    :catchall_11
    move-exception v0

    move-object v2, v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    move v14, v13

    :goto_31
    const/16 v11, 0x91

    const/16 v12, 0x21

    goto/16 :goto_5c

    :catchall_12
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_38

    throw v3

    :cond_38
    throw v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_f

    :cond_39
    move/from16 v42, v5

    move-object/from16 v41, v14

    move-object/from16 v40, v15

    :try_start_3e
    const-string v5, ""
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_52

    const/4 v12, 0x1

    :try_start_3f
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v13, v12

    const/16 v5, 0x370

    int-to-short v5, v5

    const/16 v12, 0x9

    aget-byte v14, v11, v12

    int-to-byte v12, v14

    const/16 v14, 0x1b

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    invoke-static {v5, v12, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v12, 0x166

    int-to-short v12, v12

    const/16 v14, 0x24

    aget-byte v14, v11, v14
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4a

    int-to-byte v14, v14

    move-object/from16 v43, v8

    const/16 v15, 0x21

    :try_start_40
    aget-byte v8, v11, v15
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_49

    int-to-byte v8, v8

    :try_start_41
    invoke-static {v12, v14, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v5, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_48

    neg-int v5, v5

    or-int/lit8 v8, v5, 0x7

    const/4 v12, 0x1

    shl-int/2addr v8, v12

    xor-int/lit8 v5, v5, 0x7

    sub-int/2addr v8, v5

    const v5, 0x2772c99c

    :try_start_42
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v13

    shr-int/lit8 v13, v13, 0x18

    not-int v13, v13

    sub-int/2addr v5, v13

    sub-int/2addr v5, v12

    const/16 v13, 0x10

    new-array v13, v13, [B

    const/16 v14, 0x1a

    const/4 v15, 0x0

    aput-byte v14, v13, v15

    const/16 v14, 0x5a

    aput-byte v14, v13, v12

    const/16 v12, -0x71

    const/4 v14, 0x2

    aput-byte v12, v13, v14
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_47

    const/16 v12, -0x36

    const/4 v14, 0x3

    :try_start_43
    aput-byte v12, v13, v14
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_46

    const/16 v12, 0x66

    const/4 v14, 0x4

    :try_start_44
    aput-byte v12, v13, v14

    const/4 v12, -0x4

    const/4 v14, 0x5

    aput-byte v12, v13, v14

    const/4 v12, 0x6

    aput-byte v24, v13, v12

    const/4 v14, 0x7

    const/16 v15, -0x66

    aput-byte v15, v13, v14

    const/16 v14, 0x48

    const/16 v15, 0x8

    aput-byte v14, v13, v15

    const/16 v14, -0xc

    const/16 v19, 0x9

    aput-byte v14, v13, v19

    const/16 v14, 0x1a

    const/16 v18, 0xa

    aput-byte v14, v13, v18

    const/16 v14, 0xb

    const/16 v22, -0x43

    aput-byte v22, v13, v14

    const/16 v14, 0xc

    const/16 v22, 0x77

    aput-byte v22, v13, v14

    const/16 v14, 0xd

    const/16 v22, -0x35

    aput-byte v22, v13, v14

    const/16 v14, 0xe

    const/16 v22, -0x6b

    aput-byte v22, v13, v14

    const/16 v14, 0xf

    const/16 v22, -0x17

    aput-byte v22, v13, v14
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_47

    const/4 v14, 0x4

    :try_start_45
    new-array v12, v14, [Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    const/4 v14, 0x3

    :try_start_46
    aput-object v13, v12, v14
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_44

    :try_start_47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v12, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v12, v8

    const/4 v5, 0x0

    aput-object v3, v12, v5

    sget v3, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v5, v3, 0x184

    and-int/lit16 v3, v3, 0x184

    or-int/2addr v3, v5

    int-to-short v3, v3

    const/16 v5, 0xa

    aget-byte v8, v11, v5
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_45

    int-to-byte v5, v8

    const/16 v8, 0x91

    :try_start_48
    aget-byte v13, v11, v8
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_43

    int-to-byte v8, v13

    :try_start_49
    invoke-static {v3, v5, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v8, 0x1

    invoke-static {v3, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x257

    int-to-short v5, v5

    const/16 v8, 0x45

    aget-byte v8, v11, v8

    int-to-byte v8, v8

    const/16 v13, 0x1e

    aget-byte v14, v11, v13

    int-to-byte v13, v14

    invoke-static {v5, v8, v13}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    new-array v13, v8, [Ljava/lang/Class;

    aget-byte v14, v11, v31

    int-to-short v14, v14

    aget-byte v8, v11, v26

    int-to-byte v8, v8

    aget-byte v15, v11, v16

    int-to-byte v15, v15

    invoke-static {v14, v8, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v13, v14

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v8, v13, v14

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v8, v13, v14
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_45

    const/4 v8, 0x3

    :try_start_4a
    aput-object v1, v13, v8
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_42

    :try_start_4b
    invoke-virtual {v3, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/io/InputStream;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_45

    goto/16 :goto_30

    :goto_32
    int-to-long v4, v3

    const/4 v8, 0x1

    :try_start_4c
    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v13, v5

    aget-byte v4, v11, v31

    int-to-short v4, v4

    aget-byte v5, v11, v26

    int-to-byte v5, v5

    aget-byte v8, v11, v16

    int-to-byte v8, v8

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x18f

    int-to-short v5, v5

    const/16 v8, 0x1f3

    aget-byte v8, v11, v8

    int-to-byte v8, v8

    const/16 v14, 0x65

    aget-byte v14, v11, v14

    or-int/lit8 v15, v14, -0x1

    const/4 v3, 0x1

    shl-int/2addr v15, v3

    xor-int/lit8 v14, v14, -0x1

    sub-int/2addr v15, v14

    int-to-byte v14, v15

    invoke-static {v5, v8, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v3, v8, v14

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_41

    if-eqz v28, :cond_4e

    :try_start_4d
    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_25

    if-nez v4, :cond_3a

    move-object/from16 v5, v41

    goto :goto_33

    :cond_3a
    move-object/from16 v5, v29

    :goto_33
    if-nez v4, :cond_3b

    move-object/from16 v4, v40

    goto :goto_34

    :cond_3b
    move-object/from16 v4, v37

    :goto_34
    sget v8, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    xor-int/lit8 v13, v8, 0x75

    and-int/lit8 v8, v8, 0x75

    const/4 v14, 0x1

    shl-int/2addr v8, v14

    add-int/2addr v13, v8

    rem-int/lit16 v8, v13, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v8, 0x2

    rem-int/2addr v13, v8

    :try_start_4e
    new-array v8, v14, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v8, v13

    const/16 v13, 0xd7

    int-to-short v13, v13

    aget-byte v14, v11, v24

    int-to-byte v14, v14

    aget-byte v15, v11, v16

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Class;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1e

    move/from16 v44, v6

    const/16 v15, 0x1e

    :try_start_4f
    aget-byte v6, v11, v15

    int-to-byte v6, v6

    aget-byte v11, v11, v16

    int-to-byte v11, v11

    invoke-static {v7, v6, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-virtual {v14, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1d

    const/16 v6, 0x400

    :try_start_50
    new-array v8, v6, [B

    move/from16 v11, v42

    :goto_35
    if-lez v11, :cond_3c

    const/16 v14, 0x51

    goto :goto_36

    :cond_3c
    move/from16 v14, v16

    :goto_36
    const/16 v15, 0x51

    if-eq v14, v15, :cond_3d

    move/from16 v46, v2

    move-object/from16 v45, v9

    move-object/from16 v48, v10

    goto/16 :goto_37

    :cond_3d
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1f

    const/4 v15, 0x3

    :try_start_51
    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v6, v15

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v30, 0x1

    aput-object v15, v6, v30

    aput-object v8, v6, v14

    sget-object v14, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    aget-byte v15, v14, v31

    int-to-short v15, v15

    move-object/from16 v45, v9

    aget-byte v9, v14, v26

    int-to-byte v9, v9

    move/from16 v46, v2

    aget-byte v2, v14, v16

    int-to-byte v2, v2

    invoke-static {v15, v9, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v9, 0x2d8

    int-to-short v9, v9

    const/16 v15, 0x1f3

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v47, 0x172

    move-object/from16 v48, v10

    aget-byte v10, v14, v47

    int-to-byte v10, v10

    invoke-static {v9, v15, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v15, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v32, 0x1

    aput-object v10, v15, v32

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v10, v15, v23

    invoke-virtual {v2, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1c

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3f

    const/4 v6, 0x3

    :try_start_52
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v9, v15

    aput-object v8, v9, v6

    aget-byte v6, v14, v24

    int-to-byte v6, v6

    aget-byte v10, v14, v16

    int-to-byte v10, v10

    invoke-static {v13, v6, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v10, 0x2e6

    int-to-short v10, v10

    move-object/from16 v47, v8

    const/4 v15, 0x0

    aget-byte v8, v14, v15

    int-to-byte v8, v8

    const/16 v15, 0x17f

    aget-byte v14, v14, v15

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    int-to-byte v14, v14

    invoke-static {v10, v8, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    new-array v14, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v14, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v14, v15

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v10, v14, v15

    invoke-virtual {v6, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_13

    sub-int/2addr v11, v2

    move-object/from16 v9, v45

    move/from16 v2, v46

    move-object/from16 v8, v47

    move-object/from16 v10, v48

    const/16 v6, 0x400

    goto/16 :goto_35

    :catchall_13
    move-exception v0

    move-object v2, v0

    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3e

    throw v3

    :cond_3e
    throw v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1f

    :cond_3f
    :goto_37
    :try_start_54
    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    aget-byte v6, v2, v24

    int-to-byte v6, v6

    aget-byte v8, v2, v16

    int-to-byte v8, v8

    invoke-static {v13, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x170

    int-to-short v8, v8

    const/4 v9, 0x0

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    const/16 v10, 0x21

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1b

    sget v8, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v8, v8, 0x61

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v9, 0x2

    rem-int/2addr v8, v9

    const/16 v8, 0x6d

    int-to-short v8, v8

    const/16 v9, 0x19

    :try_start_55
    aget-byte v9, v2, v9

    int-to-byte v9, v9

    aget-byte v10, v2, v16

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x28b

    int-to-short v9, v9

    const/16 v10, 0x1f3

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v11, 0x65

    aget-byte v11, v2, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    :try_start_56
    aget-byte v6, v2, v24

    int-to-byte v6, v6

    aget-byte v8, v2, v16

    int-to-byte v8, v8

    invoke-static {v13, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x142

    int-to-short v8, v8

    const/4 v9, 0x0

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    const/16 v10, 0x91

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_19

    const/16 v3, 0x2d5

    int-to-short v3, v3

    const/4 v6, 0x5

    :try_start_57
    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x252

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v6, 0x1e6

    int-to-short v6, v6

    const/16 v8, 0x16a

    aget-byte v8, v2, v8

    neg-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x8c

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    invoke-virtual {v3, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1f

    const/16 v6, 0x1e

    :try_start_58
    aget-byte v9, v2, v6

    int-to-byte v6, v9

    aget-byte v9, v2, v16

    int-to-byte v9, v9

    invoke-static {v7, v6, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0xfe

    int-to-short v9, v9

    const/16 v10, 0x5c

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v11, 0x21

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_18

    const/4 v10, 0x0

    :try_start_59
    aput-object v6, v8, v10
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1f

    const/16 v6, 0x1e

    :try_start_5a
    aget-byte v10, v2, v6

    int-to-byte v6, v10

    aget-byte v10, v2, v16

    int-to-byte v10, v10

    invoke-static {v7, v6, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v10, 0x5c

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v11, 0x21

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_17

    const/4 v9, 0x1

    :try_start_5b
    aput-object v6, v8, v9

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v6, 0x2

    aput-object v9, v8, v6

    invoke-virtual {v3, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1f

    sget v6, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    or-int/lit8 v8, v6, 0x49

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/lit8 v6, v6, 0x49

    sub-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v6, 0x2

    rem-int/2addr v8, v6

    const/16 v6, 0x1e

    :try_start_5c
    aget-byte v8, v2, v6

    int-to-byte v6, v8

    aget-byte v8, v2, v16

    int-to-byte v8, v8

    invoke-static {v7, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x175

    int-to-short v8, v8

    const/16 v9, 0xd9

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v10, 0x252

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_16

    const/16 v5, 0x1e

    :try_start_5d
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    aget-byte v6, v2, v16

    int-to-byte v6, v6

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xd9

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v9, 0x252

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    invoke-static {v8, v6, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_15

    :try_start_5e
    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    if-nez v4, :cond_41

    const-class v4, Lcom/appsflyer/internal/AFb1jSDK;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_24

    :try_start_5f
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x18c

    int-to-short v6, v6

    const/16 v8, 0x73

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v9, 0x21

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v6, v8, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_14

    :try_start_60
    sput-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    goto :goto_38

    :catchall_14
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_40

    throw v3

    :cond_40
    throw v2

    :cond_41
    :goto_38
    const/4 v14, 0x3

    goto/16 :goto_45

    :catchall_15
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_42

    throw v3

    :cond_42
    throw v2

    :catchall_16
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    throw v3

    :cond_43
    throw v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_24

    :catchall_17
    move-exception v0

    move-object v2, v0

    :try_start_61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_44

    throw v3

    :cond_44
    throw v2

    :catchall_18
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_45

    throw v3

    :cond_45
    throw v2

    :catchall_19
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_46

    throw v3

    :cond_46
    throw v2

    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_47

    throw v3

    :cond_47
    throw v2

    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_48

    throw v3

    :cond_48
    throw v2

    :catchall_1c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_49

    throw v3

    :cond_49
    throw v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1f

    :catchall_1d
    move-exception v0

    goto :goto_39

    :catchall_1e
    move-exception v0

    move/from16 v44, v6

    :goto_39
    move-object v2, v0

    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4a

    throw v3

    :cond_4a
    throw v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_7
    .catchall {:try_start_62 .. :try_end_62} :catchall_1f

    :catchall_1f
    move-exception v0

    move-object v2, v0

    goto :goto_3a

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x25f

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v9, 0x0

    aget-byte v10, v8, v9

    int-to-byte v9, v10

    add-int/lit8 v10, v9, -0x3

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d5

    int-to-short v6, v6

    sget v9, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    and-int/lit16 v9, v9, 0xf7

    int-to-byte v9, v9

    aget-byte v10, v8, v31

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1f

    const/4 v6, 0x2

    :try_start_64
    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v9, v6

    const/4 v2, 0x0

    aput-object v3, v9, v2

    const/16 v2, 0xb9

    int-to-short v2, v2

    aget-byte v3, v8, v26

    int-to-byte v3, v3

    aget-byte v6, v8, v16

    int-to-byte v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const-class v3, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v3, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

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

    if-eqz v3, :cond_4b

    throw v3

    :cond_4b
    throw v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1f

    :goto_3a
    :try_start_66
    sget-object v3, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_23

    const/16 v6, 0x1e

    :try_start_67
    aget-byte v8, v3, v6
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_22

    int-to-byte v6, v8

    :try_start_68
    aget-byte v8, v3, v16

    int-to-byte v8, v8

    invoke-static {v7, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x175

    int-to-short v8, v8

    const/16 v9, 0xd9

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v10, 0x252

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_23

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v5, v5, 0x2c

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    const/16 v5, 0x1e

    :try_start_69
    aget-byte v6, v3, v5

    int-to-byte v6, v6

    aget-byte v9, v3, v16

    int-to-byte v9, v9

    invoke-static {v7, v6, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0xd9

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v10, 0x252

    aget-byte v3, v3, v10

    int-to-byte v3, v3

    invoke-static {v8, v9, v3}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    if-eqz v3, :cond_4c

    throw v3

    :cond_4c
    throw v2

    :catchall_22
    move-exception v0

    move v5, v6

    goto :goto_3b

    :catchall_23
    move-exception v0

    const/16 v5, 0x1e

    :goto_3b
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4d

    throw v3

    :cond_4d
    throw v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_24

    :catchall_24
    move-exception v0

    goto :goto_3c

    :catchall_25
    move-exception v0

    move/from16 v44, v6

    :goto_3c
    move-object v2, v0

    goto/16 :goto_2d

    :cond_4e
    move/from16 v46, v2

    move/from16 v44, v6

    move-object/from16 v45, v9

    move-object/from16 v48, v10

    const/16 v5, 0x1e

    :try_start_6b
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_40

    const/4 v4, 0x1

    :try_start_6c
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/16 v2, 0x3ca

    int-to-short v2, v2

    const/16 v4, 0xd

    aget-byte v4, v11, v4

    int-to-byte v4, v4

    aget-byte v8, v11, v16

    int-to-byte v8, v8

    invoke-static {v2, v4, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aget-byte v8, v11, v31

    int-to-short v8, v8

    aget-byte v10, v11, v26

    int-to-byte v10, v10

    aget-byte v12, v11, v16

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_3f

    const/16 v6, 0x1e0

    int-to-short v6, v6

    const/16 v8, 0x7f

    :try_start_6d
    aget-byte v8, v11, v8

    int-to-byte v8, v8

    aget-byte v9, v11, v16

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_3e

    const/16 v9, 0x400

    :try_start_6e
    new-array v9, v9, [B
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_40

    const/4 v10, 0x0

    :goto_3d
    const/4 v11, 0x1

    :try_start_6f
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v12, v11

    sget-object v11, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v13, 0xd

    aget-byte v13, v11, v13

    int-to-byte v13, v13

    aget-byte v14, v11, v16

    int-to-byte v14, v14

    invoke-static {v2, v13, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x2d8

    int-to-short v14, v14

    const/16 v15, 0x1f3

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    const/16 v27, 0x172

    aget-byte v5, v11, v27

    int-to-byte v5, v5

    invoke-static {v14, v15, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    invoke-virtual {v13, v5, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_3d

    if-lez v5, :cond_4f

    const/4 v12, 0x1

    goto :goto_3e

    :cond_4f
    const/4 v12, 0x0

    :goto_3e
    const/4 v13, 0x1

    if-eq v12, v13, :cond_51

    :cond_50
    const/4 v14, 0x3

    goto/16 :goto_40

    :cond_51
    int-to-long v12, v10

    :try_start_70
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_40

    cmp-long v12, v12, v14

    if-gez v12, :cond_50

    const/4 v12, 0x3

    :try_start_71
    new-array v13, v12, [Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_28

    :try_start_72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v13, v14

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    aput-object v9, v13, v12

    const/16 v12, 0x7f

    aget-byte v12, v11, v12

    int-to-byte v12, v12

    aget-byte v14, v11, v16

    int-to-byte v14, v14

    invoke-static {v6, v12, v14}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v14, 0x2e6

    int-to-short v14, v14

    move-object/from16 v27, v3

    const/4 v15, 0x0

    aget-byte v3, v11, v15

    int-to-byte v3, v3

    const/16 v15, 0x17f

    aget-byte v11, v11, v15

    xor-int/lit8 v15, v11, -0x1

    and-int/lit8 v11, v11, -0x1

    const/16 v32, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v15, v11

    int-to-byte v11, v15

    invoke-static {v14, v3, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_27

    const/4 v14, 0x3

    :try_start_73
    new-array v11, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v11, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x1

    aput-object v15, v11, v25

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    aput-object v15, v11, v23

    invoke-virtual {v12, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_26

    or-int v3, v10, v5

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v5, v10

    sub-int v10, v3, v5

    move-object/from16 v3, v27

    const/16 v5, 0x1e

    goto/16 :goto_3d

    :catchall_26
    move-exception v0

    goto :goto_3f

    :catchall_27
    move-exception v0

    const/4 v14, 0x3

    goto :goto_3f

    :catchall_28
    move-exception v0

    move v14, v12

    :goto_3f
    move-object v2, v0

    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_52

    throw v3

    :cond_52
    throw v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_29

    :catchall_29
    move-exception v0

    move-object v2, v0

    goto/16 :goto_31

    :goto_40
    sget v3, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    const/16 v3, 0x7f

    :try_start_75
    aget-byte v3, v11, v3

    int-to-byte v3, v3

    aget-byte v5, v11, v16

    int-to-byte v5, v5

    invoke-static {v6, v3, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x58

    int-to-short v5, v5

    const/16 v9, 0x11f

    aget-byte v9, v11, v9

    int-to-byte v9, v9

    const/16 v10, 0x65

    aget-byte v10, v11, v10

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3c

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    or-int/lit8 v9, v5, 0x45

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v5, v5, 0x45

    sub-int/2addr v9, v5

    rem-int/lit16 v5, v9, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v9, v5

    const/16 v5, 0xd

    :try_start_76
    aget-byte v5, v11, v5

    int-to-byte v5, v5

    aget-byte v9, v11, v16

    int-to-byte v9, v9

    invoke-static {v2, v5, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x142

    int-to-short v5, v5

    const/4 v9, 0x0

    aget-byte v10, v11, v9

    int-to-byte v9, v10

    const/16 v10, 0x91

    aget-byte v11, v11, v10

    int-to-byte v10, v11

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_2a

    goto :goto_41

    :catchall_2a
    move-exception v0

    move-object v2, v0

    :try_start_77
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_53

    throw v4

    :cond_53
    throw v2
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_77} :catch_8
    .catchall {:try_start_77 .. :try_end_77} :catchall_29

    :catch_8
    :goto_41
    :try_start_78
    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v4, 0x7f

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    aget-byte v5, v2, v16

    int-to-byte v5, v5

    invoke-static {v6, v4, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x142

    int-to-short v5, v5

    const/4 v6, 0x0

    aget-byte v9, v2, v6

    int-to-byte v6, v9

    const/16 v9, 0x91

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_2b

    goto :goto_42

    :catchall_2b
    move-exception v0

    move-object v2, v0

    :try_start_79
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_54

    throw v4

    :cond_54
    throw v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_79} :catch_9
    .catchall {:try_start_79 .. :try_end_79} :catchall_29

    :catch_9
    :goto_42
    :try_start_7a
    const-class v2, Lcom/appsflyer/internal/AFb1jSDK;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3b

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v4, v4, 0x33

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    :try_start_7b
    const-class v4, Ljava/lang/Class;

    const/16 v5, 0x18c

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v8, 0x73

    aget-byte v8, v6, v8
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3a

    int-to-byte v8, v8

    const/16 v9, 0x21

    :try_start_7c
    aget-byte v10, v6, v9
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_39

    int-to-byte v9, v10

    :try_start_7d
    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3a

    const/16 v4, 0x31b

    int-to-short v4, v4

    :try_start_7e
    aget-byte v5, v6, v31

    int-to-byte v5, v5

    const/16 v8, 0x252

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    const/16 v5, 0x35f

    int-to-short v5, v5

    aget-byte v9, v6, v26

    int-to-byte v9, v9

    aget-byte v10, v6, v16

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget v9, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v10, v9, 0x214

    and-int/lit16 v9, v9, 0x214

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/4 v10, 0x5

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    aget-byte v11, v6, v16

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3b

    :try_start_7f
    new-array v8, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v8, v10

    aget-byte v3, v6, v26

    int-to-byte v3, v3

    aget-byte v10, v6, v16

    int-to-byte v10, v10

    invoke-static {v5, v3, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x22d

    aget-byte v5, v6, v5

    int-to-short v5, v5

    const/16 v10, 0x1f3

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    const/16 v11, 0x17f

    aget-byte v11, v6, v11

    xor-int/lit8 v12, v11, -0x1

    and-int/lit8 v11, v11, -0x1

    const/4 v13, 0x1

    shl-int/2addr v11, v13

    add-int/2addr v12, v11

    int-to-byte v11, v12

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    new-array v10, v13, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v3, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_38

    :try_start_80
    aput-object v3, v9, v11

    aput-object v2, v9, v13

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_3b

    const/16 v4, 0x2b8

    int-to-short v4, v4

    const/16 v5, 0x43

    :try_start_81
    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v8, 0x252

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa7

    int-to-short v5, v5

    const/16 v8, 0xc0

    aget-byte v9, v6, v8

    and-int/lit8 v8, v9, 0x1

    const/4 v10, 0x1

    or-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0xd2

    aget-byte v9, v6, v9

    xor-int/lit8 v11, v9, -0x1

    and-int/lit8 v9, v9, -0x1

    shl-int/2addr v9, v10

    add-int/2addr v11, v9

    int-to-byte v9, v11

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x24

    aget-byte v9, v6, v9

    int-to-short v9, v9

    aget-byte v10, v6, v24

    int-to-byte v10, v10

    const/16 v11, 0x7e

    aget-byte v11, v6, v11

    and-int/lit8 v12, v11, 0x1

    const/4 v13, 0x1

    or-int/2addr v11, v13

    add-int/2addr v12, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v10, 0x15a

    int-to-short v10, v10

    const/16 v11, 0x45

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    const/16 v12, 0x7e

    aget-byte v6, v6, v12

    add-int/lit8 v6, v6, 0x2

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    int-to-byte v6, v6

    invoke-static {v10, v11, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v10, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_d
    .catchall {:try_start_81 .. :try_end_81} :catchall_3b

    const/4 v12, 0x0

    :goto_43
    if-ge v12, v11, :cond_55

    :try_start_82
    invoke-static {v5, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v12, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_a
    .catchall {:try_start_82 .. :try_end_82} :catchall_29

    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :catch_a
    move-exception v0

    move-object v3, v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    goto/16 :goto_4e

    :cond_55
    :try_start_83
    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_d
    .catchall {:try_start_83 .. :try_end_83} :catchall_3b

    :try_start_84
    sget-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    if-nez v2, :cond_56

    const/16 v2, 0xa

    goto :goto_44

    :cond_56
    const/16 v2, 0x54

    :goto_44
    const/16 v4, 0xa

    if-eq v2, v4, :cond_57

    goto :goto_45

    :cond_57
    sput-object v3, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_3b

    :goto_45
    if-eqz v28, :cond_5a

    const/16 v2, 0x2d5

    int-to-short v2, v2

    :try_start_85
    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v5, 0x5

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0x252

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x17f

    aget-byte v5, v4, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0xc0

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    const/16 v8, 0x8c

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    sget v6, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v9, v6, 0x214

    and-int/lit16 v6, v6, 0x214

    or-int/2addr v6, v9

    int-to-short v6, v6

    const/4 v9, 0x5

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    aget-byte v10, v4, v16

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v48, v8, v6

    const-class v6, Lcom/appsflyer/internal/AFb1jSDK;
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2f

    :try_start_86
    const-class v9, Ljava/lang/Class;

    const/16 v10, 0x18c

    int-to-short v10, v10

    const/16 v11, 0x73

    aget-byte v11, v4, v11
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2e

    int-to-byte v11, v11

    const/16 v12, 0x21

    :try_start_87
    aget-byte v13, v4, v12

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_2d

    const/4 v9, 0x1

    :try_start_88
    aput-object v6, v8, v9

    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_58

    const/16 v6, 0x142

    int-to-short v6, v6

    const/4 v8, 0x0

    aget-byte v9, v4, v8
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_30

    int-to-byte v9, v9

    const/16 v10, 0x91

    :try_start_89
    aget-byte v4, v4, v10
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_2c

    int-to-byte v4, v4

    :try_start_8a
    invoke-static {v6, v9, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :catchall_2c
    move-exception v0

    move-object v2, v0

    move v11, v10

    goto/16 :goto_5c

    :cond_58
    :goto_46
    move-object v2, v5

    const/4 v5, 0x5

    goto :goto_49

    :catchall_2d
    move-exception v0

    goto :goto_47

    :catchall_2e
    move-exception v0

    const/16 v12, 0x21

    :goto_47
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_59

    throw v3

    :cond_59
    throw v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_30

    :catchall_2f
    move-exception v0

    const/16 v12, 0x21

    :goto_48
    move-object v2, v0

    const/16 v11, 0x91

    goto/16 :goto_5c

    :cond_5a
    const/16 v12, 0x21

    :try_start_8b
    sget v2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v4, v2, 0x214

    and-int/lit16 v2, v2, 0x214

    or-int/2addr v2, v4

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v5, 0x5

    aget-byte v6, v4, v5

    int-to-byte v6, v6

    aget-byte v8, v4, v16

    int-to-byte v8, v8

    invoke-static {v2, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v6, 0x17f

    aget-byte v6, v4, v6

    or-int/lit8 v8, v6, -0x1

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v8, v6

    int-to-short v6, v8

    const/16 v8, 0xc0

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    const/16 v9, 0x8c

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_36

    :try_start_8c
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v48, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8c .. :try_end_8c} :catch_b
    .catchall {:try_start_8c .. :try_end_8c} :catchall_30

    goto :goto_49

    :catchall_30
    move-exception v0

    goto :goto_48

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_8d
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_8d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8d .. :try_end_8d} :catch_c
    .catchall {:try_start_8d .. :try_end_8d} :catchall_30

    :catch_c
    const/4 v2, 0x0

    :goto_49
    if-eqz v2, :cond_5b

    const/16 v4, 0x42

    goto :goto_4a

    :cond_5b
    const/16 v4, 0x36

    :goto_4a
    const/16 v6, 0x36

    if-eq v4, v6, :cond_60

    :try_start_8e
    move-object v9, v2

    check-cast v9, Ljava/lang/Class;

    const/16 v2, 0x3a1

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v6, 0xa

    aget-byte v8, v4, v6
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_36

    int-to-byte v8, v8

    const/16 v10, 0x91

    :try_start_8f
    aget-byte v11, v4, v10
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_35

    int-to-byte v10, v11

    :try_start_90
    invoke-static {v2, v8, v10}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v8, v11

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v2, v8, v11

    invoke-virtual {v9, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v11, v8

    if-nez v28, :cond_5c

    const/4 v3, 0x1

    goto :goto_4b

    :cond_5c
    const/4 v3, 0x0

    :goto_4b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v11, v8

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    const/16 v3, 0xb01

    new-array v3, v3, [B

    const-class v8, Lcom/appsflyer/internal/AFb1jSDK;

    const/16 v11, 0x3e3

    int-to-short v11, v11

    const/16 v13, 0x63

    aget-byte v13, v4, v13

    int-to-byte v13, v13

    const/16 v15, 0xb

    aget-byte v15, v4, v15

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_36

    sget v11, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v13, v11, 0x9

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    const/16 v15, 0x9

    xor-int/2addr v11, v15

    sub-int/2addr v13, v11

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v11, 0x2

    rem-int/2addr v13, v11

    const/4 v11, 0x1

    :try_start_91
    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v13, v11

    const/16 v8, 0x1fc

    int-to-short v8, v8

    const/16 v11, 0xce

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    aget-byte v15, v4, v16

    int-to-byte v15, v15

    invoke-static {v8, v11, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    aget-byte v15, v4, v31

    int-to-short v15, v15

    aget-byte v5, v4, v26

    int-to-byte v5, v5

    aget-byte v6, v4, v16

    int-to-byte v6, v6

    invoke-static {v15, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-virtual {v11, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_34

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    xor-int/lit8 v6, v5, 0x49

    and-int/lit8 v5, v5, 0x49

    const/4 v11, 0x1

    shl-int/2addr v5, v11

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    :try_start_92
    new-array v5, v11, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/16 v6, 0xce

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    aget-byte v11, v4, v16

    int-to-byte v11, v11

    invoke-static {v8, v6, v11}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x2f8

    int-to-short v11, v11

    const/16 v13, 0xc0

    aget-byte v15, v4, v13

    int-to-byte v13, v15

    const/16 v15, 0x172

    aget-byte v15, v4, v15

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v6, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_33

    const/16 v5, 0xce

    :try_start_93
    aget-byte v5, v4, v5

    int-to-byte v5, v5

    aget-byte v6, v4, v16

    int-to-byte v6, v6

    invoke-static {v8, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x142

    int-to-short v6, v6

    const/4 v8, 0x0

    aget-byte v11, v4, v8
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_32

    int-to-byte v8, v11

    const/16 v11, 0x91

    :try_start_94
    aget-byte v4, v4, v11

    int-to-byte v4, v4

    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_31

    :try_start_95
    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(I)I

    move-result v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_56

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v5, v4, 0x49

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v4, v4, 0x49

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    move-object/from16 v15, v40

    move-object/from16 v14, v41

    move-object/from16 v8, v43

    move/from16 v6, v44

    const/16 v5, 0xacc

    goto/16 :goto_2f

    :catchall_31
    move-exception v0

    goto :goto_4c

    :catchall_32
    move-exception v0

    const/16 v11, 0x91

    :goto_4c
    move-object v2, v0

    :try_start_96
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5d

    throw v3

    :cond_5d
    throw v2

    :catchall_33
    move-exception v0

    const/16 v11, 0x91

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5e

    throw v3

    :cond_5e
    throw v2

    :catchall_34
    move-exception v0

    const/16 v11, 0x91

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5f

    throw v3

    :cond_5f
    throw v2

    :catchall_35
    move-exception v0

    move v11, v10

    goto/16 :goto_5b

    :cond_60
    const/4 v2, 0x2

    const/16 v11, 0x91

    new-array v4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v9, v45

    invoke-virtual {v9, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    if-nez v28, :cond_61

    const/4 v3, 0x1

    goto :goto_4d

    :cond_61
    const/4 v3, 0x0

    :goto_4d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_56

    sget v2, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v2, v2, 0x3c

    sub-int/2addr v2, v4

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v2, 0x2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/16 v32, 0x1

    goto/16 :goto_62

    :catchall_36
    move-exception v0

    const/16 v11, 0x91

    goto/16 :goto_5b

    :catch_d
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    move-object v3, v0

    :goto_4e
    :try_start_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25b

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v8, 0x0

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    or-int/lit8 v9, v8, -0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v10, v8, -0x3

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d5

    int-to-short v2, v2

    sget v5, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    and-int/lit16 v5, v5, 0xf7

    int-to-byte v5, v5

    aget-byte v8, v6, v31

    int-to-byte v8, v8

    invoke-static {v2, v5, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_56

    const/4 v4, 0x2

    :try_start_98
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/16 v2, 0xb9

    int-to-short v2, v2

    aget-byte v3, v6, v26

    int-to-byte v3, v3

    aget-byte v4, v6, v16

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_37

    :catchall_37
    move-exception v0

    move-object v2, v0

    :try_start_99
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_62

    throw v3

    :cond_62
    throw v2

    :catchall_38
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_63

    throw v3

    :cond_63
    throw v2

    :catchall_39
    move-exception v0

    move v12, v9

    const/16 v11, 0x91

    goto :goto_4f

    :catchall_3a
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    :goto_4f
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_64

    throw v3

    :cond_64
    throw v2

    :catchall_3b
    move-exception v0

    goto/16 :goto_53

    :catchall_3c
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_65

    throw v3

    :cond_65
    throw v2

    :catchall_3d
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_66

    throw v3

    :cond_66
    throw v2

    :catchall_3e
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_67

    throw v3

    :cond_67
    throw v2

    :catchall_3f
    move-exception v0

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_68

    throw v3

    :cond_68
    throw v2

    :catchall_40
    move-exception v0

    goto/16 :goto_5a

    :catchall_41
    move-exception v0

    move/from16 v44, v6

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_69

    throw v3

    :cond_69
    throw v2

    :catchall_42
    move-exception v0

    move/from16 v44, v6

    move v14, v8

    goto :goto_50

    :catchall_43
    move-exception v0

    move/from16 v44, v6

    move v11, v8

    goto :goto_51

    :catchall_44
    move-exception v0

    move/from16 v44, v6

    :goto_50
    const/16 v11, 0x91

    const/16 v12, 0x21

    goto :goto_52

    :catchall_45
    move-exception v0

    move/from16 v44, v6

    const/16 v11, 0x91

    :goto_51
    const/16 v12, 0x21

    const/4 v14, 0x3

    :goto_52
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6a

    throw v3

    :cond_6a
    throw v2

    :catchall_46
    move-exception v0

    move/from16 v44, v6

    :goto_53
    const/16 v11, 0x91

    const/16 v12, 0x21

    goto/16 :goto_5b

    :catchall_47
    move-exception v0

    move/from16 v44, v6

    goto/16 :goto_5a

    :catchall_48
    move-exception v0

    move/from16 v44, v6

    goto :goto_54

    :catchall_49
    move-exception v0

    move/from16 v44, v6

    move v12, v15

    const/16 v11, 0x91

    goto :goto_55

    :catchall_4a
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    :goto_54
    const/16 v11, 0x91

    const/16 v12, 0x21

    :goto_55
    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6b

    throw v3

    :cond_6b
    throw v2

    :catchall_4b
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    move v14, v12

    goto :goto_56

    :catchall_4c
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    goto :goto_57

    :catchall_4d
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    move v14, v13

    :goto_56
    const/16 v11, 0x91

    const/16 v12, 0x21

    :goto_57
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6c

    throw v3

    :cond_6c
    throw v2

    :catchall_4e
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    goto :goto_58

    :catchall_4f
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    const/16 v11, 0x91

    :goto_58
    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6d

    throw v3

    :cond_6d
    throw v2

    :catchall_50
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6e

    throw v3

    :cond_6e
    throw v2

    :catchall_51
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6f

    throw v3

    :cond_6f
    throw v2

    :catchall_52
    move-exception v0

    move/from16 v44, v6

    move-object/from16 v43, v8

    goto/16 :goto_5a

    :catchall_53
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move/from16 v44, v6

    move-object/from16 v43, v8

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move/from16 v11, v20

    goto :goto_59

    :catchall_54
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move/from16 v44, v6

    move-object/from16 v43, v8

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    const/16 v11, 0x91

    :goto_59
    const/16 v12, 0x21

    const/4 v14, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_70

    throw v3

    :cond_70
    throw v2

    :cond_71
    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move/from16 v44, v6

    move-object/from16 v43, v8

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x263

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/4 v6, 0x0

    aget-byte v8, v5, v6

    int-to-byte v6, v8

    or-int/lit8 v8, v6, -0x3

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/lit8 v9, v6, -0x3

    sub-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d5

    int-to-short v3, v3

    sget v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    and-int/lit16 v4, v4, 0xf7

    int-to-byte v4, v4

    aget-byte v6, v5, v31

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_56

    const/4 v3, 0x1

    :try_start_9a
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const/16 v2, 0xb9

    int-to-short v2, v2

    aget-byte v3, v5, v26

    int-to-byte v3, v3

    aget-byte v5, v5, v16

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_55

    :catchall_55
    move-exception v0

    move-object v2, v0

    :try_start_9b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_72

    throw v3

    :cond_72
    throw v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_56

    :catchall_56
    move-exception v0

    goto :goto_5b

    :catchall_57
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move/from16 v44, v6

    move-object/from16 v43, v8

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    :goto_5a
    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    :goto_5b
    move-object v2, v0

    :goto_5c
    add-int/lit8 v6, v44, 0x1

    :goto_5d
    const/16 v3, 0x9

    if-ge v6, v3, :cond_73

    const/4 v4, 0x0

    goto :goto_5e

    :cond_73
    const/4 v4, 0x1

    :goto_5e
    const/4 v5, 0x1

    if-eq v4, v5, :cond_75

    :try_start_9c
    aget-boolean v4, v43, v6

    if-eqz v4, :cond_74

    const/4 v4, 0x1

    goto :goto_5f

    :cond_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_75
    const/4 v4, 0x0

    :goto_5f
    if-nez v4, :cond_76

    const/4 v4, 0x0

    goto :goto_60

    :cond_76
    const/4 v4, 0x1

    :goto_60
    const/4 v5, 0x1

    if-ne v4, v5, :cond_77

    const/4 v4, 0x0

    sput-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    sput-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_61

    :cond_77
    const/16 v1, 0x279

    int-to-short v1, v1

    sget-object v3, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v4, 0xce

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v5, 0xc0

    aget-byte v5, v3, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_e

    const/4 v4, 0x2

    :try_start_9d
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/16 v1, 0xb9

    int-to-short v1, v1

    aget-byte v2, v3, v26

    int-to-byte v2, v2

    aget-byte v3, v3, v16

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_58

    :catchall_58
    move-exception v0

    move-object v1, v0

    :try_start_9e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_78

    throw v2

    :cond_78
    throw v1

    :cond_79
    move-object/from16 v34, v2

    move/from16 v33, v4

    move-object/from16 v35, v5

    move/from16 v44, v6

    move-object/from16 v43, v8

    move v8, v9

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move v6, v13

    const/4 v2, 0x2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v11, 0x91

    const/16 v12, 0x21

    const/4 v14, 0x3

    :goto_61
    move/from16 v32, v33

    :goto_62
    add-int/lit8 v5, v44, 0x1

    move v13, v6

    move v9, v8

    move/from16 v4, v32

    move-object/from16 v2, v34

    move-object/from16 v11, v36

    move-object/from16 v10, v38

    move-object/from16 v8, v43

    const/16 v3, 0x8

    const/4 v12, 0x4

    move v6, v5

    move-object/from16 v5, v35

    goto/16 :goto_18

    :cond_7a
    :goto_63
    return-void

    :catchall_59
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7b

    throw v2

    :cond_7b
    throw v1

    :catchall_5a
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7c

    throw v2

    :cond_7c
    throw v1

    :catchall_5b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7d

    throw v2

    :cond_7d
    throw v1

    :catchall_5c
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7e

    throw v2

    :cond_7e
    throw v1
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_e

    :catch_e
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

.method public static AFInAppEventParameterName(Ljava/lang/Object;)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v1, v0, 0x29

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x29

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x12

    sub-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget p0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v4, p0, 0x184

    and-int/lit16 p0, p0, 0x184

    or-int/2addr p0, v4

    int-to-short p0, p0

    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v5, 0xa

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x91

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v5, 0x257

    int-to-short v5, v5

    const/16 v6, 0x45

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x1e

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/lit8 v0, v0, 0x2

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

.method public static AFKeystoreWrapper(I)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v1, v0, 0x65

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x65

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v3, 0x71

    or-int/lit8 v3, v3, 0x71

    add-int/2addr v0, v3

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget p0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 v4, p0, 0x184

    and-int/lit16 p0, p0, 0x184

    or-int/2addr p0, v4

    int-to-short p0, p0

    sget-object v4, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v5, 0xa

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x91

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v5, 0x257

    int-to-short v5, v5

    const/16 v6, 0x45

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x1e

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v1, v0, 0x1d

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x1d

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v1, v1, 0x2

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

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    or-int/lit8 v1, v0, 0x2f

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x2f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x58

    if-nez v1, :cond_0

    const/16 v1, 0x43

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "ISO-8859-1"

    const-string v3, "\u001f\u0097\u009aS7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c68\u00cc\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001f\u00d2<\u00ec\u00f4\n\u00dcK\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be%%\u0000\u00f7\u0005\u0011\u0003\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u0008\u0006(\u00d62\u0003\u00d84\u00f2\u000c\t\u00e3(\u00fa\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u0008\u0006(\u00d62\u0003\u00d84\u00f2\u000c\t\u00df\u0014\u0014\u00f2\u000f\u00fb\u0012\u00f4\u0010\u00df\u0016\u000f\u00fb\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d46\u00ff\u00f4\u0010\u00ff\u00f6\u000e\u00ea$\u00fe\u0006\u00f2\t\u0001\u00e2(\u000c\u00f6\u0001\u0014\u00fe\u0006\n\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u001a,\u000b\u00f6\u000c\u0000\u0002\u0002\u00fb\u000c\t\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008\u001f\u00d2;\u00ed\u00f4\n\u00dc\u0003\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u00f4\n\u0017\u00ed\u0008\t\u0001\u0012\u00d6%\u00fe\u00e5,\u0006\u00df\u0016\u000f\u00fb\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f5\u0001\u0012\u00e3\u0017\r\u00f6\u00ff\u0006\u00ef%\u00fa\t\u0006\u00fa\u000e\u00087\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u00cd\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001f\u00d2;\u00ed\u00f4\n\u00dc\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const/4 v4, 0x0

    const/16 v5, 0x3f9

    if-eq v1, v0, :cond_1

    new-array v0, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v0, 0x79

    :goto_1
    sput v0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    goto :goto_2

    :cond_1
    new-array v0, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v0, 0x2b

    goto :goto_1

    :goto_2
    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static values(ICI)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    add-int/lit8 v1, v0, 0x42

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    sget-object v1, Lcom/appsflyer/internal/AFb1jSDK;->setDebugLog:Ljava/lang/Object;

    xor-int/lit8 v4, v0, 0x79

    and-int/lit8 v5, v0, 0x79

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/2addr v4, v3

    add-int/lit8 v0, v0, 0x76

    sub-int/2addr v0, v2

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    rem-int/2addr v0, v3

    const/4 v0, 0x3

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    sget p0, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerIdAndLogSession:I

    xor-int/lit16 p2, p0, 0x184

    and-int/lit16 p0, p0, 0x184

    or-int/2addr p0, p2

    int-to-short p0, p0

    sget-object p2, Lcom/appsflyer/internal/AFb1jSDK;->setCustomerUserId:[B

    const/16 v5, 0xa

    aget-byte v5, p2, v5

    int-to-byte v5, v5

    const/16 v6, 0x91

    aget-byte v6, p2, v6

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFb1jSDK;->setAndroidIdData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v5, 0x288

    int-to-short v5, v5

    const/16 v6, 0x19c

    aget-byte v6, p2, v6

    int-to-byte v6, v6

    const/16 v7, 0x1e

    aget-byte p2, p2, v7

    int-to-byte p2, p2

    invoke-static {v5, v6, p2}, Lcom/appsflyer/internal/AFb1jSDK;->$$c(ISI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, p1

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v0, v2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v0, v3

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p1, Lcom/appsflyer/internal/AFb1jSDK;->getOutOfStore:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1jSDK;->setOutOfStore:I

    rem-int/2addr p1, v3

    const/16 p2, 0x46

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    :goto_0
    if-eq p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_1
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
