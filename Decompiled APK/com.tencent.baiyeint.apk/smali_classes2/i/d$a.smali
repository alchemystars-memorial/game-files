.class public final Li/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Li/a;

.field public final b:Z

.field public final c:Li/d;


# direct methods
.method public constructor <init>(Li/d;Li/a;Z)V
    .locals 0

    iput-object p1, p0, Li/d$a;->c:Li/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/d$a;->a:Li/a;

    iput-boolean p3, p0, Li/d$a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Li/d$a;->c:Li/d;

    iget-object v3, v3, Li/d;->a:Li/l;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Li/d$a;->c:Li/d;

    iget-object v1, v1, Li/d;->b:Li/k;

    if-eqz v1, :cond_1

    iget-object v1, v1, Li/k;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Li/d$a;->c:Li/d;

    iget-boolean v2, p0, Li/d$a;->b:Z

    invoke-virtual {v1, v2}, Li/d;->a(Z)Li/m;

    move-result-object v1

    iget-object v2, p0, Li/d$a;->c:Li/d;

    iget-object v2, v2, Li/d;->a:Li/l;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Li/l;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Li/m;->f:Z

    :cond_2
    iget-object v2, p0, Li/d$a;->c:Li/d;

    iget-object v2, v2, Li/d;->a:Li/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Li/d$a;->c:Li/d;

    iget-object v2, v2, Li/d;->b:Li/k;

    if-eqz v2, :cond_4

    iget-object v2, v2, Li/k;->e:Li/j;

    if-eqz v2, :cond_4

    iget-object v3, p0, Li/d$a;->a:Li/a;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v2, Li/j;->a:Li/j$a;

    new-instance v4, Li/i;

    invoke-direct {v4, v3, v1}, Li/i;-><init>(Li/a;Li/m;)V

    invoke-virtual {v2, v4}, Li/j$a;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Li/d$a;->c:Li/d;

    iget-object v0, v0, Li/d;->b:Li/k;

    if-eqz v0, :cond_5

    iget-object v0, v0, Li/k;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Li/d$a;->c:Li/d;

    iget-object v0, v0, Li/d;->b:Li/k;

    if-eqz v0, :cond_6

    iget-object v0, v0, Li/k;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_6
    throw v1
.end method
