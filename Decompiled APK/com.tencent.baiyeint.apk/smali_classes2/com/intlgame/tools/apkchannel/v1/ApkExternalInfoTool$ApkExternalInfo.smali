.class Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkExternalInfo"
.end annotation


# instance fields
.field otherData:[B

.field p:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->access$000()Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->access$000()Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    move-result-object v3

    new-instance v4, Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    invoke-direct {v4, v2}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    new-array v2, v3, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    invoke-direct {v4, v2}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v4}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;->getValue()I

    move-result v2

    array-length v4, p1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    if-ge v4, v2, :cond_2

    return-void

    :cond_2
    new-array v4, v2, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    array-length p1, p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    if-lez p1, :cond_3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->otherData:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow protocl ["

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkExternalInfo [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
