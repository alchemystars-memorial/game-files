.class public Lg/h;
.super Ljava/lang/Object;

# interfaces
.implements Li/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lg/s;

.field public f:Lg/i;


# direct methods
.method public constructor <init>(Lg/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/h;->a:I

    const-string v0, ""

    iput-object v0, p0, Lg/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lg/h;->c:Ljava/lang/String;

    iput-object p1, p0, Lg/h;->e:Lg/s;

    return-void
.end method


# virtual methods
.method public final a(Li/m;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Li/m;->b:Ljava/lang/String;

    iput-object v0, p0, Lg/h;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Li/m;->g:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lg/j;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Lg/j;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lg/j;->b:Ljava/lang/String;

    iput-object v1, p0, Lg/h;->b:Ljava/lang/String;

    iget v0, v0, Lg/j;->a:I

    iput v0, p0, Lg/h;->a:I

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Li/m;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/h;->c()V

    iget-object p1, p0, Lg/h;->e:Lg/s;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lg/s;->onStop(Lg/h;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Li/m;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lg/h;->d(Li/m;)V

    iget-object p1, p0, Lg/h;->e:Lg/s;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lg/s;->onSuccess(Lg/h;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lg/h;->b()V

    iget-object p1, p0, Lg/h;->e:Lg/s;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lg/s;->onFailure(Lg/h;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public d(Li/m;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
