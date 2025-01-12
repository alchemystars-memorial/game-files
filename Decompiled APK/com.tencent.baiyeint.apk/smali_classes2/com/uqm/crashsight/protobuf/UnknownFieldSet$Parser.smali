.class public final Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;
.super Lcom/uqm/crashsight/protobuf/AbstractParser;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractParser<",
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractParser;-><init>()V

    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final synthetic parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method
