.class Lcom/intlgame/auth/LineAuth$1;
.super Ljava/lang/Object;
.source "LineAuth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/LineAuth;->logout(Lcom/intlgame/api/INTLBaseParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/LineAuth;

.field final synthetic val$params:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/LineAuth;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/LineAuth$1;->this$0:Lcom/intlgame/auth/LineAuth;

    iput-object p2, p0, Lcom/intlgame/auth/LineAuth$1;->val$params:Lcom/intlgame/api/INTLBaseParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/auth/LineAuth$1;->this$0:Lcom/intlgame/auth/LineAuth;

    invoke-static {v0}, Lcom/intlgame/auth/LineAuth;->access$000(Lcom/intlgame/auth/LineAuth;)Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->logout()Lcom/linecorp/linesdk/LineApiResponse;

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget-object v1, p0, Lcom/intlgame/auth/LineAuth$1;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v1, v1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object v1, p0, Lcom/intlgame/auth/LineAuth$1;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v2, 0x69

    invoke-static {v2, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/LineAuth$1;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line logout success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method
