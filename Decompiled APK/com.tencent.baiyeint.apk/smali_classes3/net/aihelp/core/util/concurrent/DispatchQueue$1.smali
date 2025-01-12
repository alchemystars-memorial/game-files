.class Lnet/aihelp/core/util/concurrent/DispatchQueue$1;
.super Ljava/lang/Object;
.source "DispatchQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/concurrent/DispatchQueue;->dispatchAfter(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/concurrent/DispatchQueue;

.field final synthetic val$interval:J

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/concurrent/DispatchQueue;JLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->this$0:Lnet/aihelp/core/util/concurrent/DispatchQueue;

    iput-wide p2, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->val$interval:J

    iput-object p4, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->val$interval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->this$0:Lnet/aihelp/core/util/concurrent/DispatchQueue;

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/concurrent/DispatchQueue;->dispatchAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
