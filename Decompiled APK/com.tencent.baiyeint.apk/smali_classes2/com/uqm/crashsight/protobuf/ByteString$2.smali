.class final Lcom/uqm/crashsight/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/uqm/crashsight/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    check-cast p2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->a()B

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->a(B)I

    move-result v2

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->a()B

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
