.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

.field public static final ENCODENAME_FIELD_NUMBER:I = 0x2

.field public static final IREQUESTID_FIELD_NUMBER:I = 0x3

.field public static final IVERSION_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_FIELD_NUMBER:I = 0x7

.field public static final SFUNCNAME_FIELD_NUMBER:I = 0x5

.field public static final SSERVANTNAME_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile encodeName_:Ljava/lang/Object;

.field private iRequestId_:I

.field private iVersion_:I

.field private memoizedIsInitialized:B

.field private request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

.field private response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

.field private volatile sFuncName_:Ljava/lang/Object;

.field private volatile sServantName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    if-eqz v3, :cond_a

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    const/16 v4, 0x12

    if-eq v3, v4, :cond_8

    const/16 v4, 0x18

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v5

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v5

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iRequestId_:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iVersion_:I
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

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$8500()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iVersion_:I

    return p1
.end method

.method static synthetic access$8800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iRequestId_:I

    return p1
.end method

.method static synthetic access$9000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$9500()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$8100()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIVersion()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIRequestId()I

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIRequestId()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasRequest()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasRequest()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasResponse()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasResponse()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final getEncodeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEncodeNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getIRequestId()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iRequestId_:I

    return v0
.end method

.method public final getIVersion()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iVersion_:I

    return v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getRequestOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    return-object v0
.end method

.method public final getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getResponseOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final getSFuncName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSFuncNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSServantName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSServantNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iVersion_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iRequestId_:I

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    if-nez v3, :cond_6

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-nez v1, :cond_8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasResponse()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIVersion()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIRequestId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$8200()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iVersion_:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->encodeName_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->iRequestId_:I

    if-eqz v0, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sServantName_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-nez v1, :cond_7

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->sFuncName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_8
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
