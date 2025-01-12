.class final Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
        "kotlin.jvm.PlatformType",
        "onMenuItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/linecorp/linesdk/R$id;->menu_item_create_profile_done:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    invoke-static {p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->access$dismissKeyboard(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupToolbar$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    invoke-static {p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->access$getViewModel$p(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatroom()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
