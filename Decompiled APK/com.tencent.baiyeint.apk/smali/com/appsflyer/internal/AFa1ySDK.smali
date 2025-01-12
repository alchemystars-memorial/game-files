.class public final Lcom/appsflyer/internal/AFa1ySDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:[C = null

.field private static AFInAppEventType:I = 0x1

.field private static AFKeystoreWrapper:J

.field private static valueOf:J

.field private static values:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x84

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventParameterName:[C

    const-wide v0, -0x1e2fa63247b6ee16L    # -1.471216369281029E163

    sput-wide v0, Lcom/appsflyer/internal/AFa1ySDK;->valueOf:J

    const-wide v0, 0x5bb01e9fae4120b0L    # 4.576705847217138E133

    sput-wide v0, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper:J

    return-void

    :array_0
    .array-data 2
        -0x1716s
        -0x6f1s
        -0x34c5s
        -0x22b9s
        -0x50b4s
        -0x4e90s
        -0x7c6ds
        -0x6a3ds
        0x67afs
        0x49d4s
        0x5bc3s
        0x2de0s
        0x3e03s
        0x1s
        0x1228s
        -0x1bads
        -0x9aes
        -0x27d1s
        -0x5555s
        -0x4350s
        -0x7151s
        -0x6f24s
        0x62e7s
        0x74e5s
        0x4514s
        0x573fs
        0x3936s
        0xb68s
        0x1d72s
        -0x1099s
        -0xe7as
        -0x3c46s
        -0x2a52s
        -0x582ds
        0x30s
        0x284cs
        0x39a9s
        0xb9ds
        0x1de1s
        0x6feas
        0x71d6s
        0x4335s
        0x5565s
        -0x58ebs
        -0x768as
        -0x6485s
        -0x12b9s
        -0x15es
        -0x3f52s
        -0x2d6ds
        0x24fes
        0x36a3s
        0x18f4s
        0x6a3cs
        0x7c1ds
        0x4e16s
        0x5070s
        -0x5dbds
        0x61s
        0x1184s
        0x23b0s
        0x35ccs
        0x47c7s
        0x59fbs
        0x6b18s
        0x7d48s
        -0x70c1s
        -0x5eb7s
        -0x4cf6s
        -0x3ab1s
        -0x2975s
        -0x1765s
        -0x55es
        0xcd5s
        0x1ef4s
        0x30ebs
        0x4207s
        0x5435s
        0x345es
        0x25bbs
        0x178fs
        0x1f3s
        0x73f8s
        0x6dc4s
        0x5f27s
        0x4977s
        -0x44ffs
        -0x6aa0s
        -0x7891s
        -0xee1s
        -0x1d6es
        -0x2351s
        -0x3166s
        0x6c2as
        0x7db2s
        0x6as
        0x118bs
        0x23a2s
        0x35dfs
        0x4786s
        0x59fbs
        0x6b13s
        0x7d48s
        -0x70dcs
        -0x5ea9s
        -0x4cacs
        -0x3a96s
        -0x296fs
        -0x1770s
        0x20fds
        0x315bs
        0x367s
        0x150fs
        0x6712s
        0x7925s
        0x3240s
        0x2381s
        0x11b2s
        0x7des
        0x75c0s
        0x6be2s
        0x590as
        0x4f08s
        -0x42eas
        -0x6cbfs
        -0x7ebcs
        -0x898s
        -0x1b75s
        -0x256bs
        -0x375as
        0x3edas
        0x2ccds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const-string/jumbo v7, "\u6034\uefde\u90c1\uc7a1\u6005"

    invoke-static {v7, v3}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eq v2, v6, :cond_1

    invoke-static {v5}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v5}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    invoke-static {v2, v3, v8}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v5}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    invoke-static {v7, v2}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x25

    if-nez p0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/16 v3, 0x19

    :goto_2
    if-eq v3, v2, :cond_3

    invoke-static {v5, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    invoke-static {v7, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    sget p0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {v4, v4, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p0

    sub-int/2addr v6, p0

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long p0, v2, v7

    add-int/lit8 p0, p0, 0x23

    invoke-static {v5}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    cmp-long v2, v2, v7

    int-to-char v2, v2

    invoke-static {v6, p0, v2}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x26

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x10

    :goto_1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "\u582b\u2680\u5f80\u0cdb\u584a\u065e\u1e84\u6eb9\uda84\u8599\u9bc4\ue825\u5dc4\u00c3\u194e\u6b09\ud00a\u8e04\u9654\ue6ee\u5359\u0d49\u13ad\u61aa\ud585\u8891\u90c7\ue36e\u48d9"

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x30

    const-string/jumbo v4, "\u6034\uefde\u90c1\uc7a1\u6005"

    const-string v5, ""

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-static {v5, v3, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    int-to-char v7, v7

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v6, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v6, v6, 0x61

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x17

    invoke-static {v5}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x22

    invoke-static {v5, v3, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    add-int/lit16 v7, v7, 0x282e

    int-to-char v7, v7

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    const/16 v6, 0x4a

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    const/16 v0, 0x1b

    :goto_2
    if-eq v0, v6, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/2addr v0, v1

    invoke-static {v5, v3, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x21

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x14

    add-int/2addr v0, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x3a

    invoke-static {v5, v3, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-static {v0, v7, v3}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    invoke-static {v5, v5, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_4
    invoke-static {v5, v5, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_5
    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    int-to-char v7, v7

    invoke-static {v0, v3, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xf

    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4e

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x343f

    int-to-char v7, v7

    invoke-static {v0, v3, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_6

    move v6, v3

    :cond_6
    if-eq v6, v3, :cond_7

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_8

    :cond_7
    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x78

    goto :goto_7

    :cond_8
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    :goto_7
    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    const/16 v2, 0x5e

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    div-int v8, v1, v8

    const/16 v9, 0x4c

    invoke-static {v7, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    shr-int v2, v9, v2

    invoke-static {v7, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v8, v2, v9}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xe

    const/16 v9, 0x30

    invoke-static {v7, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    sub-int/2addr v2, v9

    invoke-static {v7, v6}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v8, v2, v9}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_6

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    rsub-int/lit8 v0, v0, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x6d

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v8

    add-int/2addr v8, v1

    shr-int/lit8 v1, v8, 0x6

    rsub-int v1, v1, 0x20d2

    int-to-char v1, v1

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "\uc474\ua5f2\uc7f1\ud449\uc45a\u8568\u86be\ub605\u46c7\u06a8\u03f9\u30b7\uc1de\u83eb"

    invoke-static {v7}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xa

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/16 v0, 0x18

    :goto_2
    if-eq v0, v1, :cond_5

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v5, p0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0x12

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x73

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x3203

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v7, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    const-string/jumbo v4, "\u1976\u7c5e\u99c4\u2b8c\u1930\u5c8f\ud8cd\u49f0\u9bd3\udf4a\u5dc4\ucf28\u1c99\u5a4e\udf43\u4c79\u9142\ud48e\u5007\uc1bd\u1215\u5786\ud5c1\u46bc\u94c6\ud24f\u5690\uc434\u09d6\u4d19\uc84d\u5968\u8a5e\ucf8e\u4d01\udea4\u0f15\u4a8b\uced4\u53e8\u81df\uc541\u438a\ud166\u02d6"

    invoke-static {v4, v3}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-object v5
.end method

.method private static AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    sget-object v0, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper:J

    invoke-static {v1, v2, p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->AFKeystoreWrapper(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    :goto_0
    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    sub-int/2addr v1, p1

    sput v1, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:I

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    sget v2, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    aget-char v2, p0, v2

    sget v3, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:I

    int-to-long v4, v4

    sget-wide v6, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper:J

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, p0, v1

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static AFInAppEventType(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 10

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x1b

    if-eqz p0, :cond_0

    const/16 v2, 0x2d

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eq v2, v0, :cond_7

    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 p1, p1, 0x2

    move p1, v3

    move v1, p1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x7

    add-int/2addr p1, v1

    invoke-virtual {v0, v1, p1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 p0, p0, 0x2

    const-wide/16 p0, 0x0

    move-wide v4, p0

    move v1, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v6, 0x3b

    const/4 v7, 0x1

    if-ge v1, v2, :cond_3

    move v2, v6

    goto :goto_4

    :cond_3
    move v2, v7

    :goto_4
    if-eq v2, v6, :cond_6

    :goto_5
    const-wide/16 v1, 0x64

    cmp-long v6, v4, v1

    if-lez v6, :cond_4

    rem-long/2addr v4, v1

    goto :goto_5

    :cond_4
    long-to-int v1, v4

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    cmp-long v1, v4, v8

    if-gez v1, :cond_5

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    sub-int/2addr v7, v1

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    cmp-long p0, v3, p0

    rsub-int/lit8 p0, p0, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-char p1, p1

    invoke-static {v7, p0, p1}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string p0, ""

    invoke-static {p0, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    const-string/jumbo p1, "\u4bc2\u3dff\u820d\uf30c\u4ba0\u1d2e\uc30f\u9179\uc963\u9eea\u461d\u17e9\u4e7b\u1bab\uc4d8\u94af\uc3e3\u956d\u4b94\u196f\u40f6\u1629\uce59\u9e79\uc636\u93ea\u4d19\u1cec\u5b26\u0cf6\ud3dc\u81fa\ud8b0\u8e3f\u569c\u066d"

    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    const-string/jumbo v2, "\u7662\u41d3\uff0d\u2d41\u764c"

    invoke-static {v2, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eq v1, v3, :cond_3

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/lit8 v4, v4, 0x5d

    invoke-static {v0, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    rsub-int v5, v5, 0x6c76

    int-to-char v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length p0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p0, -0x1

    aget-object p0, v1, v5

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    shr-int/lit8 p0, p0, 0x16

    invoke-static {v2, p0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v6, p0, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 p0, p0, 0x2

    move p0, v3

    :goto_1
    if-ge p0, v5, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    if-eqz v6, :cond_2

    aget-object p0, v1, v0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    aget-object v6, v1, p0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    invoke-static {v2, v6}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x23

    if-nez v0, :cond_4

    const/16 v0, 0x2c

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-ne v0, v1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p2, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 p2, p2, 0x6f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-eqz p2, :cond_1

    const/16 p2, 0x5f

    :try_start_0
    div-int/2addr p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-object p0
.end method

.method private static valueOf(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventParameterName:[C

    sget v4, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    add-int/2addr v4, p1

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    int-to-long v5, v5

    sget-wide v7, Lcom/appsflyer/internal/AFa1ySDK;->valueOf:J

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

.method private static valueOf(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static valueOf(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    rsub-int/lit8 v3, v3, 0x23

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const v7, 0xe88b

    const/4 v8, 0x0

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    add-int/2addr v9, v7

    int-to-char v7, v9

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v3, v3, v7

    add-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x22

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    cmp-long v5, v9, v5

    add-int/lit8 v5, v5, -0x1

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(IIC)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    const-string/jumbo v4, "\u6034\uefde\u90c1\uc7a1\u6005"

    invoke-static {v4, v3}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v3, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string/jumbo p0, "\u96a0\uadd3\u2619\ucbcc\u96d9\u8d1a\u6700\ua9a5\u144d\u0eee\ue274\u2f31\u9344\u8b87\u60a6\uac14\u1ea8\u054e\uefd4\u21ef\u9dd3\u8639"

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v5, v5, v7

    invoke-static {p0, v5}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, p0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v3, p0, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventParameterName(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    const-string/jumbo p1, "\u4bc2\u3dff\u820d\uf30c\u4ba0\u1d2e\uc30f\u9179\uc963\u9eea\u461d\u17e9\u4e7b\u1bab\uc4d8\u94af\uc3e3\u956d\u4b94\u196f\u40f6\u1629\uce59\u9e79\uc636\u93ea\u4d19\u1cec\u5b26\u0cf6\ud3dc\u81fa\ud8b0\u8e3f\u569c\u066d"

    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1tSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->values:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p0

    :cond_1
    const/16 v0, 0x54

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0
.end method
