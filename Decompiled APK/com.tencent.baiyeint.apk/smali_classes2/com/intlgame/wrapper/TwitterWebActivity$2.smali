.class Lcom/intlgame/wrapper/TwitterWebActivity$2;
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

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$2;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$2;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$400(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$2;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$400(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
