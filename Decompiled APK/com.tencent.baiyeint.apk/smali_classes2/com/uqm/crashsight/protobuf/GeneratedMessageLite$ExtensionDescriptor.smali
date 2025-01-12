.class final Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final b:Z

.field private c:I

.field private d:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

.field private e:Z


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:I

    iget p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:I

    return v0
.end method

.method public final g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->e:Z

    return v0
.end method
