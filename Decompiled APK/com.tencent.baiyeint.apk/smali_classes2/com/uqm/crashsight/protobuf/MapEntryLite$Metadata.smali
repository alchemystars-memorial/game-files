.class Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MapEntryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    return-void
.end method
