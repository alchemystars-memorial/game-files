.class Lcom/uqm/crashsight/protobuf/ByteString$1;
.super Lcom/uqm/crashsight/protobuf/ByteString$AbstractByteIterator;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/ByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private synthetic c:Lcom/uqm/crashsight/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString$AbstractByteIterator;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->a:I

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->b:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->a:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$1;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
