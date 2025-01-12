.class Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;
.super Ljava/lang/Object;
.source "FaqListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/faq/FaqListAdapter;

.field final synthetic val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqListAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getDisplayType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;->onIntentToQuestionContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;->onIntentToSubSectionOrQuestionList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
