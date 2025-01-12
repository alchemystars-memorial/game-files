.class public final Lg/d;
.super Lg/f;


# instance fields
.field public b:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    invoke-direct {p0}, Lg/f;-><init>()V

    iput-object p1, p0, Lg/d;->b:Lg/o;

    return-void
.end method


# virtual methods
.method public final a(Li/l;Li/m;)Li/m;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_0
    instance-of v0, p1, Lg/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object p2

    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lg/i;

    iget-boolean v0, v0, Lg/i;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_2
    iget-object v0, p0, Lg/d;->b:Lg/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-object p2

    :cond_3
    :try_start_3
    invoke-virtual {v0, p1}, Lg/o;->c(Li/l;)V

    iget-object p1, p0, Lg/d;->b:Lg/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
