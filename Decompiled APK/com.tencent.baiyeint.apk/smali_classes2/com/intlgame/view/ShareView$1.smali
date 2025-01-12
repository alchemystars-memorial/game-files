.class Lcom/intlgame/view/ShareView$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ShareView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ShareView;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ShareView;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ShareView$1;->this$0:Lcom/intlgame/view/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/view/ShareView$1;->this$0:Lcom/intlgame/view/ShareView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/intlgame/view/ShareView;->dismiss(I)V

    return-void
.end method
