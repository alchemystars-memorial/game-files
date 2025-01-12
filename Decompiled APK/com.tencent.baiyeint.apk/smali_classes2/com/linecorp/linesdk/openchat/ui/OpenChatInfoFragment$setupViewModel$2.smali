.class final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;
.super Ljava/lang/Object;
.source "OpenChatInfoFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final onChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    sget v1, Lcom/linecorp/linesdk/R$id;->descriptionMaxTextView:I

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "descriptionMaxTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/linecorp/linesdk/R$integer;->max_chatroom_description_length:I

    invoke-static {v1, p1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->access$generateTextLengthLimitString(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
