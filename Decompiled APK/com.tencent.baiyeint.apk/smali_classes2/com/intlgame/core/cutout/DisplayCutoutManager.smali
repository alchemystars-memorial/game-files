.class public Lcom/intlgame/core/cutout/DisplayCutoutManager;
.super Ljava/lang/Object;
.source "DisplayCutoutManager.java"

# interfaces
.implements Lcom/intlgame/core/cutout/IDisplayCutout;


# static fields
.field private static volatile mIsInitial:Z = false


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/core/cutout/DisplayCutoutManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/core/cutout/DisplayCutoutManager;Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private createNotchScreen()Lcom/intlgame/core/cutout/IDisplayCutout;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "DisplayCutoutManager"

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/intlgame/core/cutout/impl/AndroidPDisplayCutout;

    invoke-direct {v0}, Lcom/intlgame/core/cutout/impl/AndroidPDisplayCutout;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto/16 :goto_3

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7

    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    const-string v0, "unknown"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get manufacturer error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/intlgame/core/cutout/impl/HuaweiDisplayCutout;

    invoke-direct {v2}, Lcom/intlgame/core/cutout/impl/HuaweiDisplayCutout;-><init>()V

    iput-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    :cond_2
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;

    invoke-direct {v2}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;-><init>()V

    iput-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    :cond_3
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/intlgame/core/cutout/impl/MiDisplayCutout;

    invoke-direct {v2}, Lcom/intlgame/core/cutout/impl/MiDisplayCutout;-><init>()V

    iput-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    :cond_4
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/intlgame/core/cutout/impl/OPPODisplayCutout;

    invoke-direct {v2}, Lcom/intlgame/core/cutout/impl/OPPODisplayCutout;-><init>()V

    iput-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    :cond_5
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;

    invoke-direct {v2}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;-><init>()V

    iput-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotchScreen in Android O, manufacturer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;

    invoke-direct {v0}, Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotchScreen notchScreen type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    invoke-interface {v2}, Lcom/intlgame/core/cutout/IDisplayCutout;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    return-object v0
.end method

.method private updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 7

    new-instance v0, Lcom/intlgame/api/cutout/INTLCutoutResult;

    const/16 v1, 0x25b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/cutout/INTLCutoutResult;-><init>(II)V

    const-class v1, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-static {v1}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v3

    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->isHideCutout(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v5

    iput-boolean v3, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->hasCutout_:Z

    iput-boolean v4, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->isCutoutHidden_:Z

    const/4 v4, 0x1

    aget v6, v5, v4

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenHeight_:I

    aget v6, v5, v2

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenWidth_:I

    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->statusBarHeight_:I

    if-eqz v3, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    aget p2, v5, v2

    aget v1, v5, v4

    invoke-direct {p1, v2, v2, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    :goto_0
    const/16 p1, 0x5dd

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "getCutoutSize error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCutoutSize error, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getDisplayDensityDpi(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getDisplayDensityDpi(Landroid/content/Context;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "getDisplayDensityDpi error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayDensityDpi error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getDisplayRealSize(Landroid/content/Context;)[I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "getDisplayRealSize error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayRealSize error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "getSafeDisplay error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSafeDisplay error, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "getStatusBarHeight error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatusBarHeight error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/intlgame/core/cutout/IDisplayCutout;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "hasCutoutSupport error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCutoutSupport error, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->createNotchScreen()Lcom/intlgame/core/cutout/IDisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    iput-object p1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    const-string p1, "DisplayCutoutManager"

    const-string v0, "DisplayCutoutManager initialized!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutManager initialize error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isHideCutout(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->isHideCutout(Landroid/content/Context;)Z

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "isHideCutout error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHideCutout error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isInitial()Z
    .locals 1

    sget-boolean v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    return v0
.end method

.method public loadDisplayCutoutData()V
    .locals 5

    invoke-virtual {p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->isInitial()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cutout has not been initialized properly"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", View Attached ? ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependent Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependent windowInsets = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "No windowInsets is REQUIRED"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;

    invoke-direct {v1, p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;-><init>(Lcom/intlgame/core/cutout/DisplayCutoutManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDisplayCutoutData error,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
