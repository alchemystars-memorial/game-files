.class Lnet/aihelp/core/util/viewer/ViewerLayout$3;
.super Ljava/lang/Object;
.source "ViewerLayout.java"

# interfaces
.implements Lnet/aihelp/core/ui/image/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/viewer/ViewerLayout;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/ViewerLayout;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$3;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$3;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$200(Lnet/aihelp/core/util/viewer/ViewerLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$3;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$300(Lnet/aihelp/core/util/viewer/ViewerLayout;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$3;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$200(Lnet/aihelp/core/util/viewer/ViewerLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$3;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$300(Lnet/aihelp/core/util/viewer/ViewerLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
