.class public Lcom/intlgame/core/battery/BatteryStatusReceiver;
.super Ljava/lang/Object;
.source "BatteryStatusReceiver.java"


# static fields
.field private static mBatteryLevel:I = 0x0

.field private static mBatteryState:I = 0x0

.field private static sIsRegister:Z = false

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intlgame/core/battery/BatteryStatusReceiver$1;

    invoke-direct {v0}, Lcom/intlgame/core/battery/BatteryStatusReceiver$1;-><init>()V

    sput-object v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$100(I)V
    .locals 0

    invoke-static {p0}, Lcom/intlgame/core/battery/BatteryStatusReceiver;->setBatteryListenerStatus(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryState:I

    return v0
.end method

.method public static getBatteryListenerLevel()I
    .locals 1

    sget v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryLevel:I

    return v0
.end method

.method public static getBatteryListenerStatus()I
    .locals 1

    sget v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryState:I

    return v0
.end method

.method private static setBatteryListenerStatus(I)V
    .locals 0

    sput p0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->mBatteryState:I

    return-void
.end method

.method public static startBatteryListener(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "startBatteryListener context is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sIsRegister:Z

    if-eqz v0, :cond_1

    const-string p0, "startBatteryListener BroadcastReceiver registered"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryListener startBatteryListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static stopBatteryListener(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "unregisterReceiver context is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sIsRegister:Z

    if-nez v0, :cond_1

    const-string p0, "BroadcastReceiver unregistered"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/intlgame/core/battery/BatteryStatusReceiver;->sIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryListener unregisterReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
