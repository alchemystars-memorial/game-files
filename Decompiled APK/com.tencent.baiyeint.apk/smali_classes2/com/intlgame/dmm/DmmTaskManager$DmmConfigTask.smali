.class Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;
.super Lcom/intlgame/dmm/task/DmmSerialTask;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/DmmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DmmConfigTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmSerialTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    const-string v0, "dmm configure started"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    new-instance v1, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;-><init>(Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->configure(Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V

    return-void
.end method
