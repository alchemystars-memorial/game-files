.class public Lcom/intlgame/tools/apkchannel/v2/ApkSignatureV2ChannelTool;
.super Ljava/lang/Object;
.source "ApkSignatureV2ChannelTool.java"


# static fields
.field private static final INTL_COMMENT_BLOCK_ID:I = 0x71717874


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genApkSigningBlockWithNewPair(Ljava/nio/ByteBuffer;I[B)Lcom/intlgame/tools/apkchannel/v2/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I[B)",
            "Lcom/intlgame/tools/apkchannel/v2/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x18

    const/16 v3, 0x8

    move-object/from16 v4, p0

    invoke-static {v4, v3, v2}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v5, v1

    add-int/lit8 v5, v5, 0xc

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v3, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    cmp-long v9, v12, v14

    const-string v14, " size out of range: "

    const-string v15, "APK Signing Block entry #"

    if-ltz v9, :cond_2

    const-wide/32 v16, 0x7fffffff

    cmp-long v9, v12, v16

    if-gtz v9, :cond_2

    long-to-int v9, v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v3, v16, v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v9, v7, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-ne v7, v0, :cond_0

    array-length v8, v1

    add-int/lit8 v8, v8, 0x4

    sub-int/2addr v8, v9

    int-to-long v8, v8

    array-length v12, v1

    add-int/lit8 v12, v12, 0x4

    int-to-long v12, v12

    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v6, v3, v7, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, -0x4

    invoke-static {v2, v9}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-wide v8, v10

    :goto_1
    cmp-long v2, v8, v10

    if-nez v2, :cond_5

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {v6, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-long v8, v5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    invoke-virtual {v6, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v0, v0

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/intlgame/tools/apkchannel/v2/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/intlgame/tools/apkchannel/v2/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-object p3
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readINTLComment(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    invoke-static {p0, v0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static readPairValueWithId(Ljava/lang/String;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/intlgame/tools/apkchannel/v2/Pair;

    move-result-object p0

    iget-object v1, p0, Lcom/intlgame/tools/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/intlgame/tools/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/intlgame/tools/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1, v2, v3}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/intlgame/tools/apkchannel/v2/Pair;

    move-result-object p0

    iget-object p0, p0, Lcom/intlgame/tools/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p1}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlockWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v1

    :cond_0
    :try_start_1
    new-instance p0, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/intlgame/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
