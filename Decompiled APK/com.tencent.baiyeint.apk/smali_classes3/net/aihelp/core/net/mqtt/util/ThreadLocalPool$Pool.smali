.class Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;
.super Ljava/lang/Object;
.source "ThreadLocalPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pool"
.end annotation


# instance fields
.field hitCounter:J

.field missCounter:J

.field final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->this$0:Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->maxPoolSizePerThread()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->objects:Ljava/util/ArrayList;

    return-void
.end method
