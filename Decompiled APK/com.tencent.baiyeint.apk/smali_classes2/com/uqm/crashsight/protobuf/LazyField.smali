.class public Lcom/uqm/crashsight/protobuf/LazyField;
.super Lcom/uqm/crashsight/protobuf/LazyFieldLite;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/LazyField$LazyIterator;,
        Lcom/uqm/crashsight/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;-><init>(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyField;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyField;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyField;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyField;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyField;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyField;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyField;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyField;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyField;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
