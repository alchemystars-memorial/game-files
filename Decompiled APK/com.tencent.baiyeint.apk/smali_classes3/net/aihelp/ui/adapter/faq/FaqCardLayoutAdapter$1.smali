.class Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;
.super Ljava/lang/Object;
.source "FaqCardLayoutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

.field final synthetic val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getDisplayType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;->onIntentToQuestionContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter$1;->val$faq:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;->onIntentToSubSectionOrQuestionList(Lnet/aihelp/data/model/faq/FaqListEntity;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
