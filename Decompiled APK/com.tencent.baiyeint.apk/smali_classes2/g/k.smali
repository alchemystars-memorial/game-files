.class public final Lg/k;
.super Lg/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/k$d;,
        Lg/k$e;,
        Lg/k$f;,
        Lg/k$g;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/k$e;

.field public c:Lg/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lg/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lg/k$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/a;-><init>()V

    new-instance v0, Lg/k$a;

    invoke-direct {v0}, Lg/k$a;-><init>()V

    iput-object v0, p0, Lg/k;->c:Lg/k$a;

    new-instance v0, Lg/k$b;

    invoke-direct {v0}, Lg/k$b;-><init>()V

    iput-object v0, p0, Lg/k;->d:Lg/k$b;

    new-instance v0, Lg/k$c;

    invoke-direct {v0}, Lg/k$c;-><init>()V

    iput-object v0, p0, Lg/k;->e:Lg/k$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lg/k;->b:Lg/k$e;

    return-void
.end method


# virtual methods
.method public final b(Li/l;Li/m;)V
    .locals 2

    iget-object p2, p0, Lg/k;->c:Lg/k$a;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lg/k;->c:Lg/k$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string p2, "https.protocols"

    const-string v0, "TLSv1"

    invoke-virtual {p1, p2, v0}, Li/l;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lg/k;->d:Lg/k$b;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/k;->d:Lg/k$b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iput-object v0, p1, Li/l;->n:Ljavax/net/ssl/HostnameVerifier;

    :cond_1
    iget-object p2, p0, Lg/k;->e:Lg/k$c;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lg/k;->e:Lg/k$c;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iput-object v0, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    :cond_2
    return-void
.end method

.method public final c(Li/l;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Li/l;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Li/l;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lg/i;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Li/l;->n:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_c

    const-string v0, "https.protocols"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "TLSv1"

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, p1, Li/l;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v2

    :goto_3
    if-nez v3, :cond_8

    invoke-virtual {p1, v0, v4}, Li/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/k;->c:Lg/k$a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_8
    :try_start_0
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p1}, Li/l;->l()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    new-instance v3, Lg/k$f;

    iget-object v5, p0, Lg/k;->a:Ljava/lang/String;

    invoke-direct {v3, v5}, Lg/k$f;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v1, Lg/k$g;

    iget-object v2, p0, Lg/k;->b:Lg/k$e;

    invoke-direct {v1, v2}, Lg/k$g;-><init>(Lg/k$e;)V

    iput-object v1, p1, Li/l;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lg/k;->d:Lg/k$b;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_a

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object v0, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_5

    :cond_a
    new-instance v1, Lg/l;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lg/l;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v1, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    :cond_b
    :goto_5
    iget-object p1, p0, Lg/k;->e:Lg/k$c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_6
    return-void
.end method
