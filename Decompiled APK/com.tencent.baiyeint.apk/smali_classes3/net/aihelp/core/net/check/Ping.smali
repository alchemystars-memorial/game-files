.class public final Lnet/aihelp/core/net/check/Ping;
.super Ljava/lang/Object;
.source "Ping.java"

# interfaces
.implements Lnet/aihelp/core/net/check/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/check/Ping$Result;,
        Lnet/aihelp/core/net/check/Ping$Callback;
    }
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final complete:Lnet/aihelp/core/net/check/Ping$Callback;

.field private final count:I

.field private interval:I

.field private final size:I

.field private volatile stopped:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IIILnet/aihelp/core/net/check/Ping$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/check/Ping;->address:Ljava/lang/String;

    iput p2, p0, Lnet/aihelp/core/net/check/Ping;->count:I

    iput p3, p0, Lnet/aihelp/core/net/check/Ping;->size:I

    iput p4, p0, Lnet/aihelp/core/net/check/Ping;->interval:I

    iput-object p5, p0, Lnet/aihelp/core/net/check/Ping;->complete:Lnet/aihelp/core/net/check/Ping$Callback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/core/net/check/Ping;->stopped:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/aihelp/core/net/check/Ping$Callback;)V
    .locals 6

    const/16 v3, 0x38

    const/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/net/check/Ping;-><init>(Ljava/lang/String;IIILnet/aihelp/core/net/check/Ping$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/check/Ping;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/check/Ping;->run()V

    return-void
.end method

.method private static getIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pingCmd()Lnet/aihelp/core/net/check/Ping$Result;
    .locals 11

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/net/check/Ping;->address:Ljava/lang/String;

    invoke-static {v2}, Lnet/aihelp/core/net/check/Ping;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    instance-of v4, v4, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    const-string v4, "ping6 -n -i %f -s %d -c %d %s"

    goto :goto_2

    :cond_1
    const-string v4, "ping -n -i %f -s %d -c %d %s"

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lnet/aihelp/core/net/check/Ping;->interval:I

    int-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    iget v1, p0, Lnet/aihelp/core/net/check/Ping;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    iget v3, p0, Lnet/aihelp/core/net/check/Ping;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v2, v6, v1

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "\n"

    if-eqz v0, :cond_2

    :try_start_5
    const-string v0, "Ping host address is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/aihelp/core/net/check/Ping;->address:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    new-instance v0, Lnet/aihelp/core/net/check/Ping$Result;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lnet/aihelp/core/net/check/Ping;->size:I

    iget v4, p0, Lnet/aihelp/core/net/check/Ping;->interval:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/aihelp/core/net/check/Ping$Result;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_c
    throw v0

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v2, Lnet/aihelp/core/net/check/Ping$Result;

    invoke-direct {v2, v0, v0, v1, v1}, Lnet/aihelp/core/net/check/Ping$Result;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v2
.end method

.method private run()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/net/check/Ping;->pingCmd()Lnet/aihelp/core/net/check/Ping$Result;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/check/Ping;->complete:Lnet/aihelp/core/net/check/Ping$Callback;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/check/Ping$Callback;->complete(Lnet/aihelp/core/net/check/Ping$Result;)V

    return-void
.end method

.method public static start(Ljava/lang/String;ILnet/aihelp/core/net/check/Ping$Callback;)Lnet/aihelp/core/net/check/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/check/Ping;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/core/net/check/Ping;-><init>(Ljava/lang/String;ILnet/aihelp/core/net/check/Ping$Callback;)V

    new-instance p0, Lnet/aihelp/core/net/check/Ping$1;

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/check/Ping$1;-><init>(Lnet/aihelp/core/net/check/Ping;)V

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static start(Ljava/lang/String;Lnet/aihelp/core/net/check/Ping$Callback;)Lnet/aihelp/core/net/check/Task;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lnet/aihelp/core/net/check/Ping;->start(Ljava/lang/String;ILnet/aihelp/core/net/check/Ping$Callback;)Lnet/aihelp/core/net/check/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/check/Ping;->stopped:Z

    return-void
.end method
