.class Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "AdminTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;->val$translatedContent:Ljava/lang/StringBuilder;

    const-string v1, "\n---------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;->val$textView:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;->val$translatedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;->val$textView:Landroid/widget/TextView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
