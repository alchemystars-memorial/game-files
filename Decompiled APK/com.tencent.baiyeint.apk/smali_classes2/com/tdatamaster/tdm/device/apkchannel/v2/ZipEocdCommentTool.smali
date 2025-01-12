.class public final Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;
.super Ljava/lang/Object;
.source "ZipEocdCommentTool.java"


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final EOCD_SIG:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->EOCD_SIG:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    sget-object v2, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->EOCD_SIG:Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;

    invoke-virtual {v2}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipLong;->getBytes()[B

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

    new-instance v1, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    invoke-direct {v1, v0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getValue()I

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

.method public static readComment(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR:[ZipEocdCommentTool]Your file length is zero!"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static updateComment(Ljava/lang/String;[B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    array-length p0, p1

    int-to-long v6, p0

    add-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;-><init>(I)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipShort;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Your file length is zero !!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return v0
.end method
