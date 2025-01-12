.class Lcom/intlgame/extend/FirebaseExtend$2;
.super Ljava/lang/Object;
.source "FirebaseExtend.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/extend/FirebaseExtend;->getInstanceIDAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/extend/FirebaseExtend;

.field final synthetic val$result:Lcom/intlgame/api/extend/INTLExtendResult;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/extend/FirebaseExtend;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendResult;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/extend/FirebaseExtend$2;->this$0:Lcom/intlgame/extend/FirebaseExtend;

    iput-object p2, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$seqID:Ljava/lang/String;

    iput-object p3, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$result:Lcom/intlgame/api/extend/INTLExtendResult;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] INTLFirebase getInstanceID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$result:Lcom/intlgame/api/extend/INTLExtendResult;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/intlgame/api/extend/INTLExtendResult;->ret_msg_:Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$result:Lcom/intlgame/api/extend/INTLExtendResult;

    iget-object v0, p0, Lcom/intlgame/extend/FirebaseExtend$2;->val$seqID:Ljava/lang/String;

    const/16 v1, 0x515

    invoke-static {v1, p1, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
