.class Lcom/intlgame/wrapper/TwitterWebActivity$1;
.super Landroid/os/Handler;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/wrapper/TwitterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/wrapper/TwitterWebActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$1;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "msg"

    const-string v1, "switch app fail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity$1;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$1;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->finish()V

    return-void
.end method
