.class Lcom/gamesafe/ano/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/gamesafe/ano/t;


# direct methods
.method constructor <init>(Lcom/gamesafe/ano/t;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/v;->a:Lcom/gamesafe/ano/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/gamesafe/ano/v;->a:Lcom/gamesafe/ano/t;

    iget-object p1, p1, Lcom/gamesafe/ano/t;->a:Landroid/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method
