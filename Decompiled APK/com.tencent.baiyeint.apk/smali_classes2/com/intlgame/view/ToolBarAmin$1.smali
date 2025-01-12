.class Lcom/intlgame/view/ToolBarAmin$1;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarAmin;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarAmin;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarAmin;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin$1;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$1;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$000(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
