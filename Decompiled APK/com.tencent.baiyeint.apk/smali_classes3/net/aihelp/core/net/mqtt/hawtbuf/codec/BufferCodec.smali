.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;
.source "BufferCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec<",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/BufferCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-object v0
.end method
