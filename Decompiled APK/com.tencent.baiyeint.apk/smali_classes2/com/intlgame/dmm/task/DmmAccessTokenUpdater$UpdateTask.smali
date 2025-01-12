.class Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;
.super Ljava/lang/Object;
.source "DmmAccessTokenUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "start Dmm access token update task."

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->access$200(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->getAccessTokenExpiredMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    new-instance v1, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask$1;-><init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->updateAccessToken(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-static {v0, p0, v1, v2}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->access$300(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
