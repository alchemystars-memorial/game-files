.class final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "CreateOpenChatActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\t\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "L;",
        "<anonymous parameter 1>",
        "",
        "onClick",
        "(Landroid/content/DialogInterface;L;)V",
        "kotlin/Int",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $isLineAppInstalled$inlined:Z

.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    iput-boolean p2, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;->$isLineAppInstalled$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method
