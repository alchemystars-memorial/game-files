.class Lcom/intlgame/auth/LineAuth$2;
.super Lcom/intlgame/core/interfaces/IActivityEventHandler;
.source "LineAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/LineAuth;->setLineLoginCallback(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/LineAuth;

.field final synthetic val$methodId:I

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/LineAuth;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/LineAuth$2;->this$0:Lcom/intlgame/auth/LineAuth;

    iput-object p2, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    iput p3, p0, Lcom/intlgame/auth/LineAuth$2;->val$methodId:I

    invoke-direct {p0}, Lcom/intlgame/core/interfaces/IActivityEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] setLineLoginCallback onActivityResult, requestCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p2, 0xe

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/intlgame/LineLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {p3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] result.getResponseCode() : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object p3, Lcom/intlgame/auth/LineAuth$3;->$SwitchMap$com$linecorp$linesdk$LineApiResponseCode:[I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result v2

    aget p3, p3, v2

    const/16 v2, 0x65

    const-string v3, "Line"

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v4, 0x3

    if-eq p3, v4, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] An authentication agent error occurred."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p3, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v0, p0, Lcom/intlgame/auth/LineAuth$2;->val$methodId:I

    const/16 v1, 0x270f

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result p1

    const-string v4, "An authentication agent error occurred. "

    invoke-direct {p3, v0, v1, p1, v4}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iput p2, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iput-object v3, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line Login Cancel by user"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p3, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v1, p0, Lcom/intlgame/auth/LineAuth$2;->val$methodId:I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result p1

    const-string v4, "Cancelled"

    invoke-direct {p3, v1, v0, p1, v4}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iput-object v3, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iput p2, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iget-object p1, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;

    iget v0, p0, Lcom/intlgame/auth/LineAuth$2;->val$methodId:I

    invoke-direct {p3, v0}, Lcom/intlgame/api/auth/INTLAuthPluginResult;-><init>(I)V

    iput-object v3, p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channel_:Ljava/lang/String;

    iput p2, p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channelid_:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "access_token"

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineCredential;->getAccessToken()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;->plugin_data_:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] pluginResult = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/intlgame/api/auth/INTLAuthPluginResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p1, 0x6a

    iget-object p2, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] catch exception : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p3, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v0, p0, Lcom/intlgame/auth/LineAuth$2;->val$methodId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch excption : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3e8

    invoke-direct {p3, v0, v1, v1, p1}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iput-object v3, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iput p2, p3, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iget-object p1, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/LineAuth$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] setLineLoginCallback onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/LineLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
