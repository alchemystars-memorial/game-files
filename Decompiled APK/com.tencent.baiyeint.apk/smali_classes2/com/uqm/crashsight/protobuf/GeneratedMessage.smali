.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage;
.source "CrashSight"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$FieldAccessorTable;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$GeneratedExtension;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$CachedDescriptorRetriever;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/uqm/crashsight/protobuf/Message$Builder;
.end method
