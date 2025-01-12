.class public final Lc/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lc/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b;->a:Lc/a;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v3, v1, 0xe10

    if-gt v2, v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_3
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_4
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "print log error: <%s>%s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "centauriComm<Log>"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lc/b;
    .locals 15

    new-instance v0, Lc/b;

    invoke-direct {v0}, Lc/b;-><init>()V

    const-string v1, "centauriComm<Log>"

    const-string v2, "open log appender"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lc/a;->k:Lc/a;

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Lc/a;

    invoke-direct {v2}, Lc/a;-><init>()V

    sput-object v2, Lc/a;->k:Lc/a;

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ld/a;

    invoke-direct {v3}, Ld/a;-><init>()V

    :try_start_0
    new-instance v4, Lf/a;

    invoke-direct {v4}, Lf/a;-><init>()V

    iput-object v4, v3, Ld/a;->a:Lf/a;

    new-instance v4, Lf/b;

    iget-object v5, v3, Ld/a;->a:Lf/a;

    invoke-direct {v4, v5}, Lf/b;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Ld/a;->b:Lf/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Lc/a;->a:Ld/a;

    :cond_1
    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ld/b;

    invoke-direct {v3}, Ld/b;-><init>()V

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v7

    iget-object v7, v7, La/a;->a:Landroid/content/Context;

    if-eqz v7, :cond_2

    const-string v8, "EKSharedPref"

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Ld/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "EK"

    const-string/jumbo v9, "}VjZtoJF;dE+7iJs"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :try_start_1
    sget-object v7, Ld/b;->c:[B
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    aput-byte v4, v7, v6

    aput-byte v5, v7, v5

    :try_start_2
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ld/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v8, "AES/ECB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    iput-object v8, v3, Ld/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v8, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iput-object v3, v2, Lc/a;->b:Ld/b;

    :cond_3
    new-instance v3, Ld/c;

    invoke-direct {v3}, Ld/c;-><init>()V

    invoke-virtual {v3}, Ld/c;->a()V

    iput-object v3, v2, Lc/a;->c:Ld/c;

    sget-object v2, Lc/a;->k:Lc/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v7, Lb/a;->c:Ljava/lang/String;

    const-string v8, "rw"

    invoke-direct {v3, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    sget-object v10, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v11, 0x0

    const-wide/32 v13, 0x25800

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "open log mmap file error: <%s>%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    sget-object v2, Lc/a;->k:Lc/a;

    iget-object v3, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lc/a;->a()V

    iget-object v3, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const-wide/16 v4, 0xc

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v3, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const/16 v6, 0x8

    const v7, 0x30da8

    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v3, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iput-wide v4, v2, Lc/a;->h:J

    iget-object v2, v2, Lc/a;->d:Ljava/nio/MappedByteBuffer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :goto_4
    sget-object v2, Lc/a;->k:Lc/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/centauri/comm/CTILog;->getLogInfo()La/a;

    move-result-object v3

    iget-boolean v3, v3, La/a;->h:Z

    if-eqz v3, :cond_6

    :try_start_4
    const-string/jumbo v3, "start auto flush"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lc/a;->f:Landroid/os/Handler;

    iget-object v2, v2, Lc/a;->g:Lc/a$a;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    const-string/jumbo v3, "start auto flush error: "

    invoke-static {v3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    sget-object v2, Lc/a;->k:Lc/a;

    :goto_6
    iput-object v2, v0, Lc/b;->a:Lc/a;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, p1}, Lc/a;->d(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a;->e([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "append log error: <%s> %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
