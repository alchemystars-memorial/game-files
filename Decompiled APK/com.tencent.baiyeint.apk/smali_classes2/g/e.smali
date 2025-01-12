.class public final Lg/e;
.super Lg/f;


# instance fields
.field public b:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    invoke-direct {p0}, Lg/f;-><init>()V

    iput-object p1, p0, Lg/e;->b:Lg/o;

    return-void
.end method

.method public static b()Li/m;
    .locals 2

    const-string v0, "FrontGetKey"

    const-string v1, "Front get key fail!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e27

    const-string v1, "Internal parameter error!"

    invoke-static {v0, v1}, Lg/j;->a(ILjava/lang/String;)Li/m;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/m;->e:Z

    return-object v0
.end method


# virtual methods
.method public final a(Li/l;Li/m;)Li/m;
    .locals 2

    const-string v0, "FrontGetKey"

    if-nez p1, :cond_0

    const-string p1, "Null request, drop front get key!"

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lg/i;

    if-nez v1, :cond_1

    const-string p1, "Not centauri request, drop front get key!"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    check-cast p1, Lg/i;

    iget-boolean v1, p1, Lg/i;->r:Z

    if-nez v1, :cond_2

    const-string p1, "Request set no need to front get key!"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2
    iget-object p1, p1, Lg/i;->p:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    const-string p1, "Current request has no encode parameter, drop front get key!"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_4
    iget-object p1, p0, Lg/e;->b:Lg/o;

    if-nez p1, :cond_5

    const-string p1, "No network manager, drop front get key!"

    :goto_1
    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/e;->b()Li/m;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "No get key request, drop front get key!"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
