.class Lcom/intlgame/auth/GoogleAuth$3;
.super Lcom/intlgame/core/interfaces/IActivityEventHandler;
.source "GoogleAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/GoogleAuth;->handleSilentSignFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/GoogleAuth;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/GoogleAuth;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/GoogleAuth$3;->this$0:Lcom/intlgame/auth/GoogleAuth;

    iput-object p2, p0, Lcom/intlgame/auth/GoogleAuth$3;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intlgame/core/interfaces/IActivityEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/auth/GoogleAuth$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onActivityResult requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p2, 0x2329

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p3, p0, Lcom/intlgame/auth/GoogleAuth$3;->this$0:Lcom/intlgame/auth/GoogleAuth;

    iget-object v0, p0, Lcom/intlgame/auth/GoogleAuth$3;->val$seqID:Ljava/lang/String;

    invoke-static {p3, p2, v0}, Lcom/intlgame/auth/GoogleAuth;->access$100(Lcom/intlgame/auth/GoogleAuth;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lcom/intlgame/auth/GoogleAuth$3;->this$0:Lcom/intlgame/auth/GoogleAuth;

    iget-object v0, p0, Lcom/intlgame/auth/GoogleAuth$3;->val$seqID:Ljava/lang/String;

    invoke-static {p3, p1, p2, v0}, Lcom/intlgame/auth/GoogleAuth;->access$300(Lcom/intlgame/auth/GoogleAuth;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/intlgame/GoogleLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method
