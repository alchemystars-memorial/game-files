.class Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;
.super Lcom/intlgame/dmm/task/DmmSerialTask;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/DmmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DmmPublishSessionTask"
.end annotation


# instance fields
.field loginParams:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method public constructor <init>(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmSerialTask;-><init>()V

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    const-string v0, "dmm publish session begin."

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    new-instance v1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;-><init>(Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->publishInternalSession(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V

    return-void
.end method
