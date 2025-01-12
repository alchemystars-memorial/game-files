.class Lcom/gamesafe/ano/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/gamesafe/ano/t;


# direct methods
.method constructor <init>(Lcom/gamesafe/ano/t;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/u;->a:Lcom/gamesafe/ano/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/gamesafe/ano/u;->a:Lcom/gamesafe/ano/t;

    invoke-static {p1}, Lcom/gamesafe/ano/t;->a(Lcom/gamesafe/ano/t;)Lcom/gamesafe/ano/t$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gamesafe/ano/u;->a:Lcom/gamesafe/ano/t;

    invoke-static {p1}, Lcom/gamesafe/ano/t;->a(Lcom/gamesafe/ano/t;)Lcom/gamesafe/ano/t$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/gamesafe/ano/t$a;->a(I)V

    :cond_0
    return-void
.end method
