.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected b:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method final d()Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object v0
.end method
