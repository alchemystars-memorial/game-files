.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object v0
.end method
