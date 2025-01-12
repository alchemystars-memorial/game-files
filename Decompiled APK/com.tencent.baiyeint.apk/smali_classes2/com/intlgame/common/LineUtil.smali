.class public Lcom/intlgame/common/LineUtil;
.super Ljava/lang/Object;
.source "LineUtil.java"


# static fields
.field public static final INTL_LINE_CHANNEL:Ljava/lang/String; = "Line"

.field public static final INTL_LINE_CHANNELID:I = 0xe

.field public static final INTL_LINE_PLUGIN:Ljava/lang/String; = "INTLLine"

.field public static final LINE_CHANNEL_APPID:Ljava/lang/String; = "LINE_CHANNEL_ID"

.field public static final LINE_CHECK_SDK_VERSION_ENABLE:Ljava/lang/String; = "LINE_CHECK_SDK_VERSION_ENABLE"

.field public static final LINE_PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field public static lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDKVersionIsEnable()Z
    .locals 2

    const-string v0, "LINE_CHECK_SDK_VERSION_ENABLE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLineChannelID()Ljava/lang/String;
    .locals 2

    const-string v0, "LINE_CHANNEL_ID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string p0, "5.6.2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ] catch exception : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/intlgame/common/LineUtil;->getLineSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ] sdkVersion : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[ "

    if-eqz v0, :cond_2

    sget-object v0, Lcom/intlgame/common/LineUtil;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/intlgame/common/LineUtil;->getLineChannelID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LINE_CHANNEL_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is empty !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] LINE_CHANNEL_ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/intlgame/common/LineUtil;->getLineChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/intlgame/common/LineUtil;->getLineChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->build()Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object v0

    sput-object v0, Lcom/intlgame/common/LineUtil;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/intlgame/common/LineUtil;->getLineSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLLine"

    const-string v2, "1.17.00.301"

    const-string v3, "Line"

    invoke-static {v1, v2, v3, v0, p0}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ]must execute INTLSDK.initialize() first !!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
