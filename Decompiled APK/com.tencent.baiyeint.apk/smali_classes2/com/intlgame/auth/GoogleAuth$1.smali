.class Lcom/intlgame/auth/GoogleAuth$1;
.super Ljava/lang/Object;
.source "GoogleAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/GoogleAuth;->signIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/GoogleAuth;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/GoogleAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/GoogleAuth$1;->this$0:Lcom/intlgame/auth/GoogleAuth;

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
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v0, p0, Lcom/intlgame/auth/GoogleAuth$1;->this$0:Lcom/intlgame/auth/GoogleAuth;

    invoke-static {v0}, Lcom/intlgame/auth/GoogleAuth;->access$000(Lcom/intlgame/auth/GoogleAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/intlgame/auth/GoogleAuth;->access$100(Lcom/intlgame/auth/GoogleAuth;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/intlgame/auth/GoogleAuth$1;->this$0:Lcom/intlgame/auth/GoogleAuth;

    invoke-static {p1}, Lcom/intlgame/auth/GoogleAuth;->access$000(Lcom/intlgame/auth/GoogleAuth;)Lcom/intlgame/api/INTLBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/intlgame/auth/GoogleAuth;->access$200(Lcom/intlgame/auth/GoogleAuth;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
