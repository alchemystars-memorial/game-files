.class public final Lg/p;
.super Lg/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILi/l;Li/m;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1, p2, p3}, Li/l;->n(IILi/l;)V

    return-void
.end method

.method public final b(Li/l;Li/m;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Li/l;)V
    .locals 0

    invoke-virtual {p1}, Li/l;->o()V

    return-void
.end method
