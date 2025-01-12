.class Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;
.source "DataByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;-><init>()V

    return-void
.end method


# virtual methods
.method protected readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method protected writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
