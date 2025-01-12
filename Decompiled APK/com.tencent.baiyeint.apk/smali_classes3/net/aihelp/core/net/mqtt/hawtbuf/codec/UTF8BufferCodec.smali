.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;
.source "UTF8BufferCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec<",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/UTF8BufferCodec;->createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    return-object p1
.end method

.method protected createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>([B)V

    return-object v0
.end method
