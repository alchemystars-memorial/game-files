.class Lnet/aihelp/data/logic/MqttPresenter$1;
.super Ljava/lang/Object;
.source "MqttPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/MqttPresenter;->logoutMqtt(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/MqttPresenter;

.field final synthetic val$isConversation:Z

.field final synthetic val$resolveType:I


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/MqttPresenter;ZI)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->this$0:Lnet/aihelp/data/logic/MqttPresenter;

    iput-boolean p2, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->val$isConversation:Z

    iput p3, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->val$resolveType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lnet/aihelp/db/bot/ConversationDBHelper;->getElvaMsgArray()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "type"

    iget-boolean v3, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->val$isConversation:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "feedback"

    invoke-static {}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->getLogoutType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gameinfo"

    const-string v3, "{\"platform\":\"android\",\"language\":\"%s\"}"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_msgs"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-static {v1}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->getTagsFromMessageList(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->val$resolveType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "resolveType"

    iget v3, p0, Lnet/aihelp/data/logic/MqttPresenter$1;->val$resolveType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "resolveEvaluation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    const-string v2, "logout"

    invoke-virtual {v1, v2, v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->resetTypeWhenLogout()V

    invoke-static {}, Lnet/aihelp/db/bot/ConversationDBHelper;->clearElvaMsg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
