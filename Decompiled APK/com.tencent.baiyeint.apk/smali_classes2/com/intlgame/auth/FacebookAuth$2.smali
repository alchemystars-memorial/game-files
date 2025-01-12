.class Lcom/intlgame/auth/FacebookAuth$2;
.super Ljava/lang/Object;
.source "FacebookAuth.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/FacebookAuth;->login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/FacebookAuth;

.field final synthetic val$handleErrorInternally:Z

.field final synthetic val$params:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/INTLBaseParams;Z)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/FacebookAuth$2;->this$0:Lcom/intlgame/auth/FacebookAuth;

    iput-object p2, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iput-boolean p3, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$handleErrorInternally:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onCancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v1, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v2, 0x2

    const-string v3, "Cancelled"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->this$0:Lcom/intlgame/auth/FacebookAuth;

    iget-object v2, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v2, v2, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$handleErrorInternally:Z

    invoke-static {v1, v0, v2, v3}, Lcom/intlgame/auth/FacebookAuth;->access$100(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onError,  msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v2, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x270f

    const-string v4, "facebook error occur"

    const/4 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/auth/FacebookAuth$2;->this$0:Lcom/intlgame/auth/FacebookAuth;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$handleErrorInternally:Z

    invoke-static {p1, v0, v1, v2}, Lcom/intlgame/auth/FacebookAuth;->access$100(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/auth/FacebookAuth$2;->this$0:Lcom/intlgame/auth/FacebookAuth;

    iget-object v1, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget-object v2, p0, Lcom/intlgame/auth/FacebookAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v2, v2, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/intlgame/auth/FacebookAuth;->access$000(Lcom/intlgame/auth/FacebookAuth;Ljava/lang/String;ILcom/facebook/AccessToken;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/intlgame/auth/FacebookAuth$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
