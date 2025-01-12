.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponsePkg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final CMD_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

.field public static final GATEWAYIP_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;",
            ">;"
        }
    .end annotation
.end field

.field public static final QIMEI_FIELD_NUMBER:I = 0x7

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field public static final SBUFFER_FIELD_NUMBER:I = 0x3

.field public static final SERVERTIME_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x6

.field public static final VALUEMAP_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private cmd_:I

.field private volatile gatewayIp_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile qimei_:Ljava/lang/Object;

.field private result_:J

.field private sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private serverTime_:J

.field private volatile status_:Ljava/lang/Object;

.field private valueMap_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedIsInitialized:B

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/16 v5, 0x10

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    const/16 v5, 0x28

    if-eq v4, v5, :cond_5

    const/16 v5, 0x32

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v3, v3, 0x1

    :cond_2
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->serverTime_:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v4

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->cmd_:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->result_:J
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;J)J
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;J)J
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->result_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->cmd_:I

    return p1
.end method

.method static synthetic access$902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCmd()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->cmd_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final getGatewayIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getQimei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getResult()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->result_:J

    return-wide v0
.end method

.method public final getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 9

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->result_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-static {v5, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v0

    add-int/2addr v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->cmd_:I

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    invoke-static {v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    if-nez v1, :cond_4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v6

    :goto_2
    if-nez v1, :cond_6

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v7, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->serverTime_:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    invoke-static {v1, v7, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatusBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v6

    :goto_3
    if-nez v1, :cond_9

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    :goto_4
    if-nez v5, :cond_b

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedSize:I

    return v0
.end method

.method public final getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->serverTime_:J

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatusBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getValueMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getValueMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->result_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->cmd_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v0, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->gatewayIp_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    iget-wide v6, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->serverTime_:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v6, v7}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatusBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    if-nez v0, :cond_8

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->status_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    if-nez v5, :cond_a

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->qimei_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
