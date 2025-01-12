.class public final Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;
    }
.end annotation


# static fields
.field public static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field public static final CHANNELID:Ljava/lang/String; = "channelId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAdjustTrackerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "read apk adjust traker token"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool;->readINTLComment(Ljava/lang/String;)Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;->p:Ljava/util/Properties;

    const-string v0, "adjustTrackerToken"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "read apk Channel"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool;->readINTLComment(Ljava/lang/String;)Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;->p:Ljava/util/Properties;

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readINTLComment(Ljava/lang/String;)Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "is v2 signature"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->readINTLComment(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v2, "is v1 signature"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string p0, "you are use v2 signature but use v1 channel modle"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    const-string p0, "this apk will can\'t install in 7.0system"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;

    invoke-direct {p0, v1}, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;-><init>(Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$1;)V

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/intlgame/tools/apkchannel/v2/ApkChannelTool$INTLComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v1
.end method
