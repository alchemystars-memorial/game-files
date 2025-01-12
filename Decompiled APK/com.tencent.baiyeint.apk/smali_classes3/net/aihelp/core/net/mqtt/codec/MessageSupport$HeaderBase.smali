.class public Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
.super Ljava/lang/Object;
.source "MessageSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/codec/MessageSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBase"
.end annotation


# instance fields
.field protected header:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected commandType(I)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 1

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    shl-int/lit8 p1, p1, 0x4

    and-int/lit16 p1, p1, 0xf0

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    return-object p0
.end method

.method protected dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    if-eqz p1, :cond_0

    iget-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    goto :goto_0

    :cond_0
    iget-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit16 p1, p1, 0xf7

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    :goto_0
    return-object p0
.end method

.method protected dup()Z
    .locals 1

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected header()B
    .locals 1

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    return v0
.end method

.method protected header(B)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    return-object p0
.end method

.method protected messageType()B
    .locals 1

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method protected qos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    iget-byte v1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit8 v1, v1, 0x6

    ushr-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 1

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit16 v0, v0, 0xf9

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    return-object p0
.end method

.method protected retain(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    if-eqz p1, :cond_0

    iget-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    goto :goto_0

    :cond_0
    iget-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    and-int/lit16 p1, p1, 0xfe

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    :goto_0
    return-object p0
.end method

.method protected retain()Z
    .locals 2

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
