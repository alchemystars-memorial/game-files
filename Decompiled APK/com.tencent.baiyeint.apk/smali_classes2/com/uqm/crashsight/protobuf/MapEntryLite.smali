.class public Lcom/uqm/crashsight/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
    }
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
.field private final a:Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static a(Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/MapEntryLite$1;->a:[I

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    invoke-static {p0, p2, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/MessageLite;->toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedInputStream;",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v0}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    iget-object v4, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v1}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)I

    move-result p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a:Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p2

    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->j(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method final a()Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a:Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    return-object v0
.end method
