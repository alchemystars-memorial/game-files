.class public Lnet/aihelp/core/net/check/Ping$Result;
.super Ljava/lang/Object;
.source "Ping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/check/Ping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public avg:F

.field public count:I

.field public dropped:I

.field public final interval:I

.field public final ip:Ljava/lang/String;

.field private final lastLinePrefix:Ljava/lang/String;

.field public max:F

.field public min:F

.field private final packetWords:Ljava/lang/String;

.field private final receivedWords:Ljava/lang/String;

.field public final result:Ljava/lang/String;

.field public sent:I

.field public final size:I

.field public stddev:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rtt min/avg/max/mdev = "

    iput-object v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->lastLinePrefix:Ljava/lang/String;

    const-string v0, " packets transmitted"

    iput-object v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->packetWords:Ljava/lang/String;

    const-string v0, " received"

    iput-object v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->receivedWords:Ljava/lang/String;

    iput-object p1, p0, Lnet/aihelp/core/net/check/Ping$Result;->result:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/net/check/Ping$Result;->ip:Ljava/lang/String;

    iput p3, p0, Lnet/aihelp/core/net/check/Ping$Result;->size:I

    iput p4, p0, Lnet/aihelp/core/net/check/Ping$Result;->interval:I

    invoke-direct {p0}, Lnet/aihelp/core/net/check/Ping$Result;->parseResult()V

    return-void
.end method

.method private parsePacketLine(Ljava/lang/String;)V
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/aihelp/core/net/check/Ping$Result;->count:I

    :cond_1
    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/check/Ping$Result;->sent:I

    :cond_2
    iget p1, p0, Lnet/aihelp/core/net/check/Ping$Result;->count:I

    iget v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->sent:I

    sub-int/2addr p1, v0

    iput p1, p0, Lnet/aihelp/core/net/check/Ping$Result;->dropped:I

    return-void
.end method

.method private parseResult()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->result:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, " packets transmitted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lnet/aihelp/core/net/check/Ping$Result;->parsePacketLine(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "rtt min/avg/max/mdev = "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lnet/aihelp/core/net/check/Ping$Result;->parseRttLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private parseRttLine(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lnet/aihelp/core/net/check/Ping$Result;->trimNoneDigital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->min:F

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lnet/aihelp/core/net/check/Ping$Result;->trimNoneDigital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->avg:F

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Lnet/aihelp/core/net/check/Ping$Result;->trimNoneDigital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/check/Ping$Result;->max:F

    aget-object p1, p1, v1

    invoke-static {p1}, Lnet/aihelp/core/net/check/Ping$Result;->trimNoneDigital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/check/Ping$Result;->stddev:F

    return-void
.end method

.method static trimNoneDigital(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    aget-char v5, p0, v3

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-le v5, v6, :cond_2

    :cond_1
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    :cond_2
    add-int/lit8 v6, v4, 0x1

    aput-char v5, v0, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, ""

    return-object p0
.end method
