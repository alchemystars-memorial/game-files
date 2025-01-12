.class Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;
.super Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;
.source "ElvaFaqBottomSheetEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->prepareEvaluateView(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

.field final synthetic val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluated(Z)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setMsgStatus(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->access$000(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->this$0:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->access$000(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;->onEvaluatedFaq(Z)V

    :cond_1
    return-void
.end method

.method public onFeedbackConfirmed()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setMsgStatus(I)V

    return-void
.end method

.method public requestDataForFeedback()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "PlayerQuestion"

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getUserInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TicketId"

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqTicketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PitchonQuestion"

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CreateTime"

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-super {p0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;->requestDataForFeedback()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
