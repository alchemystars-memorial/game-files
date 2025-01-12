.class Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;
.super Ljava/lang/Object;
.source "ElvaFaqBottomSheetEvent.java"

# interfaces
.implements Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

.field final synthetic val$ivBack:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;->val$ivBack:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUrlClick(Z)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;->val$ivBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
