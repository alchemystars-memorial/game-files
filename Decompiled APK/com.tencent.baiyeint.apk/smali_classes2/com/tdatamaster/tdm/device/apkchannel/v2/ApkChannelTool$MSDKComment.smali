.class Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSDKComment"
.end annotation


# static fields
.field private static final CHANNEL_HEAD:I = 0x96fa

.field private static final protoHead:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;


# instance fields
.field otherData:[B

.field p:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->protoHead:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "WARNING:[YYBComment]decode|data=null|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->protoHead:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    invoke-direct {v4, v3}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ERROR:[YYBComment]decode|data.length - headLength <= 2|1|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    invoke-direct {v4, v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v4}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getValue()I

    move-result v1

    array-length v4, p1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    if-ge v4, v1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ERROR:[YYBComment]decode|data.length - headLength <= 2|2|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-direct {v6, v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    array-length p1, p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    if-lez p1, :cond_3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->otherData:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-void

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR:[YYBComment]decode|unknow protocol|exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[YYBComment] unknow protocl ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method encode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->protoHead:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>(I)V

    invoke-virtual {v2}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->otherData:[B

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YYBComment [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
