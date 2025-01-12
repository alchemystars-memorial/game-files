.class Lcom/h3d/base/MainActivityBase$1;
.super Ljava/lang/Object;
.source "MainActivityBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h3d/base/MainActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/h3d/base/MainActivityBase;


# direct methods
.method constructor <init>(Lcom/h3d/base/MainActivityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/h3d/base/MainActivityBase$1;->this$0:Lcom/h3d/base/MainActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/h3d/base/MainActivityBase$1;->this$0:Lcom/h3d/base/MainActivityBase;

    invoke-static {v0}, Lcom/h3d/base/MainActivityBase;->access$000(Lcom/h3d/base/MainActivityBase;)Lcom/h3d/base/ConfigurationChangedHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/h3d/base/MainActivityBase$1;->this$0:Lcom/h3d/base/MainActivityBase;

    invoke-static {v0}, Lcom/h3d/base/MainActivityBase;->access$000(Lcom/h3d/base/MainActivityBase;)Lcom/h3d/base/ConfigurationChangedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/h3d/base/MainActivityBase$1;->this$0:Lcom/h3d/base/MainActivityBase;

    invoke-virtual {v1}, Lcom/h3d/base/MainActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/h3d/base/MainActivityBase$1;->this$0:Lcom/h3d/base/MainActivityBase;

    invoke-virtual {v2}, Lcom/h3d/base/MainActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/h3d/base/ConfigurationChangedHandler;->ResolutionChanged(II)V

    :cond_0
    return-void
.end method
