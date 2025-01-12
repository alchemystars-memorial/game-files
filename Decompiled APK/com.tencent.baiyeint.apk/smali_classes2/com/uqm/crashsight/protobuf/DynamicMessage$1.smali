.class Lcom/uqm/crashsight/protobuf/DynamicMessage$1;
.super Lcom/uqm/crashsight/protobuf/AbstractParser;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/DynamicMessage;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractParser<",
        "Lcom/uqm/crashsight/protobuf/DynamicMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/DynamicMessage;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/DynamicMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$1;->a:Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractParser;-><init>()V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$1;->a:Lcom/uqm/crashsight/protobuf/DynamicMessage;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public synthetic parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$1;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1
.end method
