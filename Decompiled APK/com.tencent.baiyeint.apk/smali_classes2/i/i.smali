.class public final Li/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Li/a;

.field public final b:Li/m;


# direct methods
.method public constructor <init>(Li/a;Li/m;)V
    .locals 0

    iput-object p1, p0, Li/i;->a:Li/a;

    iput-object p2, p0, Li/i;->b:Li/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li/i;->a:Li/a;

    iget-object v1, p0, Li/i;->b:Li/m;

    invoke-interface {v0, v1}, Li/a;->a(Li/m;)V

    return-void
.end method
