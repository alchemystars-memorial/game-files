.class public final Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field private static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CHANNELID:Ljava/lang/String; = "channelId"

.field protected static final EOCD_SIG:Lcom/intlgame/tools/apkchannel/v1/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static protoHead:Lcom/intlgame/tools/apkchannel/v1/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/intlgame/tools/apkchannel/v1/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/intlgame/tools/apkchannel/v1/ZipLong;-><init>(J)V

    sput-object v0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->EOCD_SIG:Lcom/intlgame/tools/apkchannel/v1/ZipLong;

    new-instance v0, Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;-><init>(I)V

    sput-object v0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->protoHead:Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/intlgame/tools/apkchannel/v1/ZipShort;
    .locals 1

    sget-object v0, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->protoHead:Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    return-object v0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v2, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;

    invoke-direct {v2, v0}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$1;)V

    invoke-virtual {v2, p0}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->decode([B)V

    iget-object p0, v2, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw p0
.end method

.method public static readAdjustTrackerToken(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "adjustTrackerToken"

    invoke-static {p0, v0}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "channelId"

    invoke-static {p0, v0}, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v2, Lcom/intlgame/tools/apkchannel/v1/ApkExternalInfoTool;->EOCD_SIG:Lcom/intlgame/tools/apkchannel/v1/ZipLong;

    invoke-virtual {v2}, Lcom/intlgame/tools/apkchannel/v1/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v3, v4, :cond_1

    aget-byte v4, v2, v7

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    aget-byte v4, v2, v5

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    aget-byte v4, v2, v6

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v6, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v1, Lcom/intlgame/tools/apkchannel/v1/ZipShort;

    invoke-direct {v1, v0}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/intlgame/tools/apkchannel/v1/ZipShort;->getValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
