.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getRichTextMsg(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$urlOrRawText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$urlOrRawText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$urlOrRawText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/viewer/ImageViewer;->updateImageResource(Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->show()V

    return-void
.end method
