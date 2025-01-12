.class Lcom/uqm/crashsight/protobuf/MapEntry$Metadata$1;
.super Lcom/uqm/crashsight/protobuf/AbstractParser;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractParser<",
        "Lcom/uqm/crashsight/protobuf/MapEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata$1;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata$1;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V

    return-object v0
.end method
