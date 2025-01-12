.class public Lg/i;
.super Li/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i$a;
    }
.end annotation


# instance fields
.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lg/b;

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Li/l;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/i;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/i;->r:Z

    iput-boolean v0, p0, Lg/i;->s:Z

    iput-boolean v0, p0, Lg/i;->t:Z

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Li/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Li/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/i$a;

    iget-object v2, v1, Lg/i$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, v1, Lg/i$a;->b:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Lg/i$a;

    invoke-direct {v0}, Lg/i$a;-><init>()V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lg/i$a;

    invoke-direct {v0}, Lg/i$a;-><init>()V

    :goto_1
    iput-object p1, v0, Lg/i$a;->a:Ljava/lang/String;

    iput-object p2, v0, Lg/i$a;->b:Ljava/lang/String;

    iget-object p1, p0, Lg/i;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    const-string v0, "offer_id"

    invoke-virtual {p0, v0}, Li/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    const-string v0, "openid"

    invoke-virtual {p0, v0}, Li/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
