.class public Lcom/intlgame/core/mobile_signal/MobileSignal;
.super Ljava/lang/Object;
.source "MobileSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;
    }
.end annotation


# static fields
.field private static mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener; = null

.field private static mSignalLevel:I = -0x1


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

.method static synthetic access$000()Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;
    .locals 1

    sget-object v0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;)Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;
    .locals 0

    sput-object p0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;

    return-object p0
.end method

.method static synthetic access$100(I)V
    .locals 0

    invoke-static {p0}, Lcom/intlgame/core/mobile_signal/MobileSignal;->setSignalLevel(I)V

    return-void
.end method

.method public static endMobileSignalListener(Landroid/content/Context;)V
    .locals 2

    const-string v0, "endMobileSignalListener"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endMobileSignal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getSignalLevel()I
    .locals 1

    sget v0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mSignalLevel:I

    return v0
.end method

.method private static setSignalLevel(I)V
    .locals 0

    sput p0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mSignalLevel:I

    return-void
.end method

.method public static startMobileSignalListener(Landroid/content/Context;)V
    .locals 2

    const-string v0, "startMobileSignalListener"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/intlgame/core/mobile_signal/MobileSignal;->mMobileSignalListener:Lcom/intlgame/core/mobile_signal/MobileSignal$MobileSignalStateListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/intlgame/core/mobile_signal/MobileSignal$1;

    invoke-direct {v1, p0}, Lcom/intlgame/core/mobile_signal/MobileSignal$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMobileSignal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
