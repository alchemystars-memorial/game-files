.class public final Lnet/aihelp/ui/chunk/Div;
.super Ljava/lang/Object;
.source "Div.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public start:I

.field public stop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/ui/chunk/Div;->start:I

    iput p2, p0, Lnet/aihelp/ui/chunk/Div;->stop:I

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput v0, p0, Lnet/aihelp/ui/chunk/Div;->start:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/chunk/Div;->stop:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/ui/chunk/Div;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget v0, p0, Lnet/aihelp/ui/chunk/Div;->stop:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    return-void
.end method
