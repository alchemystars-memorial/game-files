.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;
.super Ljava/lang/Object;
.source "NioDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyState"
.end annotation


# instance fields
.field final attachment:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

.field readyOps:I


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->attachment:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

    return-void
.end method


# virtual methods
.method public key()Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->attachment:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ready: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
