.class final Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$1;
.super Lcom/uqm/crashsight/protobuf/AbstractParser;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractParser<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V

    return-object v0
.end method
