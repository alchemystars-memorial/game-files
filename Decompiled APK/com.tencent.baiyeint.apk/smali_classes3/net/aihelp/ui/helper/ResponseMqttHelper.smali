.class public Lnet/aihelp/ui/helper/ResponseMqttHelper;
.super Ljava/lang/Object;
.source "ResponseMqttHelper.java"


# static fields
.field private static evaluationEntity:Lnet/aihelp/data/model/cs/EvaluationEntity;

.field private static hasUnreadMsg:Z

.field private static isAppRatable:Z

.field private static isFormSubmitted:Z

.field private static isTicketActive:Z

.field private static isTicketFinished:Z

.field private static isTicketRejected:Z

.field private static isTicketWaitForAskingResolveStatus:Z

.field private static isTicketWaitForRating:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvaluationEntity()Lnet/aihelp/data/model/cs/EvaluationEntity;
    .locals 1

    sget-object v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->evaluationEntity:Lnet/aihelp/data/model/cs/EvaluationEntity;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/data/model/cs/EvaluationEntity;

    invoke-direct {v0}, Lnet/aihelp/data/model/cs/EvaluationEntity;-><init>()V

    sput-object v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->evaluationEntity:Lnet/aihelp/data/model/cs/EvaluationEntity;

    :cond_0
    sget-object v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->evaluationEntity:Lnet/aihelp/data/model/cs/EvaluationEntity;

    return-object v0
.end method

.method public static isAppRatable()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isAppRatable:Z

    return v0
.end method

.method public static isFormSubmitted()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted:Z

    return v0
.end method

.method public static isHasUnreadMsg()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->hasUnreadMsg:Z

    return v0
.end method

.method public static isTicketActive()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive:Z

    return v0
.end method

.method public static isTicketFinished()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketFinished:Z

    return v0
.end method

.method public static isTicketRejected()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketRejected:Z

    return v0
.end method

.method public static isTicketWaitForAskingResolveStatus()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForAskingResolveStatus:Z

    return v0
.end method

.method public static isTicketWaitForRating()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForRating:Z

    return v0
.end method

.method public static resetTicketStatusFlags()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setFormSubmitStatus(Z)V

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setHasUnreadMsg(Z)V

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketActive(Z)V

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForAskingResolveStatus(Z)V

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForRating(Z)V

    return-void
.end method

.method public static setAppRatable(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isAppRatable:Z

    return-void
.end method

.method public static setFormSubmitStatus(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted:Z

    return-void
.end method

.method public static setHasUnreadMsg(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->hasUnreadMsg:Z

    return-void
.end method

.method public static setTicketActive(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive:Z

    return-void
.end method

.method public static setTicketFinished(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketFinished:Z

    return-void
.end method

.method public static setTicketRejected(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketRejected:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketActive(Z)V

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForRating(Z)V

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketFinished(Z)V

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForAskingResolveStatus(Z)V

    :cond_0
    return-void
.end method

.method public static setTicketWaitForAskingResolveStatus(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForAskingResolveStatus:Z

    return-void
.end method

.method public static setTicketWaitForRating(Z)V
    .locals 0

    sput-boolean p0, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForRating:Z

    return-void
.end method

.method public static tryUploadLog(Z)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_FETCH_MESSAGE:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lnet/aihelp/common/Const;->TOGGLE_UPLOAD_LOG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lnet/aihelp/common/Const;->LOG_UPLOAD_PATH:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/io/File;

    sget-object v0, Lnet/aihelp/common/Const;->LOG_UPLOAD_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".bytes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->UPLOAD_FILE_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/ui/helper/ResponseMqttHelper$1;

    invoke-direct {v2}, Lnet/aihelp/ui/helper/ResponseMqttHelper$1;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    :cond_1
    return-void
.end method

.method public static updateElvaSupportActionStatus(Z)V
    .locals 3

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isHasUnreadMsg()Z

    move-result v0

    const/16 v1, 0x3e9

    if-nez v0, :cond_3

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p0

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ee

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p0

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ef

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
