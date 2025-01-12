.class public abstract Lcom/enq/transceiver/transceivertool/command/DetectNet/NetModel;
.super Ljava/lang/Object;
.source "NetModel.java"


# static fields
.field public static final DOWNLOAD_ERROR:I = 0x9

.field public static final DROP_DATA_ERROR:I = 0xc

.field public static final HOST_UNREACHABLE_ERROR:I = 0xb

.field public static final HTTP_CODE_ERROR:I = 0x7

.field public static final ICMP_ECHO_FAIL_ERROR:I = 0xa

.field public static final MALFORMED_URL_ERROR:I = 0x7

.field public static final NETWORK_FAULT_ERROR:I = 0x4

.field public static final NETWORK_IO_ERROR:I = 0x6

.field public static final NETWORK_SOCKET_ERROR:I = 0x5

.field protected static final PING:Ljava/lang/String; = "ping"

.field protected static final PING_BREAK_LINE:Ljava/lang/String; = "\n"

.field protected static final PING_COMMA:Ljava/lang/String; = ","

.field protected static final PING_EQUAL:Ljava/lang/String; = "="

.field protected static final PING_ERRORS:Ljava/lang/String; = "errors"

.field protected static final PING_EXCEED:Ljava/lang/String; = "exceed"

.field protected static final PING_FROM:Ljava/lang/String; = "from"

.field protected static final PING_ICMP_SEQ:Ljava/lang/String; = "icmp_seq"

.field protected static final PING_LOSS:Ljava/lang/String; = "packet loss"

.field protected static final PING_PAREN_THESE_CLOSE:Ljava/lang/String; = ")"

.field protected static final PING_PAREN_THESE_OPEN:Ljava/lang/String; = "("

.field protected static final PING_RATE:Ljava/lang/String; = "%"

.field protected static final PING_RECEIVED:Ljava/lang/String; = "received"

.field protected static final PING_RTT:Ljava/lang/String; = "rtt"

.field protected static final PING_SLASH:Ljava/lang/String; = "/"

.field protected static final PING_SPACE:Ljava/lang/String; = " "

.field protected static final PING_STATISTICS:Ljava/lang/String; = "statistics"

.field protected static final PING_TIMEOUT:Ljava/lang/String; = "timeout"

.field protected static final PING_TIME_EQUAL:Ljava/lang/String; = "time="

.field protected static final PING_TRANSMIT:Ljava/lang/String; = "packets transmitted"

.field protected static final PING_TTL:Ljava/lang/String; = "ttl"

.field protected static final PING_UNREACHABLE:Ljava/lang/String; = "100%"

.field public static final SERVICE_NOT_AVAILABLE:I = 0x8

.field public static final SUCCEED:I = 0x0

.field public static final TCP_LINK_ERROR:I = 0x2

.field public static final UNKNOWN_ERROR:I = 0x1

.field public static final UNKNOWN_HOST_ERROR:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
