.class Lcom/gamesafe/ano/h;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/gamesafe/ano/h;->a:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/gamesafe/ano/h;->b:Z

    iput-object p6, p0, Lcom/gamesafe/ano/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/gamesafe/ano/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/l;->a(Landroid/content/Context;)V

    new-instance p1, Lcom/gamesafe/ano/e;

    invoke-direct {p1}, Lcom/gamesafe/ano/e;-><init>()V

    iget-object v0, p0, Lcom/gamesafe/ano/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesafe/ano/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/gamesafe/ano/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/gamesafe/ano/h;->b:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/gamesafe/ano/s;->a()Lcom/gamesafe/ano/s;

    move-result-object p1

    iget-object v0, p0, Lcom/gamesafe/ano/h;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/gamesafe/ano/s;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gamesafe/ano/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
