.class public abstract Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec;
.super Ljava/lang/Object;
.source "VariableCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public estimatedSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFixedSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isDeepCopySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEstimatedSizeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
