.class Lcom/intlgame/dmm/DmmTaskManager$1;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/DmmTaskManager;->getOlgId(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getErrorFromResult(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)Lcom/intlgame/tools/apkchannel/v2/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;",
            ")",
            "Lcom/intlgame/tools/apkchannel/v2/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DMM getOlgId error"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorKind()Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v1, Lcom/intlgame/dmm/DmmTaskManager$2;->$SwitchMap$com$dmm$android$sdk$olgid$DmmOlgIdResult$ErrorKind:[I

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    const-string v0, "Network error"

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x270f

    :goto_1
    new-instance v1, Lcom/intlgame/tools/apkchannel/v2/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/intlgame/tools/apkchannel/v2/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private getThirdErrorFromResult(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)Lcom/intlgame/tools/apkchannel/v2/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;",
            ")",
            "Lcom/intlgame/tools/apkchannel/v2/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorKind()Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/intlgame/dmm/DmmTaskManager$2;->$SwitchMap$com$dmm$android$sdk$olgid$DmmOlgIdResult$ErrorKind:[I

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DMM getOlgId error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "call Config interface failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getCallbackStatusCode()I

    move-result v1

    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getCallbackResponseBody()Ljava/lang/Object;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Callback Http Status Code: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", and Callback Response Body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Check user error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Http Status Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/intlgame/tools/apkchannel/v2/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/intlgame/tools/apkchannel/v2/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/sdk/olgid/DmmOlgId;)V
    .locals 3

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const-string v1, ""

    const-string v2, "user canceled"

    invoke-interface {p1, v0, v1, v0, v2}, Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;->onFailed(ILjava/lang/String;ILjava/lang/String;)V

    const-string p1, "getOlgId canceled"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 4

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/intlgame/dmm/DmmTaskManager$1;->getThirdErrorFromResult(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)Lcom/intlgame/tools/apkchannel/v2/Pair;

    move-result-object p1

    iget-object p2, p1, Lcom/intlgame/tools/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Lcom/intlgame/tools/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    move v3, p2

    move-object p2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p3}, Lcom/intlgame/dmm/DmmTaskManager$1;->getErrorFromResult(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)Lcom/intlgame/tools/apkchannel/v2/Pair;

    move-result-object p3

    iget-object v0, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    iget-object v1, p3, Lcom/intlgame/tools/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p3, Lcom/intlgame/tools/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;->onFailed(ILjava/lang/String;ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOlgId failed, errorCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/intlgame/tools/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", thirdMsg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 4

    invoke-interface {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getOlgId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getCallbackResponseBody()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/intlgame/dmm/ServerValidateInfo;

    invoke-direct {v2, v1}, Lcom/intlgame/dmm/ServerValidateInfo;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/intlgame/dmm/ServerValidateInfo;->getRetCode()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/intlgame/dmm/ServerValidateInfo;->getValidateCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    invoke-virtual {v2}, Lcom/intlgame/dmm/ServerValidateInfo;->getValidateCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get validate code failed, response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/dmm/DmmTaskManager$1;->val$listener:Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0, v2, v0}, Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;->onFailed(ILjava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOlgId successfully, user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", INTL server response: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getCallbackResponseBody()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method
