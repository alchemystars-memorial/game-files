.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

.field public static final EVENTS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSIONID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_2

    new-instance v5, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

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
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_7
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$22600()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$22802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$22902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$23000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$23100()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$23200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final getEvents(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getEventsBytes(I)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->d(I)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getEventsCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getEventsList()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedSize:I

    return v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
