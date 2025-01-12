.class Lcom/intlgame/wrapper/TwitterWebActivity$TwitterJavascript;
.super Ljava/lang/Object;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/wrapper/TwitterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterJavascript"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/wrapper/TwitterWebActivity;


# direct methods
.method private constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterJavascript;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterJavascript;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWrapper;->handleWebLoginResult(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterJavascript;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->finish()V

    return-void
.end method
