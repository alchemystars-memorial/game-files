.class public Lcom/intlgame/dmm/ServerValidateInfo;
.super Ljava/lang/Object;
.source "ServerValidateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field private expireIn:J

.field private msg:Ljava/lang/String;

.field private retCode:I

.field private validateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    const-string v1, ""

    iput-object v1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    const-string p1, "expires_in"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    const-string p1, "msg"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    const-string p1, "ret"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iput v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    const-string p1, "server error"

    iput-object p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getExpireIn()J
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    return v0
.end method

.method public getValidateCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireIn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    return-void
.end method

.method public setValidateCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerValidateInfo{validateCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/dmm/ServerValidateInfo;->validateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/intlgame/dmm/ServerValidateInfo;->expireIn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", retCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/dmm/ServerValidateInfo;->retCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/dmm/ServerValidateInfo;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
