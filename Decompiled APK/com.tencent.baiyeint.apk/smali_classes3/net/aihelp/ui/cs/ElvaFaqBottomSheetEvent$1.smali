.class Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;
.super Ljava/lang/Object;
.source "ElvaFaqBottomSheetEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->access$000(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->access$000(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;->onDialogDismissed()V

    :cond_0
    return-void
.end method
