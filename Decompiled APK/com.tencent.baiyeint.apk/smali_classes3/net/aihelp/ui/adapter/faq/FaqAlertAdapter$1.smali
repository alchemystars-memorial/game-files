.class Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;
.super Ljava/lang/Object;
.source "FaqAlertAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;->this$0:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->access$000(Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
