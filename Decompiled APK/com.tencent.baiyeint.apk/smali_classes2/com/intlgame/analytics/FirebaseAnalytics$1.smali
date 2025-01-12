.class Lcom/intlgame/analytics/FirebaseAnalytics$1;
.super Ljava/lang/Object;
.source "FirebaseAnalytics.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/analytics/FirebaseAnalytics;->getInstanceIdAsync()V
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
.field final synthetic this$0:Lcom/intlgame/analytics/FirebaseAnalytics;


# direct methods
.method constructor <init>(Lcom/intlgame/analytics/FirebaseAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics$1;->this$0:Lcom/intlgame/analytics/FirebaseAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/analytics/FirebaseAnalytics$1;->this$0:Lcom/intlgame/analytics/FirebaseAnalytics;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/intlgame/analytics/FirebaseAnalytics;->access$002(Lcom/intlgame/analytics/FirebaseAnalytics;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Firebase: Unable to get Instance ID"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
