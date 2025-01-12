.class public Lnet/aihelp/core/net/mqtt/util/BufferPool;
.super Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;
.source "BufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;-><init>()V

    iput p1, p0, Lnet/aihelp/core/net/mqtt/util/BufferPool;->bufferSize:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->create()[B

    move-result-object v0

    return-object v0
.end method

.method protected create()[B
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/util/BufferPool;->bufferSize:I

    new-array v0, v0, [B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/util/BufferPool;->bufferSize:I

    return v0
.end method
