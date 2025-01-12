.class final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;
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
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenChatInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenChatInfoFragment.kt\ncom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3\n*L\n1#1,142:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "category",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
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

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/linecorp/linesdk/openchat/OpenChatCategory;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->getResourceId()I

    move-result p1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    sget v1, Lcom/linecorp/linesdk/R$id;->categoryLabelTextView:I

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "categoryLabelTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupViewModel$3;->onChanged(Lcom/linecorp/linesdk/openchat/OpenChatCategory;)V

    return-void
.end method
