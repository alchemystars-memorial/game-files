.class final Lcom/uqm/crashsight/protobuf/DiscardUnknownFieldsParser$1;
.super Lcom/uqm/crashsight/protobuf/AbstractParser;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DiscardUnknownFieldsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/Parser;


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->u()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DiscardUnknownFieldsParser$1;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->v()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->v()V

    throw p2
.end method


# virtual methods
.method public final synthetic parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DiscardUnknownFieldsParser$1;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method
