.class public final Li/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/d$a;
    }
.end annotation


# instance fields
.field public final a:Li/l;

.field public final b:Li/k;


# direct methods
.method public constructor <init>(Li/k;Li/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/d;->a:Li/l;

    iput-object p1, p0, Li/d;->b:Li/k;

    return-void
.end method


# virtual methods
.method public final a(Z)Li/m;
    .locals 3

    new-instance v0, Li/m;

    invoke-direct {v0}, Li/m;-><init>()V

    iget-object v1, p0, Li/d;->a:Li/l;

    iput-object v1, v0, Li/m;->d:Li/l;

    iget-object v1, p0, Li/d;->b:Li/k;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v1, Li/k;->b:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Li/k;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Li/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v1, Li/k;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/h;

    iget-object v2, p0, Li/d;->a:Li/l;

    invoke-interface {v1, v2, v0}, Li/h;->a(Li/l;Li/m;)Li/m;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Li/m;->e:Z

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, v0, Li/m;->e:Z

    :cond_3
    return-object v0
.end method
