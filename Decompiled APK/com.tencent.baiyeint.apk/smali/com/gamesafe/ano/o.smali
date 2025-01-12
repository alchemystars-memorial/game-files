.class Lcom/gamesafe/ano/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gamesafe/ano/t$a;


# instance fields
.field final synthetic a:Lcom/gamesafe/ano/n;


# direct methods
.method constructor <init>(Lcom/gamesafe/ano/n;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/o;->a:Lcom/gamesafe/ano/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/gamesafe/ano/o;->a:Lcom/gamesafe/ano/n;

    invoke-static {v0}, Lcom/gamesafe/ano/n;->a(Lcom/gamesafe/ano/n;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesafe/ano/o;->a:Lcom/gamesafe/ano/n;

    invoke-static {v1}, Lcom/gamesafe/ano/n;->a(Lcom/gamesafe/ano/n;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gamesafe/ano/o;->a:Lcom/gamesafe/ano/n;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/gamesafe/ano/n;->a(Lcom/gamesafe/ano/n;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hnb_wjs_ydnhdnn:ntn:"

    invoke-static {v2}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|hnb_wjs_dy="

    invoke-static {v3}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|woi_dy="

    invoke-static {v2}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void
.end method
