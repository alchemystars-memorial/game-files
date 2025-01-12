.class final Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/PicassoExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PicassoFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lnet/aihelp/core/ui/image/BitmapHunter;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final hunter:Lnet/aihelp/core/ui/image/BitmapHunter;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->hunter:Lnet/aihelp/core/ui/image/BitmapHunter;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->compareTo(Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;)I
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->hunter:Lnet/aihelp/core/ui/image/BitmapHunter;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v0

    iget-object v1, p1, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->hunter:Lnet/aihelp/core/ui/image/BitmapHunter;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->hunter:Lnet/aihelp/core/ui/image/BitmapHunter;

    iget v0, v0, Lnet/aihelp/core/ui/image/BitmapHunter;->sequence:I

    iget-object p1, p1, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;->hunter:Lnet/aihelp/core/ui/image/BitmapHunter;

    iget p1, p1, Lnet/aihelp/core/ui/image/BitmapHunter;->sequence:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method
