.class Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/io/ByteArrayOutputStream;

.field private synthetic c:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->b:Ljava/io/ByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->c:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->c:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->a:I

    return-void
.end method
