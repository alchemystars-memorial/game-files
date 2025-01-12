.class public final Lnet/aihelp/core/net/check/TraceRoute;
.super Ljava/lang/Object;
.source "TraceRoute.java"

# interfaces
.implements Lnet/aihelp/core/net/check/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/check/TraceRoute$Result;,
        Lnet/aihelp/core/net/check/TraceRoute$Callback;
    }
.end annotation


# static fields
.field private static final Error:Ljava/lang/String; = "network error"

.field private static final MATCH_PING_IP:Ljava/lang/String; = "(?<=from ).*(?=: icmp_seq=1 ttl=)"

.field private static final MATCH_PING_TIME:Ljava/lang/String; = "(?<=time=).*?ms"

.field private static final MATCH_TRACE_IP:Ljava/lang/String; = "(?<=From )(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

.field private static final MATCH_TRACE_IP_V6:Ljava/lang/String; = "(?<=From )\\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:)))(%.+)?\\s*"

.field private static final MaxHop:I = 0x15


# instance fields
.field private final address:Ljava/lang/String;

.field private final complete:Lnet/aihelp/core/net/check/TraceRoute$Callback;

.field private result:Lnet/aihelp/core/net/check/TraceRoute$Result;

.field private volatile stopped:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lnet/aihelp/core/net/check/TraceRoute$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->stopped:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    iput-object p1, p0, Lnet/aihelp/core/net/check/TraceRoute;->address:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/net/check/TraceRoute;->complete:Lnet/aihelp/core/net/check/TraceRoute$Callback;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/check/TraceRoute;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/check/TraceRoute;->run()V

    return-void
.end method

.method private executePingCmd(Ljava/lang/String;IZ)Ljava/lang/Process;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ping -n -c 1 -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ping6 -n -c 1 -t "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
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

.method static getIpFromTraceMatcher(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getPingtOutput(Ljava/lang/Process;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw p1
.end method

.method static ipMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1

    const-string v0, "(?<=from ).*(?=: icmp_seq=1 ttl=)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method private printEnd(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lnet/aihelp/core/net/check/TraceRoute;->timeMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\t\t"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/check/TraceRoute;->updateOut(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private printNormal(Ljava/util/regex/Matcher;JLjava/lang/StringBuilder;)V
    .locals 1

    invoke-static {p1}, Lnet/aihelp/core/net/check/TraceRoute;->getIpFromTraceMatcher(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t\t"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms\t"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/core/net/check/TraceRoute$Result;->access$100(Lnet/aihelp/core/net/check/TraceRoute$Result;Ljava/lang/String;)V

    return-void
.end method

.method private run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->address:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/core/net/check/TraceRoute;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    instance-of v3, v3, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v3, v1

    :goto_0
    new-instance v4, Lnet/aihelp/core/net/check/TraceRoute$Result;

    invoke-direct {v4, v0}, Lnet/aihelp/core/net/check/TraceRoute$Result;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/aihelp/core/net/check/TraceRoute;->address:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v1, "TraceRoute host address is %s. \n"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lnet/aihelp/core/net/check/TraceRoute$Result;->access$100(Lnet/aihelp/core/net/check/TraceRoute$Result;Ljava/lang/String;)V

    :goto_1
    const/16 v1, 0x15

    if-ge v2, v1, :cond_4

    iget-boolean v1, p0, Lnet/aihelp/core/net/check/TraceRoute;->stopped:Z

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_2
    invoke-direct {p0, v0, v2, v3}, Lnet/aihelp/core/net/check/TraceRoute;->executePingCmd(Ljava/lang/String;IZ)Ljava/lang/Process;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/check/TraceRoute;->getPingtOutput(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "network error"

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/check/TraceRoute;->updateOut(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-static {v1, v3}, Lnet/aihelp/core/net/check/TraceRoute;->traceMatcher(Ljava/lang/String;Z)Ljava/util/regex/Matcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x2

    div-long/2addr v6, v4

    invoke-direct {p0, v8, v6, v7, v9}, Lnet/aihelp/core/net/check/TraceRoute;->printNormal(Ljava/util/regex/Matcher;JLjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lnet/aihelp/core/net/check/TraceRoute;->ipMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4, v1, v9}, Lnet/aihelp/core/net/check/TraceRoute;->printEnd(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_3
    const-string v1, "\t\t * \t"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/check/TraceRoute;->updateOut(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping cmd error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/check/TraceRoute;->updateOut(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->complete:Lnet/aihelp/core/net/check/TraceRoute$Callback;

    iget-object v1, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/check/TraceRoute$Callback;->complete(Lnet/aihelp/core/net/check/TraceRoute$Result;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/check/TraceRoute;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/check/TraceRoute;->updateOut(Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/check/TraceRoute$Result;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/check/TraceRoute$Result;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    iget-object v1, p0, Lnet/aihelp/core/net/check/TraceRoute;->complete:Lnet/aihelp/core/net/check/TraceRoute$Callback;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/check/TraceRoute$Callback;->complete(Lnet/aihelp/core/net/check/TraceRoute$Result;)V

    return-void
.end method

.method public static start(Ljava/lang/String;Lnet/aihelp/core/net/check/TraceRoute$Callback;)Lnet/aihelp/core/net/check/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/check/TraceRoute;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/check/TraceRoute;-><init>(Ljava/lang/String;Lnet/aihelp/core/net/check/TraceRoute$Callback;)V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lnet/aihelp/core/net/check/TraceRoute$1;

    invoke-direct {p1, v0}, Lnet/aihelp/core/net/check/TraceRoute$1;-><init>(Lnet/aihelp/core/net/check/TraceRoute;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method static timeMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1

    const-string v0, "(?<=time=).*?ms"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method static traceMatcher(Ljava/lang/String;Z)Ljava/util/regex/Matcher;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "(?<=From )\\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:)))(%.+)?\\s*"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "(?<=From )(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method private updateOut(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->result:Lnet/aihelp/core/net/check/TraceRoute$Result;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lnet/aihelp/core/net/check/TraceRoute$Result;->access$100(Lnet/aihelp/core/net/check/TraceRoute$Result;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/check/TraceRoute;->stopped:Z

    return-void
.end method
