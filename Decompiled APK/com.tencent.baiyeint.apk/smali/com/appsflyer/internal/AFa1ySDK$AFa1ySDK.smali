.class public final Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1ySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AFa1ySDK"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:Z = false

.field private static AFInAppEventType:I = 0x0

.field private static AFLogger:I = 0x1

.field private static afDebugLog:[C

.field private static afErrorLog:I

.field private static afInfoLog:J

.field private static afRDLog:Z

.field private static valueOf:[C


# instance fields
.field private final AFKeystoreWrapper:Landroid/content/Context;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->valueOf:[C

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventParameterName:Z

    sput-boolean v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afRDLog:Z

    const/16 v0, 0xc7

    sput v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType:I

    const/16 v0, 0x91

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afDebugLog:[C

    const-wide v0, -0x304db6b92c0c6755L    # -8.27109994667433E75

    sput-wide v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afInfoLog:J

    return-void

    nop

    :array_0
    .array-data 2
        0x128s
        0x12ds
        0x126s
        0x13bs
        0x130s
        0x134s
        0x12cs
        0x13as
        0x137s
        0x115s
        0x116s
        0x109s
        0x119s
        0x108s
        0x10bs
        0x132s
        0x133s
        0x12bs
        0xe7s
        0x12es
        0x135s
        0x139s
        0x140s
        0x13es
        0x12fs
        0x13fs
        0x12as
        0x136s
        0x101s
        0x100s
        0x113s
        0x13cs
        0xfds
        0xf5s
        0xf9s
        0xffs
        0xeds
    .end array-data

    nop

    :array_1
    .array-data 2
        0x62s
        -0x6727s
        0x3137s
        -0x3591s
        0x62c8s
        0x2ds
        -0x6727s
        0x3135s
        -0x35d1s
        0x6286s
        0x66s
        -0x6736s
        0x313fs
        -0x3593s
        0x62c9s
        -0x4cds
        -0x6bdes
        0x2ccas
        -0x3ac3s
        0x5e6ds
        -0x935s
        -0x70d5s
        0x2865s
        -0x3f25s
        0x5933s
        -0xd95s
        -0x7529s
        0x237bs
        -0x4393s
        0x54d4s
        -0x12c6s
        -0x79d9s
        0x1ec4s
        -0x48c4s
        0x5064s
        -0x173as
        -0x7ec5s
        0x1a29s
        -0x4d3ds
        0x4b36s
        -0x1b82s
        0x7cdds
        0x1540s
        -0x5192s
        0x46ces
        -0x20fes
        0x7869s
        0x10c7s
        -0x56eas
        0x4264s
        -0x2529s
        0x730ds
        0xc34s
        -0x5b67s
        -0x7746s
        0x1012s
        -0x4614s
        0x42bcs
        -0x15ebs
        0x73eas
        0x1ceas
        -0x5bc0s
        0x4db4s
        -0x2915s
        0x7e12s
        0x7b8s
        -0x5f13s
        0x4811s
        -0x2e50s
        0x7aeds
        0x259s
        -0x5445s
        0x61s
        -0x673bs
        0x3132s
        -0x358ds
        0x62c3s
        -0x4c2s
        -0x6b9as
        0x2c83s
        -0x3acfs
        0x5e6ds
        -0x926s
        -0x70c4s
        0x286as
        -0x3f25s
        0x5974s
        -0xd9cs
        -0x752ds
        0x232fs
        -0x4391s
        0x54des
        -0x12ces
        -0x79d7s
        0x1ef0s
        -0x48e4s
        0x505cs
        -0x1719s
        -0x7ee5s
        0x1a5bs
        -0x4d13s
        0x4b00s
        -0x1bb7s
        0x7cfds
        0x1521s
        -0x51bbs
        0x46f1s
        -0x20dcs
        0x7848s
        -0x2d8fs
        0x4acbs
        -0x1cc2s
        0x1874s
        -0x4f34s
        0x2920s
        0x4666s
        -0x124s
        0x1728s
        -0x738cs
        0x24ces
        -0x4e34s
        0x2971s
        -0x7f79s
        0x7bcds
        -0x2c84s
        0x4a9as
        -0x50a8s
        0x26s
        -0x672ds
        0x66s
        -0x6765s
        0x3127s
        -0x35cfs
        0x62dds
        -0x49as
        -0x6b8es
        0x2c9cs
        -0x3ad8s
        0x5e31s
        -0x964s
        -0x70c6s
        0x286cs
        -0x3f25s
        0x593bs
        -0xd98s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->valueOf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFInAppEventType()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    const-string/jumbo v5, "\u0089\u0086\u0081\u0084\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x7f

    invoke-static {v2, v5, v2, v6}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const/4 v8, 0x2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    sget v5, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x73

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    rem-int/2addr v5, v8

    :try_start_1
    const-string/jumbo v5, "\u008f\u008a\u008e\u008d\u008c\u0083\u008b\u008a"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x7f

    invoke-static {v2, v5, v2, v7}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    aput-object v5, v4, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    sget v6, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v6, v6, 0xb

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/2addr v6, v8

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_2
    if-ge v4, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x31

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    :goto_3
    const-string/jumbo v4, "\u0082\u0087\u0090"

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    invoke-static {v2, v4, v2, v5}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget v2, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/2addr v2, v8

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    const/16 v2, 0x2e

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    if-eq v2, v3, :cond_6

    const/16 v2, 0x17

    :try_start_3
    div-int/2addr v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    return-object v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v0, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const-string/jumbo v5, "\u0093\u009d\u0095\u009c\u0085\u0084\u0089\u0087\u009b\u009a\u0087\u0093\u0099\u0084\u0085\u0098\u0093\u0097\u0087\u0090\u0093\u0082\u0087\u0090\u0093\u0094\u0095\u0085\u0084\u0081\u0096\u0087\u0095\u0087\u0094\u0093\u0092\u0087\u0091\u0085\u0081\u0082"

    invoke-static {v2, v5, v2, v1}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string/jumbo v1, "\u009e\u009e\u009e\u009e\u0082\u0087\u0090"

    invoke-static {v2, v1, v2, v0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_0
    check-cast p2, [C

    if-eqz p1, :cond_1

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_1
    check-cast p1, [B

    sget-object v0, Lcom/appsflyer/internal/AFf1nSDK;->values:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->valueOf:[C

    sget v2, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType:I

    sget-boolean v3, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afRDLog:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    array-length p0, p1

    sput p0, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    new-array p0, p0, [C

    sput v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    :goto_0
    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    if-ge p2, v3, :cond_2

    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    add-int/2addr v3, p3

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_3
    sget-boolean p1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventParameterName:Z

    if-eqz p1, :cond_5

    array-length p0, p2

    sput p0, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    new-array p0, p0, [C

    sput v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    :goto_1
    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    if-ge p1, v3, :cond_4

    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sub-int/2addr v3, v4

    aget-char v3, p2, v3

    sub-int/2addr v3, p3

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    sget p1, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_5
    array-length p1, p0

    sput p1, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    new-array p1, p1, [C

    sput v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    :goto_2
    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    if-ge p2, v3, :cond_6

    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sget v3, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p3

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p2

    sget p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/appsflyer/internal/AFf1nSDK;->AFInAppEventParameterName:I

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static varargs AFInAppEventType([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    sget v3, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x38

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const/16 v3, 0x4f

    :goto_1
    if-eq v3, v4, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x39

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v0, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    if-eq v6, v5, :cond_8

    const/4 v5, 0x0

    sget v6, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v6, v6, 0x7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/lit8 v6, v6, 0x2

    move v6, v1

    :goto_4
    const/16 v7, 0x14

    if-ge v6, v3, :cond_4

    move v8, v7

    goto :goto_5

    :cond_4
    const/16 v8, 0x36

    :goto_5
    if-eq v8, v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    sget v7, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v7, v7, 0xf

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/lit8 v7, v7, 0x2

    aget-object v7, p0, v6

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x32

    if-nez v5, :cond_6

    const/16 v9, 0xa

    goto :goto_6

    :cond_6
    move v9, v8

    :goto_6
    if-eq v9, v8, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    xor-int/2addr v7, v5

    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    return-object v2
.end method

.method private valueOf()Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, -0x1

    const/16 v4, 0x30

    const-wide/16 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    const-string/jumbo v10, "\u0089\u0086\u0081\u0084\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v11

    shr-int/lit8 v11, v11, 0x18

    add-int/lit8 v11, v11, 0x7f

    invoke-static {v8, v10, v8, v11}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    const-string/jumbo v11, "\u0087\u0084\u0081\u008f\u0099\u009b\u0095\u00a0\u0081\u009f\u0084\u0088\u0096\u0085\u0082"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v12

    shr-int/2addr v12, v7

    rsub-int/lit8 v12, v12, 0x7f

    invoke-static {v8, v11, v8, v12}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\u00a3\u00a2\u009e\u00a2\u00a1"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v12

    shr-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x7f

    invoke-static {v8, v11, v8, v12}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x4

    invoke-static {v9, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v14

    cmp-long v14, v14, v5

    add-int/2addr v14, v3

    int-to-char v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2c

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0xa

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    int-to-char v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x12

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x36

    const v12, 0x88d8

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    int-to-char v12, v13

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    const/4 v11, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFKeystoreWrapper:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v13

    cmp-long v13, v13, v5

    add-int/lit8 v13, v13, 0x24

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v14

    shr-int/2addr v14, v7

    add-int/lit8 v14, v14, 0x48

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x18

    int-to-char v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move v13, v9

    goto :goto_1

    :cond_0
    move v13, v12

    :goto_1
    const/16 v14, -0xa8c

    if-eq v13, v12, :cond_1

    sget v13, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v13, v13, 0x19

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/lit8 v13, v13, 0x2

    :try_start_2
    invoke-static {v2, v9}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/lit8 v13, v13, 0xb

    invoke-static {v2, v4, v9, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v15

    add-int/lit8 v15, v15, 0x6e

    const v16, 0xd206

    invoke-static {v9, v9}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v17

    cmp-long v17, v17, v5

    add-int v5, v17, v16

    int-to-char v5, v5

    invoke-static {v13, v15, v5}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v5, v12

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    if-eqz v5, :cond_5

    const-string/jumbo v5, "\u00a1\u00a4\u009a"

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    shr-int/lit8 v6, v6, 0x6

    rsub-int/lit8 v6, v6, 0x7f

    invoke-static {v8, v5, v8, v6}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_3

    move v0, v9

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    sget v0, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFLogger:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    move v0, v12

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v9

    :goto_5
    :try_start_4
    iget-object v5, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    shr-int/2addr v6, v7

    rsub-int/lit8 v6, v6, 0x6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    add-int/lit8 v13, v13, 0x78

    const v15, 0xb1bf

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    add-int v15, v16, v15

    int-to-char v15, v15

    invoke-static {v6, v13, v15}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    invoke-virtual {v5, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int/2addr v12, v6

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x7f

    const v6, 0xaf3a

    invoke-static {v2, v9}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/2addr v13, v6

    int-to-char v6, v13

    invoke-static {v12, v4, v6}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/lit8 v6, v6, 0x7f

    invoke-static {v11, v11}, Landroid/graphics/PointF;->length(FF)F

    move-result v12

    cmpl-float v12, v12, v11

    int-to-char v12, v12

    invoke-static {v4, v6, v12}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u0088\u00a5"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    add-int/lit8 v4, v4, 0x7f

    invoke-static {v8, v0, v8, v4}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u0089\u00a5"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/2addr v3, v7

    rsub-int/lit8 v3, v3, 0x7f

    invoke-static {v8, v0, v8, v3}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->AFInAppEventType([ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK$AFa1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    cmpl-float v4, v4, v11

    rsub-int/lit8 v4, v4, 0x2d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0xa

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v7, v3

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v7, v2, v3}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->values(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method private static values(IIC)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    :goto_0
    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    if-ge v2, p0, :cond_0

    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afDebugLog:[C

    sget v4, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    add-int/2addr v4, p1

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    int-to-long v5, v5

    sget-wide v7, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;->afInfoLog:J

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
