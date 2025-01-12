.class abstract Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;
.super Lcom/uqm/crashsight/protobuf/ByteString;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lcom/uqm/crashsight/protobuf/ByteString;II)Z
.end method

.method protected final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method
