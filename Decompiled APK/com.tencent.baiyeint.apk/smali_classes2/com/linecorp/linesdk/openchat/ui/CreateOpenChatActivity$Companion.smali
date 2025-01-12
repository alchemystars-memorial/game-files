.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;
.super Ljava/lang/Object;
.source "CreateOpenChatActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateOpenChatActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateOpenChatActivity.kt\ncom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion\n*L\n1#1,153:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u001c\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0010\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;",
        "",
        "()V",
        "ARG_CHANNEL_ID",
        "",
        "ARG_ERROR_RESULT",
        "ARG_OPEN_CHATROOM_INFO",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "channelId",
        "getChatRoomCreationResult",
        "Lcom/linecorp/linesdk/ActionResult;",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        "Lcom/linecorp/linesdk/LineApiError;",
        "intent",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "arg_channel_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, CreateOp\u2026RG_CHANNEL_ID, channelId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getChatRoomCreationResult(Landroid/content/Intent;)Lcom/linecorp/linesdk/ActionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/linecorp/linesdk/ActionResult<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            "Lcom/linecorp/linesdk/LineApiError;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg_open_chatroom_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/linecorp/linesdk/ActionResult$Success;

    invoke-direct {p1, v0}, Lcom/linecorp/linesdk/ActionResult$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/linecorp/linesdk/ActionResult;

    return-object p1

    :cond_1
    const-string v0, "arg_error_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/linecorp/linesdk/LineApiError;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    check-cast v2, Lcom/linecorp/linesdk/LineApiError;

    if-eqz v2, :cond_3

    new-instance p1, Lcom/linecorp/linesdk/ActionResult$Error;

    invoke-direct {p1, v2}, Lcom/linecorp/linesdk/ActionResult$Error;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/linecorp/linesdk/ActionResult;

    return-object p1

    :cond_3
    new-instance p1, Lcom/linecorp/linesdk/ActionResult$Error;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    const-string v1, "LineApiError.DEFAULT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/linecorp/linesdk/ActionResult$Error;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/linecorp/linesdk/ActionResult;

    return-object p1
.end method
