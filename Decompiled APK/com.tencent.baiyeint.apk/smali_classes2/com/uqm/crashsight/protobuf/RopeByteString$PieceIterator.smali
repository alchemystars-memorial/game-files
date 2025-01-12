.class final Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/uqm/crashsight/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/RopeByteString;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/RopeByteString;->h()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/RopeByteString;->a(Lcom/uqm/crashsight/protobuf/RopeByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a:Ljava/util/ArrayDeque;

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/ByteString;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;
    .locals 1

    :goto_0
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/RopeByteString;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/RopeByteString;->a(Lcom/uqm/crashsight/protobuf/RopeByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    return-object p1
.end method

.method private b()Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/RopeByteString;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->b(Lcom/uqm/crashsight/protobuf/RopeByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b()Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b()Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->b:Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
