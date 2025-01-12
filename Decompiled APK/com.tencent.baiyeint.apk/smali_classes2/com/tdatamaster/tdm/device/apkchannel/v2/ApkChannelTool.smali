.class public final Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;
    }
.end annotation


# static fields
.field public static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static final TAG:Ljava/lang/String; = "ApkChannelTool"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAdjustTrackerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ApkChannelTool"

    const-string v1, "read apk adjust traker token"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "adjustTrackerToken"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ApkChannelTool"

    const-string v1, "read apk Channel"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ApkChannelTool"

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "is v1 signature"

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is v2 signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", is v3 signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->readMsdkComment(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :goto_1
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_3

    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    const-string p0, "you are use v2 signature but use v1 channel modle"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "this apk will can\'t install in 7.0 system"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    const-string p0, "you are use v3 signature but use v1 channel modle"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "this apk will can\'t install in 9.0 system"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    new-instance p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    invoke-direct {p0, v2}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;-><init>(Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$1;)V

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v2
.end method
