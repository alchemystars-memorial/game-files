.class Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;
.super Lcom/intlgame/dmm/task/DmmSerialTask;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/DmmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginToINTLServerTask"
.end annotation


# instance fields
.field private loginParams:Lcom/intlgame/api/INTLBaseParams;

.field private mValidateCode:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmSerialTask;-><init>()V

    iput-object p2, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->mValidateCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->userid:Ljava/lang/String;

    iput-object p3, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getAccessTokenExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->getDmmOlgIdAuthAgent()Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "sandbox"

    :cond_1
    move-object v6, v0

    iget-object v4, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    iget-object v5, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->userid:Ljava/lang/String;

    iget-object v9, p0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->mValidateCode:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/intlgame/auth/DmmAuth;->handleAuthSuccess(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;->onTaskEnd()V

    return-void
.end method
