.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;
.super Ljava/lang/Object;
.source "CreateOpenChatActivity.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateOpenChatActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateOpenChatActivity.kt\ncom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1\n*L\n1#1,153:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u0002H\u0003\"\n\u0008\u0000\u0010\u0003*\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sharedPreferences"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-static {v1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->access$getLineApiClient$p(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;-><init>(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/api/LineApiClient;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown ViewModel class"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
