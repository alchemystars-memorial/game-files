.class Lcom/intlgame/core/cutout/DisplayCutoutManager$1;
.super Ljava/lang/Object;
.source "DisplayCutoutManager.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/core/cutout/DisplayCutoutManager;->loadDisplayCutoutData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/core/cutout/DisplayCutoutManager;


# direct methods
.method constructor <init>(Lcom/intlgame/core/cutout/DisplayCutoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;->this$0:Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dependent windowInsets = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;->this$0:Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-static {p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->access$000(Lcom/intlgame/core/cutout/DisplayCutoutManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->access$100(Lcom/intlgame/core/cutout/DisplayCutoutManager;Landroid/app/Activity;Landroid/view/WindowInsets;)V

    return-object p2
.end method
