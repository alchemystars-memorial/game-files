.class final Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;
.super Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field public final b:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/MapEntry;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/MapEntry;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/MapEntry;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;-><init>(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata$1;

    invoke-direct {p1, p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata$1;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method
