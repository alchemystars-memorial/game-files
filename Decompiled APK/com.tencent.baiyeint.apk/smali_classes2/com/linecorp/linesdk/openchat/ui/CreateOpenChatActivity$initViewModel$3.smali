.class final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;
.super Ljava/lang/Object;
.source "CreateOpenChatActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel()V
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
        "Lcom/linecorp/linesdk/LineApiResponse<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "lineApiResponse",
        "Lcom/linecorp/linesdk/LineApiResponse;",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
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
.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/linecorp/linesdk/LineApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "lineApiResponse"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v2, "arg_error_result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/linecorp/linesdk/LineApiResponse;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->onChanged(Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void
.end method
