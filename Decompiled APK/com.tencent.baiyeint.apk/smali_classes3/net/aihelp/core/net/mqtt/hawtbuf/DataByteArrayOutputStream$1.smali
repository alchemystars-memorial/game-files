.class Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;
.source "DataByteArrayOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;-><init>()V

    return-void
.end method


# virtual methods
.method protected readByte()B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected writeByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    return-void
.end method
