.class Lnet/aihelp/ui/widget/AIHelpSearchView$1;
.super Ljava/lang/Object;
.source "AIHelpSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpSearchView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->access$000(Lnet/aihelp/ui/widget/AIHelpSearchView;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->access$100(Lnet/aihelp/ui/widget/AIHelpSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnet/aihelp/ui/widget/AIHelpSearchView;->access$002(Lnet/aihelp/ui/widget/AIHelpSearchView;Z)Z

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->access$200(Lnet/aihelp/ui/widget/AIHelpSearchView;)Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSearchView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->access$200(Lnet/aihelp/ui/widget/AIHelpSearchView;)Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;->onFocusChanged()V

    :cond_0
    return-void
.end method
