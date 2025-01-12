.class Lcom/intlgame/auth/TwitterAuth$2;
.super Lcom/intlgame/core/interfaces/IActivityEventHandler;
.source "TwitterAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/TwitterAuth;->login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bActivityCallbackFlag:Z

.field final synthetic this$0:Lcom/intlgame/auth/TwitterAuth;

.field final synthetic val$params:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/TwitterAuth;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/TwitterAuth$2;->this$0:Lcom/intlgame/auth/TwitterAuth;

    iput-object p2, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    invoke-direct {p0}, Lcom/intlgame/core/interfaces/IActivityEventHandler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/intlgame/auth/TwitterAuth$2;->bActivityCallbackFlag:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Twitter onActivityResult, requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/auth/TwitterAuth$2;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v0}, Lcom/intlgame/auth/TwitterAuth;->access$200(Lcom/intlgame/auth/TwitterAuth;)Z

    move-result v0

    invoke-static {v0}, Lcom/intlgame/wrapper/TwitterWrapper;->getRequestCode(Z)I

    move-result v0

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_0

    const/16 v0, 0x65

    new-instance v7, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v2, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v3, 0x2

    const/4 v5, -0x1

    const-string v4, "Cancelled"

    const-string v6, "activity destroyed with out twitter callback"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, v7, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth$2;->bActivityCallbackFlag:Z

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v1}, Lcom/intlgame/auth/TwitterAuth;->access$200(Lcom/intlgame/auth/TwitterAuth;)Z

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/intlgame/wrapper/TwitterWrapper;->onActivityResult(ZIILandroid/content/Intent;)V

    sget-object p1, Lcom/intlgame/TwitterLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Twitter lifecycle onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/auth/TwitterAuth$2;->this$0:Lcom/intlgame/auth/TwitterAuth;

    invoke-static {v0}, Lcom/intlgame/auth/TwitterAuth;->access$200(Lcom/intlgame/auth/TwitterAuth;)Z

    move-result v0

    invoke-static {v0}, Lcom/intlgame/wrapper/TwitterWrapper;->cancelAuthorize(Z)V

    iget-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth$2;->bActivityCallbackFlag:Z

    if-nez v0, :cond_0

    const/16 v0, 0x65

    new-instance v7, Lcom/intlgame/api/auth/INTLAuthResult;

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v2, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v3, 0x2

    const/4 v5, -0x1

    const-string v4, "Cancelled"

    const-string v6, "activity destroyed with out twitter callback"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/auth/TwitterAuth$2;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, v7, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
