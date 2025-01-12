.class Lcom/intlgame/push/FirebasePush$3;
.super Ljava/lang/Object;
.source "FirebasePush.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/push/FirebasePush;->unregisterPush(Lcom/intlgame/api/INTLBaseParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/push/FirebasePush;

.field final synthetic val$params:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method constructor <init>(Lcom/intlgame/push/FirebasePush;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/push/FirebasePush$3;->this$0:Lcom/intlgame/push/FirebasePush;

    iput-object p2, p0, Lcom/intlgame/push/FirebasePush$3;->val$params:Lcom/intlgame/api/INTLBaseParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    const-string v0, "["

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/push/FirebasePush$3;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] unregister push success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/4 v0, 0x0

    const-string v1, "unregister push success"

    invoke-direct {p1, v0, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/intlgame/push/FirebasePush$3;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] unregister push failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/16 v0, 0x270f

    const-string v1, "unregister push failed"

    invoke-direct {p1, v0, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/push/FirebasePush$3;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget v0, v0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iput v0, p1, Lcom/intlgame/api/INTLResult;->method_id_:I

    const/16 v0, 0x191

    iget-object v1, p0, Lcom/intlgame/push/FirebasePush$3;->val$params:Lcom/intlgame/api/INTLBaseParams;

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
