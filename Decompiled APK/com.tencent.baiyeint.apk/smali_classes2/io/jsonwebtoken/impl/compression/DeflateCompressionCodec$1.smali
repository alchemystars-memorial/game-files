.class final Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec$1;
.super Ljava/lang/Object;
.source "DeflateCompressionCodec.java"

# interfaces
.implements Lio/jsonwebtoken/impl/compression/AbstractCompressionCodec$StreamWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
