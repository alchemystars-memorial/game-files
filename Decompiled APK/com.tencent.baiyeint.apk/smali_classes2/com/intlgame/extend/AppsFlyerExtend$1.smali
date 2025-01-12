.class Lcom/intlgame/extend/AppsFlyerExtend$1;
.super Ljava/lang/Object;
.source "AppsFlyerExtend.java"

# interfaces
.implements Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/extend/AppsFlyerExtend;->generateInviteUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/extend/AppsFlyerExtend;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/extend/AppsFlyerExtend;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/extend/AppsFlyerExtend$1;->this$0:Lcom/intlgame/extend/AppsFlyerExtend;

    iput-object p2, p0, Lcom/intlgame/extend/AppsFlyerExtend$1;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share invite link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/extend/INTLExtendResult;

    const/16 v1, 0x515

    const/4 v2, 0x0

    const-string v3, "AppsFlyer"

    const-string v4, "appsFlyerGenerateInviteLinkUrl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intlgame/api/extend/INTLExtendResult;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[INTLExtendAppsFlyer] appsFlyer Invite link url is nil"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v2, 0x3

    iput v2, v0, Lcom/intlgame/api/extend/INTLExtendResult;->ret_code_:I

    :cond_0
    iput-object p1, v0, Lcom/intlgame/api/extend/INTLExtendResult;->ret_msg_:Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/extend/AppsFlyerExtend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponseError called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method
