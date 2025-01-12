.class Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$6;

.field final synthetic val$faqs:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment$6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$6;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->val$faqs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$6;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1300(Lnet/aihelp/ui/cs/ElvaBotFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->val$faqs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$6;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ElvaBotFragment$6;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$000(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$6$1;->val$faqs:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method
