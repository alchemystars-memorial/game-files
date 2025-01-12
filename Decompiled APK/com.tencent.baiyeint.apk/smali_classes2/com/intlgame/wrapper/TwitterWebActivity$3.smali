.class Lcom/intlgame/wrapper/TwitterWebActivity$3;
.super Ljava/lang/Object;
.source "TwitterWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/wrapper/TwitterWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/wrapper/TwitterWebActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$3;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "msg"

    const-string v1, "user click close"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity$3;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$3;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->finish()V

    return-void
.end method
