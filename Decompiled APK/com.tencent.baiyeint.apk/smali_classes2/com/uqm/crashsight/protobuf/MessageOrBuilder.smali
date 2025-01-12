.class public interface abstract Lcom/uqm/crashsight/protobuf/MessageOrBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
.end method

.method public abstract getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
.end method

.method public abstract getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
.end method

.method public abstract hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
.end method
