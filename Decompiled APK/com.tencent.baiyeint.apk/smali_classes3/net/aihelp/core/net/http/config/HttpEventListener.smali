.class public Lnet/aihelp/core/net/http/config/HttpEventListener;
.super Lokhttp3/EventListener;
.source "HttpEventListener.java"


# static fields
.field public static final FACTORY:Lokhttp3/EventListener$Factory;


# instance fields
.field private final callId:J

.field private final callStartNanos:J

.field private sbLog:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/http/config/HttpEventListener$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/http/config/HttpEventListener$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/http/config/HttpEventListener;->FACTORY:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public constructor <init>(JLokhttp3/HttpUrl;J)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-wide p1, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->callId:J

    iput-wide p4, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->callStartNanos:J

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p4, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    return-void
.end method

.method private recordEventLog(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->callStartNanos:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v0, v0

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const-string v0, "%.3f-%s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "callEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "callFailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/http/config/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "okhttp"

    invoke-static {v0, p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callFailed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    const-string p1, "callStart"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    const-string p1, "connectEnd"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    const-string p1, "connectFailed"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    const-string p1, "connectStart"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "dnsEnd"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "okhttp"

    invoke-static {p2, p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    const-string p1, "dnsStart"

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/http/config/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method
