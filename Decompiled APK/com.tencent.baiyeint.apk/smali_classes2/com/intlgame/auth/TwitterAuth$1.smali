.class Lcom/intlgame/auth/TwitterAuth$1;
.super Lcom/intlgame/wrapper/TwitterWrapperCallback;
.source "TwitterAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/TwitterAuth;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/TwitterAuth;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/TwitterAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-direct {p0}, Lcom/intlgame/wrapper/TwitterWrapperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v1}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Twitter login failure, code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/16 v0, 0x5dd

    const/16 v1, 0x270f

    if-eqz p1, :cond_2

    const/4 v2, -0x2

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    const/4 p1, 0x1

    :goto_1
    const/16 v1, 0x65

    new-instance v2, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v3, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v3}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v3

    iget v3, v3, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, v0, p1, p2}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {p1}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object p1

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/intlgame/wrapper/TwitterWrapperSession;)V
    .locals 8

    const-string v0, "[ "

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWrapperSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWrapperSession;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v4}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v4

    iget-object v4, v4, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] Twitter success data, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWrapperSession;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/intlgame/wrapper/TwitterWrapperSession;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v7}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v2}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object p1

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {p1}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object p1

    iget v4, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object p1, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {p1}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object p1

    iget-object v5, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/intlgame/auth/TwitterAuth;->access$100(Lcom/intlgame/auth/TwitterAuth;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v0}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] Twitter login success, but return empty TwitterSession | TwitterAuthToken"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/16 p1, 0x65

    new-instance v6, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v0, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v0}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v0

    iget v1, v0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v2, 0x270f

    const/4 v4, -0x1

    const-string v3, "Twitter error occur"

    const-string v5, "Twitter login success, but return empty TwitterSession | TwitterAuthToken"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/auth/TwitterAuth$1;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v0}, Lcom/intlgame/auth/TwitterAuth;->access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {p1, v6, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
