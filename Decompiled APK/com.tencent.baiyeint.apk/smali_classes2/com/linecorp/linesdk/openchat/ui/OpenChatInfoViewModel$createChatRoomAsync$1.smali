.class final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "OpenChatInfoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatRoomAsync(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0082@"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
        "openChatParameters",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/linecorp/linesdk/LineApiResponse;",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        "continuation",
        "",
        "createChatRoomAsync"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel"
    f = "OpenChatInfoViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x5a
    }
    m = "createChatRoomAsync"
    n = {
        "this",
        "openChatParameters"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatRoomAsync(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
