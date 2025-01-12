.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;
.source "AsciiBufferCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec<",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;-><init>([B)V

    return-object v0
.end method

.method protected bridge synthetic createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AsciiBufferCodec;->createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    move-result-object p1

    return-object p1
.end method
